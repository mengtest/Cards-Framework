/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Builder.cs
			// Describle:   base class.
			// Created By:  Wells Hsu
			// Date&Time:  10/12 星期三 11:49:46
            // Modify History:
            //
//----------------------------------------------------------------*/
using System;

namespace NCSpeedLight
{
    public class Builder
    {
        private Action preBuild;
        private Action postBuild;
        public Builder(Action preBuild, Action postBuild)
        {
            this.preBuild = preBuild;
            this.postBuild = postBuild;
        }
        public virtual void Build() { }
        public virtual void OnPreBuild()
        {
            if (preBuild != null)
            {
                preBuild.Invoke();
            }
        }
        public virtual void OnPostBuild()
        {
            if (postBuild != null)
            {
                postBuild.Invoke();
            }
        }
    }
}
