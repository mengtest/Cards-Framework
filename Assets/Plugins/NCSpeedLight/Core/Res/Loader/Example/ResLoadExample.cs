/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: ResLoadExample.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Collections;
using UnityEngine;

namespace NCSpeedLight
{
    public class ResLoadExample : MonoBehaviour
    {
        void Start()
        {
            ResManager.PostResManagerInitialized += OnResManagerInitFinish;
            ResManager.Initialize();
        }
        void OnResManagerInitFinish()
        {
            StartCoroutine(CoroutineLoad());
            AsyncLoad();
            SyncLoad();
        }

        /// <summary>
        /// 协同阻塞加载.
        /// </summary>
        /// <returns></returns>
        IEnumerator CoroutineLoad()
        {
            LoadAssetOperation operation = ResManager.LoadAssetAsync("UI_1.prefab", typeof(GameObject));
            yield return StartCoroutine(operation);
            GameObject obj = operation.GetAsset<GameObject>();
            if (obj)
            {
                GameObject.Instantiate(obj);
                ResManager.UnloadAssetBundle("UI_1.prefab");
            }
            else
            {
                Utility.LogError("CoroutineLoad error.");
            }
        }

        /// <summary>
        /// 异步回调加载.
        /// </summary>
        void AsyncLoad()
        {
            ResManager.LoadAssetAsync("UI_2.prefab", typeof(GameObject), (obj, param) =>
            {
                if (obj)
                {
                    GameObject.Instantiate(obj);
                    ResManager.UnloadAssetBundle("UI_2.prefab");
                }
                else
                {
                    Utility.LogError("AsyncLoad error.");
                }
            });
        }

        /// <summary>
        /// 同步加载.
        /// </summary>
        void SyncLoad()
        {
            for (int i = 0; i < 100; i++)
            {
                GameObject obj = ResManager.LoadAssetSync<GameObject>("UI_2.prefab");
                if (obj)
                {
                    GameObject.Instantiate(obj);
                }
                else
                {
                    Utility.LogError("SyncLoad error.");
                }
            }
        }

        void OnGUI()
        {
            if (GUI.Button(new Rect(10, 10, 150, 30), "Unload UI_2.prefab"))
            {
                for(int i = 0; i < 100; i++)
                {
                    ResManager.UnloadAssetBundle("UI_2.prefab");
                }
            }
        }
    }
}
