using UnityEngine;
using System.Collections;
using System.IO;

namespace NCSpeedLight
{

    public class Main : MonoBehaviour
    {
        void Awake()
        {
            CheckExtractAssets();
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
        }
        public void CheckExtractAssets()
        {
            if (Application.isEditor == true)
            {
                StartGame();
            }
            else
            {
                StartCoroutine(OnExtractAssets());
            }
        }

        IEnumerator OnExtractAssets()
        {
            string dataPath = SharedVariable.SCRIPT_BUNDLE_PATH;  //数据目录
            string resPath = SharedVariable.APP_CONTENT_PATH + "Lua/"; //游戏包资源目录

            if (Directory.Exists(dataPath))
            {
                Directory.Delete(dataPath, true);
            }
            Directory.CreateDirectory(dataPath);

            string infile = resPath + "files.txt";
            string outfile = dataPath + "files.txt";
            if (File.Exists(outfile))
            {
                File.Delete(outfile);
            }

            string message = "正在解包文件:>files.txt";
            Debug.Log(message);

            if (Application.platform == RuntimePlatform.Android)
            {
                WWW www = new WWW(infile);
                yield return www;

                if (www.isDone)
                {
                    File.WriteAllBytes(outfile, www.bytes);
                }
                yield return 0;
            }
            else
            {
                File.Copy(infile, outfile, true);
            }
            yield return new WaitForEndOfFrame();

            //释放所有文件到数据目录
            string[] files = File.ReadAllLines(outfile);
            foreach (var file in files)
            {
                string[] fs = file.Split('|');
                infile = resPath + fs[0];  //
                outfile = dataPath + fs[0];

                message = "正在解包文件:>" + fs[0];
                Debug.Log("正在解包文件:>" + infile);

                string dir = Path.GetDirectoryName(outfile);
                if (!Directory.Exists(dir)) Directory.CreateDirectory(dir);

                if (Application.platform == RuntimePlatform.Android)
                {
                    WWW www = new WWW(infile);
                    yield return www;

                    if (www.isDone)
                    {
                        File.WriteAllBytes(outfile, www.bytes);
                    }
                    yield return 0;
                }
                else
                {
                    if (File.Exists(outfile))
                    {
                        File.Delete(outfile);
                    }
                    File.Copy(infile, outfile, true);
                }
                yield return new WaitForEndOfFrame();
            }
            message = "解包完成!!!";

            yield return new WaitForSeconds(0.1f);
            message = string.Empty;

            StartGame();

        }

        private void StartGame()
        {
            gameObject.AddComponent<Game>();
        }
    }
}