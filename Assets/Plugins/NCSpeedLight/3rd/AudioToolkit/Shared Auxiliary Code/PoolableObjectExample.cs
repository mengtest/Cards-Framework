/*----------------------------------------------------------------
            // Copyright © 2015 NCSpeedLight
            // 
            // FileName: PoolableObjectExample.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  2016/5/25 22:55:19
            // Modify History:
            //
//----------------------------------------------------------------*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public class PoolableObjectExample : MonoBehaviour
{
    public GameObject Prefab;
    void OnGUI()
    {
        if (Prefab == null) return;
        if (GUI.Button(new Rect(10, 10, 150, 30), "Preload"))
        {
            ObjectPoolController.Preload(Prefab);
            PoolableObject o;
        }
        if (GUI.Button(new Rect(10, 50, 150, 30), "Instantiate"))
        {
            ObjectPoolController.Instantiate(Prefab);
        }
        if (GUI.Button(new Rect(10, 90, 150, 30), "InstantiateWithoutPool"))
        {
            ObjectPoolController.InstantiateWithoutPool(Prefab);
        }
    }
}

