/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: LoadOperation.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

using System.Collections;

namespace EasyAB
{
    public abstract class LoadOperation : IEnumerator
    {
        public UnityEngine.Object LoadedAsset { get; set; }
        public virtual UnityEngine.Object GetAsset() { return null; }
        public virtual T GetAsset<T>() where T : UnityEngine.Object { return default(T); }
        public LoadAssetCallback Callback { get; set; }
        public object CallbackParam { get; set; }
        public object Current { get { return null; } set { } }
        public bool MoveNext() { return !IsDone(); }
        public void Reset() { }
        public abstract bool Update();
        public abstract bool IsDone();
        public virtual void Finish(UnityEngine.Object obj = null)
        {
            if (Callback != null)
            {
                if (obj != null)
                {
                    Callback(obj, CallbackParam as ResLoadParam);
                }
                else
                {
                    Callback(GetAsset(), CallbackParam as ResLoadParam);
                }
            }
        }
        public virtual void Execute() { }
    }
}
