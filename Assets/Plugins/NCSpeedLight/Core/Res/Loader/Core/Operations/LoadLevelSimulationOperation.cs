/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: LoadLevelSimulationOperation.cs
           // Describle:  
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using UnityEngine;

namespace NCSpeedLight
{
    public class LoadLevelSimulationOperation : LoadOperation
    {
        private AsyncOperation m_Operation = null;
        public LoadLevelSimulationOperation(string levelName, bool isAdditive)
        {
            if (isAdditive)
                Application.LoadLevelAdditive(levelName);
            else
                Application.LoadLevel(levelName);

        }
        public override bool Update() { return false; }
        public override bool IsDone() { return m_Operation == null || m_Operation.isDone; }
    }
}
