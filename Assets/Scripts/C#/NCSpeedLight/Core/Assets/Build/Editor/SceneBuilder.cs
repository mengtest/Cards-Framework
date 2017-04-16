/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: SceneBuilder.cs
			// Describle:   build scenes to bundles.
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
using System.IO;
using UnityEditor;

namespace NCSpeedLight
{
    public class SceneBuilder : Builder
    {
        public SceneBuilder(Action preBuild, Action postBuild) : base(preBuild, postBuild) { }
        public override void Build()
        {
        }
    }
}