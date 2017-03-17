/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: Builder.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/
#pragma warning disable 0618
using System.IO;
using System.Linq;
using System.Collections.Generic;
using QuickGraph;
using UnityEngine;
using UnityEditor;

namespace NCSpeedLight
{
    public class AssetBuilder
    {
        #region Fields

        private List<string> m_WaitingProcessAssets;

        private AdjacencyGraph<string, Edge<string>> m_FullGraph;

        private List<string> m_SourceAssets;//所有没有被引用依赖的文件

        private List<string> m_SharedAssets;//所有存在引用关系的文件

        private string[] m_TempStr = new string[1];

        //private Object[] m_TempObjects = new Object[1];

        private string m_OutputDirectory;

        private BuildAssetBundleOptions m_BuildOptions =
                BuildAssetBundleOptions.CollectDependencies |
                BuildAssetBundleOptions.CompleteAssets |
                BuildAssetBundleOptions.DeterministicAssetBundle |
                BuildAssetBundleOptions.UncompressedAssetBundle |
                BuildAssetBundleOptions.ForceRebuildAssetBundle;


        private List<string> m_PreSharedAssets = new List<string>();

        private string m_PlatformName;

        private BuildTarget m_BuildTarget;

        #endregion

        #region Public Methods

        public AssetBuilder(IEnumerable<string> assets, string outputDirectory, List<string> preSharedAssets = null)
        {
            if (!Directory.Exists(outputDirectory))
                Directory.CreateDirectory(outputDirectory);

            m_OutputDirectory = outputDirectory;
            m_WaitingProcessAssets = new List<string>();

            foreach (string path in assets)
            {
                m_WaitingProcessAssets.Add(EditorUtility.NormallizePath(path));
            }

            if (preSharedAssets != null)
            {
                foreach (string path in preSharedAssets)
                {
                    if (m_WaitingProcessAssets.Contains(EditorUtility.NormallizePath(path)) == false)
                        m_WaitingProcessAssets.Add(EditorUtility.NormallizePath(path));

                    m_PreSharedAssets.Add(EditorUtility.NormallizePath(path));
                }
            };

            m_PlatformName = EditorUtility.GetPlatformName(Application.platform);
            m_BuildTarget = EditorUserBuildSettings.activeBuildTarget;
        }

        public void BuildAll()
        {
            Caching.CleanCache();

            BuildFullAssetsGraph();
            ComputeSourceAndSharedAssets();

            AdjacencyGraph<string, Edge<string>> minimumGraph = GenerateMinimumGraph();

            OutputDendency(minimumGraph, "dependency.txt");
            OutputDendency(m_FullGraph, "dependencyFull.txt");

            BuildAssets(minimumGraph, m_SourceAssets, m_OutputDirectory);
        }

        public void BuildSingle()
        {
            Caching.CleanCache();

            BuildFullAssetsGraph();
            ComputeSourceAndSharedAssets();

            AdjacencyGraph<string, Edge<string>> minimumGraph = GenerateMinimumGraph();

            //OutputDendency(minimumGraph, "dependency.txt");
            //OutputDendency(m_FullGraph, "dependencyFull.txt");

            BuildAssets(minimumGraph, m_SourceAssets, m_OutputDirectory);
        }

        /// <summary>
        /// 读取资源关系图并且构建
        /// </summary>
        public void BuildAllByGraph()
        {
            Caching.CleanCache();

            string path = m_OutputDirectory + "graph.txt";
            if (!File.Exists(path))
            {
                Debug.LogError(path + " not exist");
                return;
            }

            var r = File.OpenText(path);

            AdjacencyGraph<string, Edge<string>> graph = new AdjacencyGraph<string, Edge<string>>();

            int edge_count = System.Convert.ToInt32(r.ReadLine());
            Edge<string>[] edges = new Edge<string>[edge_count];
            for (int i = 0; i < edge_count; i++)
            {
                string source = r.ReadLine();
                string target = r.ReadLine();
                r.ReadLine();

                edges[i] = new Edge<string>(source, target);
            }

            int vertex_count = System.Convert.ToInt32(r.ReadLine());
            for (int i = 0; i < vertex_count; i++)
            {
                string vertex = r.ReadLine();

                graph.AddVertex(vertex);
            }

            graph.AddEdgeRange(edges);

            m_SourceAssets = new List<string>();
            int source_count = System.Convert.ToInt32(r.ReadLine());
            for (int i = 0; i < source_count; i++)
            {
                string source = r.ReadLine();

                m_SourceAssets.Add(source);
            }

            r.Close();


            BuildAssets(graph, m_SourceAssets, m_OutputDirectory);
        }

