/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: ModifyRenderQ.cs
            // Describle:  更改渲染队列的值
            // Created By:  Wells Hsu
            // Date&Time:  2016/3/26 10:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Collections.Generic;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace NCSpeedLight
{
#if UNITY_EDITOR
    [CustomEditor(typeof(ModifyRenderQ))]
    public class InspecModifyRenderQ : Editor
    {
        public ModifyRenderQ Instance;
        void OnEnable()
        {
            Instance = target as ModifyRenderQ;
        }

        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            if (Instance == null)
            {
                return;
            }
            if (GUILayout.Button("Get All Renderer In Children"))
            {
                Renderer[] renderers = Instance.GetComponentsInChildren<Renderer>(true);
                Instance.Renderers = new List<Renderer>(renderers);
            }
        }
    }
#endif
    public class ModifyRenderQ : MonoBehaviour
    {
        public string Identify = "NULL";
        public List<Renderer> Renderers = new List<Renderer>();
        private List<int> mRenderMaterialHis = new List<int>();
        public int TargetRenderQ;

#if UNITY_EDITOR

        void Update()
        {
            FixMaterialRenderQueue();
        }
#endif
        void Awake()
        {
            FixMaterialRenderQueue();
        }
        void OnEnable()
        {
            FixMaterialRenderQueue();
        }
        void OnDisable()
        {
            RevertMaterialRenderQueue();
        }
        void OnDestroy()
        {
            RevertMaterialRenderQueue();
        }

        public void FixMaterialRenderQueue()
        {
            if (TargetRenderQ < 0) return;
            if (mRenderMaterialHis != null) mRenderMaterialHis.Clear();
            if (Renderers == null || Renderers.Count == 0)
            {
                Debug.LogError("ModifyRenderQ.cs Renderers is NULL Been attach Obj named : " + this.transform.name);
                return;
            }

            for (int i = 0; i < Renderers.Count; i++)
            {
                Renderer renderer = Renderers[i];
                if (renderer == null || renderer.material == null)
                {
                    mRenderMaterialHis.Add(-1);
                    continue;
                }
                Material tempMaterial = GetMaterial(renderer);
                mRenderMaterialHis.Add(tempMaterial.renderQueue);
                tempMaterial.renderQueue = TargetRenderQ;
            }

        }

        public void DynamicSetup(int targetQueue)
        {
            Renderer[] renderers = GetComponentsInChildren<Renderer>(true);
            Renderers = new List<Renderer>(renderers);
            FixMaterialRenderQueue();
        }

        private void RevertMaterialRenderQueue()
        {
            if (Renderers != null && Renderers.Count > 0)
            {
                for (int i = 0; i < Renderers.Count; i++)
                {
                    Renderer renderer = Renderers[i];
                    if (renderer == null || renderer.material == null) continue;
                    Material tempMaterial = GetMaterial(renderer);
                    if (tempMaterial == null) continue;
                    if (mRenderMaterialHis.Count > i)
                    {
                        tempMaterial.renderQueue = mRenderMaterialHis[i];
                    }
                }
            }
        }

        private Material GetMaterial(Renderer varRender)
        {
            if (varRender == null)
            {
                return null;
            }

#if UNITY_EDITOR
            Material tempMaterial = varRender.material;
#else
			Material tempMaterial = varRender.sharedMaterial;
#endif
            return tempMaterial;
        }

    }


}
