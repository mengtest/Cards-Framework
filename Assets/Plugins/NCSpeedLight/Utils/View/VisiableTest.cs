/*----------------------------------------------------------------
            // Copyright © 2015 NCSpeedLight
            // 
            // FileName: VisiableTest.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  2016/7/12 14:17:47
            // Modify History:
            //
//----------------------------------------------------------------*/
using UnityEngine;

namespace NCSpeedLight
{

    public class VisiableTest : MonoBehaviour
    {
        public static bool IsVisible(Renderer renderer, Camera camera)
        {
            if (renderer == null || camera == null) return true;
            Plane[] planes = GeometryUtility.CalculateFrustumPlanes(camera);
            return GeometryUtility.TestPlanesAABB(planes, renderer.bounds);
        }
    }
}