        /// <summary>
        /// 构建资源关系图
        /// </summary>
        public void BuildGraph()
        {
            BuildFullAssetsGraph();
            ComputeSourceAndSharedAssets();

            //AdjacencyGraph<string, Edge<string>> initialMinimumGraph = GenerateMinimumGraph();
            //ReduceSharedVetex(initialMinimumGraph);

            AdjacencyGraph<string, Edge<string>> minimumGraph = GenerateMinimumGraph();

            string path = m_OutputDirectory + "graph.txt";
            var dir = new FileInfo(path).Directory;
            if (!dir.Exists)
            {
                dir.Create();
            }
            TextWriter tw = File.CreateText(path);

            tw.WriteLine(minimumGraph.EdgeCount);
            foreach (var i in minimumGraph.Edges)
            {
                tw.WriteLine(i.Source);
                tw.WriteLine(i.Target);
                tw.WriteLine();
            }

            tw.WriteLine(minimumGraph.VertexCount);
            foreach (var i in minimumGraph.Vertices)
            {
                tw.WriteLine(i);
            }

            tw.WriteLine(m_SourceAssets.Count);
            foreach (var i in m_SourceAssets)
            {
                tw.WriteLine(i);
            }

            tw.Close();
        }

        /// <summary>
        /// 构建依赖关系
        /// </summary>
        public void BuildDependency()
        {
            BuildFullAssetsGraph();
            ComputeSourceAndSharedAssets();

            AdjacencyGraph<string, Edge<string>> minimumGraph = GenerateMinimumGraph();

            OutputDendency(minimumGraph, "dependency.txt");
            OutputDendency(m_FullGraph, "dependencyFull.txt");
        }

        #endregion

        #region Private Methods

        /// <summary>
        /// 计算源头资源（没有引用的）和共享资源
        /// </summary>
        private void ComputeSourceAndSharedAssets()
        {
            Dictionary<string, int> inDegreeDict = new Dictionary<string, int>();

            // 计算共享资源
            m_SharedAssets = new List<string>();
            foreach (var vertex in m_FullGraph.Vertices)
            {
                inDegreeDict.Add(vertex, 0);
            }
            foreach (var edge in m_FullGraph.Edges)
            {
                inDegreeDict[edge.Target]++;
                if (inDegreeDict[edge.Target] > 1 && !m_SharedAssets.Contains(edge.Target) && IsNotScript(edge.Target))
                    m_SharedAssets.Add(edge.Target);
            }

            // 计算源头资源
            m_SourceAssets = new List<string>();
            foreach (string key in inDegreeDict.Keys)
            {
                if (inDegreeDict[key] == 0 && IsNotScript(key))
                    m_SourceAssets.Add(key);
            }
            foreach (var vertex in m_FullGraph.Vertices)
            {
                if (IsNotScript(vertex) &&
                    !m_SourceAssets.Contains(vertex) && !m_SharedAssets.Contains(vertex))
                    m_SharedAssets.Add(vertex);
            }
            foreach (string asset in m_PreSharedAssets)
            {
                if (!m_SourceAssets.Contains(asset) && !m_SharedAssets.Contains(asset))
                {
                    m_SharedAssets.Add(asset);
                }
            }

            if (Directory.Exists(SharedVariable.BUILD_BUNDLE_LOG_PATH) == false)
            {
                Directory.CreateDirectory(SharedVariable.BUILD_BUNDLE_LOG_PATH);
            }

            // 输出至配置文件
            EditorUtility.OutputTXT(SharedVariable.BUILD_BUNDLE_LOG_PATH + "SourceAssets.txt", m_SourceAssets);
            EditorUtility.OutputTXT(SharedVariable.BUILD_BUNDLE_LOG_PATH + "SharedAssets.txt", m_SharedAssets);
        }

