/*----------------------------------------------------------------
            // Copyright © Wells Hsu
            // Email: wellshsu1004@gmail.com
            //
            // FileName: LoadLevelSimulationOperation.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace EasyAB
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
