/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: PlayerEventManager.cs
           // Describle: 玩家事件处理
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

namespace NCSpeedLight
{
    public class PlayerEventManager : EventManager
    {
        public Player Player;
        public PlayerEventManager(Player player)
        {
            this.Player = player;
        }
    }

    public enum PlayerEventType
    {
    }
}