        /// <summary>
        /// 建立整个资源关系全图
        /// </summary>
        private void BuildFullAssetsGraph()
        {
            m_FullGraph = new AdjacencyGraph<string, Edge<string>>();
            foreach (string asset in m_WaitingProcessAssets)
            {
                if (File.Exists(asset))
                {
                    if (m_FullGraph.ContainsVertex(asset) == false)
                    {
                        AddToGraph(m_FullGraph, null, asset);
                    }
                }
            }
        }


        /// <summary>
        /// 生成最小图
        /// </summary>
        /// <returns></returns>
        private AdjacencyGraph<string, Edge<string>> GenerateMinimumGraph()
        {
            AdjacencyGraph<string, Edge<string>> graph = new AdjacencyGraph<string, Edge<string>>(false);

            foreach (string vertex in m_SourceAssets)
            {
                graph.AddVertex(vertex);
            }

            foreach (string resource in m_SharedAssets)
            {
                if (!graph.ContainsVertex(resource))
                    graph.AddVertex(resource);
            }
            List<string> visiteDic = new List<string>();

            foreach (string vertex in m_SourceAssets)
            {
                DFSForMinimumGraph(graph, vertex, visiteDic, null);
            }

            return graph;
        }

        /// <summary>
        /// 构建资源.
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="sourceVertexs"></param>
        /// <param name="folder"></param>
        private void BuildAssets(AdjacencyGraph<string, Edge<string>> graph, IEnumerable<string> sourceVertexs, string folder)
        {
            if (Directory.Exists(folder) == false)
            {
                Directory.CreateDirectory(folder);
            }

            string md5File = SharedVariable.BUILD_BUNDLE_LOG_PATH + "/MD5Index.txt"; // 输出md5值索引
            var dir = new FileInfo(md5File).Directory;
            if (!dir.Exists)
            {
                dir.Create();
            }
            TextWriter md5TW = File.CreateText(md5File);

            foreach (var vertex in sourceVertexs)
            {
                Dictionary<string, int> levelDic = new Dictionary<string, int>();
                DFSLayersFull(graph, levelDic, vertex, -1);

                var buildList = SortLayers(levelDic, false);

                int preLevel = -1;
                int pushCount = 0;
                List<UnityEngine.Object> refPrefabs = new List<UnityEngine.Object>(); // 防止贴图丢失引用
                foreach (var path in buildList)
                {
                    if (IsNotScript(path))
                    {
                        int nowLevel = levelDic[path];

                        if (preLevel != nowLevel)
                        {
                            BuildPipeline.PushAssetDependencies();
                            pushCount++;
                        }

                        preLevel = nowLevel;

                        UnityEngine.Object mainAssets = AssetDatabase.LoadAssetAtPath(path, typeof(Object));
                        List<UnityEngine.Object> assets = new List<Object>();
                        assets.Add(mainAssets);

                        string md5 = AssetBundleManifest.GetAssetBundleMD5(path);
                        string outFile = folder + md5;

                        if (File.Exists(outFile) == false)
                        {

                            md5TW.Write(path);
                            md5TW.Write("  ||  ");
                            md5TW.Write(md5);
                            md5TW.WriteLine();
                        }
                        else
                        {
                            //outFile += "____________new";
                            //File.Delete(outFile);
                        }

                        if (path.EndsWith(".prefab") && nowLevel > 0)
                        {
                            refPrefabs.Add(mainAssets);
                        }

                        if (nowLevel == 0)
                        {
                            assets.AddRange(refPrefabs);
                        }
                        Debug.Log("Build assetbundle targetfile: " + outFile + ",assetpath: " + path + ",push level:" + nowLevel.ToString() + " " + m_BuildTarget);

                        if (path.EndsWith(".unity"))
                        {
                            BuildPipeline.BuildStreamedSceneAssetBundle(new string[1] { path }, outFile, m_BuildTarget);
                        }
                        else
                        {
                            BuildPipeline.BuildAssetBundle(mainAssets, assets.ToArray(), outFile, m_BuildOptions, m_BuildTarget);
                        }
                    }
                }

                for (int i = 0; i < pushCount; i++)
                {
                    BuildPipeline.PopAssetDependencies();
                }

                UnityEditor.EditorUtility.UnloadUnusedAssets();
                UnityEditor.EditorUtility.UnloadUnusedAssetsIgnoreManagedReferences();
            }
            md5TW.Close();
        }

        private bool IsNotScript(string path)
        {
            return !path.EndsWith(".cs") && !path.EndsWith(".js");
        }

        private void DFSLayersFull(AdjacencyGraph<string, Edge<string>> localGraph, Dictionary<string, int> levelDic, string vertex, int parentLevel)
        {
            int currentLevel = ++parentLevel;
            if (!levelDic.ContainsKey(vertex))
                levelDic.Add(vertex, currentLevel);
            else if (currentLevel > levelDic[vertex])
                levelDic[vertex] = currentLevel;

            foreach (var edge in localGraph.OutEdges(vertex))
            {
                string tempVertex = edge.Target;
                DFSLayersFull(localGraph, levelDic, tempVertex, currentLevel);
            }
        }

        private void DFSLayers(AdjacencyGraph<string, Edge<string>> localGraph, Dictionary<string, int> levelDic, string vertex, int parentLevel)
        {
            int currentLevel = ++parentLevel;
            if (!levelDic.ContainsKey(vertex))
                levelDic.Add(vertex, currentLevel);
            else if (currentLevel > levelDic[vertex])
                levelDic[vertex] = currentLevel;


            foreach (var edge in localGraph.OutEdges(vertex))
            {
                string tempVertex = edge.Target;
                if (tempVertex.EndsWith(".prefab"))
                {
                    DFSLayers(localGraph, levelDic, tempVertex, currentLevel);
                }
            }
        }

        private IEnumerable<string> SortLayers(Dictionary<string, int> layers, bool ascending = true)
        {
            if (ascending)
            {
                return layers.Keys.OrderBy(x => layers[x]);
            }
            else
            {
                return layers.Keys.OrderByDescending(x => layers[x]);
            }
        }

        /// <summary>
        /// 拷贝图
        /// </summary>
        /// <param name="graph"></param>
        /// <returns></returns>
        private AdjacencyGraph<string, Edge<string>> CopyGraph(AdjacencyGraph<string, Edge<string>> graph)
        {
            AdjacencyGraph<string, Edge<string>> newGraph = new AdjacencyGraph<string, Edge<string>>();

            foreach (var vertex in graph.Vertices)
            {
                newGraph.AddVertex(vertex);
            }

            foreach (var edge in graph.Edges)
            {
                newGraph.AddEdge(new Edge<string>(edge.Source, edge.Target));
            }

            return newGraph;
        }

        /// <summary>
        /// 深度遍历函数，用于生成最小图
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="vertex"></param>
        /// <param name="visiteDic"></param>
        /// <param name="parent"></param>
        private void DFSForMinimumGraph(AdjacencyGraph<string, Edge<string>> graph, string vertex, List<string> visiteDic, string parent)
        {
            if (graph.ContainsVertex(vertex) && parent != null)
            {
                graph.AddEdge(new Edge<string>(parent, vertex));
                parent = vertex;
            }

            if (parent == null)
                parent = vertex;

            if (!visiteDic.Contains(vertex))
            {
                if (graph.ContainsVertex(vertex))
                    visiteDic.Add(vertex);

                foreach (var edge in m_FullGraph.OutEdges(vertex))
                {
                    DFSForMinimumGraph(graph, edge.Target, visiteDic, parent);
                }
            }
        }


        /// <summary>
        /// 用于生成fullgraph的函数
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="parent"></param>
        /// <param name="current"></param>
        /// <param name="filters"></param>
        private void AddToGraph(AdjacencyGraph<string, Edge<string>> graph, string parent, string current, List<string> filters = null)
        {
            if (filters != null && !filters.Contains(current))
                return;

            if (parent == null && graph.ContainsVertex(current))
                return;

            if (parent == null)
                graph.AddVertex(current);

            m_TempStr[0] = current;
            string[] assets = AssetDatabase.GetDependencies(m_TempStr);
            foreach (string asset in assets)
            {
                if (filters != null && !filters.Contains(asset))
                    continue;

                if (asset != current)
                {
                    if (graph.ContainsVertex(asset))
                    {
                        Edge<string> edge;
                        if (!graph.TryGetEdge(current, asset, out edge))
                            graph.AddEdge(new Edge<string>(current, asset));

                        if (parent != null && graph.TryGetEdge(parent, asset, out edge))
                        {
                            graph.RemoveEdge(edge);
                        }
                    }
                    else
                    {
                        graph.AddVertex(asset);
                        graph.AddEdge(new Edge<string>(current, asset));
                    }

                }
            }

            foreach (string asset in assets)
            {
                if (filters != null && !filters.Contains(asset))
                    continue;

                if (asset.Contains(".ttf") && current.Contains(".ttf"))
                {
                    continue;
                }

                if (asset != current)
                {
                    AddToGraph(graph, current, asset);
                }
            }
        }

        /// <summary>
        /// 移除顶点
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="list"></param>
        private void RemoveVertex(AdjacencyGraph<string, Edge<string>> graph, List<string> list)
        {
            graph.RemoveVertexIf(x => list.Contains(x));
        }

        /// <summary>
        /// 测试函数，测试场景中名字相同的资源
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="fileName"></param>
        private void GetSameNameAssets(AdjacencyGraph<string, Edge<string>> graph, string fileName = "equal.txt")
        {
            var list = new List<string>();
            var list2 = new List<string>();
            foreach (string vertex in graph.Vertices)
            {
                string newKey = EditorUtility.GetAssetName(vertex, true);

                if (list.Contains(newKey))
                    list2.Add(newKey);
                else
                    list.Add(newKey);
            }
            EditorUtility.OutputTXT(fileName, list2);
        }


        /// <summary>
        /// 输出资源的依赖关系文件
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="fileName"></param>
        private void OutputDendency(AdjacencyGraph<string, Edge<string>> graph, string fileName)
        {
            string path = m_OutputDirectory + "/" + fileName;
            var dir = new FileInfo(path).Directory;
            if (!dir.Exists)
            {
                dir.Create();
            }
            TextWriter tw = File.CreateText(path);

            var nodes = graph.Vertices;
            foreach (var node in nodes)
            {
                tw.Write(node);
                tw.Write('>');
                tw.WriteLine(0);

                var out_edges = graph.OutEdges(node);
                foreach (var edge in out_edges)
                {
                    tw.Write("    ");
                    tw.Write(edge.Target);
                    tw.Write('>');
                    tw.WriteLine(0);
                }
            }
            tw.Close();
        }


        /// <summary>
        /// 计算图中的依赖关系，输出键值对形式
        /// </summary>
        /// <param name="graph"></param>
        /// <returns></returns>
        private Dictionary<string, List<string>> ComputeDependency(AdjacencyGraph<string, Edge<string>> graph)
        {
            Dictionary<string, List<string>> dic = new Dictionary<string, List<string>>();
            foreach (var vertex in graph.Vertices)
            {
                if (!dic.Keys.Contains(vertex))
                    DFSForComputingDependency(graph, vertex, dic);
            }
            return dic;
        }

        /// <summary>
        /// 深度遍历函数，用于计算依赖
        /// </summary>
        /// <param name="graph"></param>
        /// <param name="vertex"></param>
        /// <param name="dic"></param>
        private void DFSForComputingDependency(AdjacencyGraph<string, Edge<string>> graph, string vertex, Dictionary<string, List<string>> dic)
        {
            dic.Add(vertex, new List<string>());
            foreach (var edge in graph.OutEdges(vertex))
            {
                string temp = edge.Target;
                dic[vertex].Add(temp);
                if (!dic.Keys.Contains(temp))
                    DFSForComputingDependency(graph, temp, dic);

                dic[vertex].AddRange(dic[temp]);
            }
        }

    }
    #endregion
}

