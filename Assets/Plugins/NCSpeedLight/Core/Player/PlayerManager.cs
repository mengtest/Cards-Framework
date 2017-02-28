﻿/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: PlayerManager.cs
           // Describle: 玩家管理
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using System.Collections.Generic;

namespace NCSpeedLight
{
    public enum PlayerType
    {
        PT_Hero = 0,
        PT_Player = 1,
        PT_Robot = 3,
        PT_Monster = 4,
    }

    public enum PlayerState
    {
        PS_Active,
        PS_InActive,
        PS_InVisible,
        PS_Die,
    }

    public class PlayerManager
    {
        private static Player m_Hero;
        public static Player Hero
        {
            get
            {
                return m_Hero;
            }
        }
        public static PBMessage.go_login_playerInfo HeroInfo
        {
            get
            {
                if (m_Hero != null)
                {
                    return m_Hero.Data;
                }
                return null;
            }
        }

        private Dictionary<int, Player> m_OnlinePlayers = new Dictionary<int, Player>();
        private Dictionary<int, Player> m_BattlePlayers = new Dictionary<int, Player>();

        private static PlayerManager m_Instance;
        public static PlayerManager Instance
        {
            get
            {
                if (m_Instance == null)
                {
                    m_Instance = new PlayerManager();

                }
                return m_Instance;
            }
        }
        public PlayerManager() : base()
        {
            NetManager.BindNetworkEvent((int)AccountMessage.GO_COPY_NEW_MAN_RETURN, OnPlayerEnter);
            NetManager.BindNetworkEvent((int)AccountMessage.GO_COPY_MAN_LEAVE_RETURN, OnPlayerLeave);
            NetManager.BindNetworkEvent((int)AccountMessage.GO_POSITION_COMMANF_RETURN, OnSyncPlayerTransform);
        }
        public void Logout()
        {
            if (m_Hero != null)
            {
                RemovePlayer(HeroInfo.roleid);
            }
            m_Hero = null;
        }
        private void OnPlayerEnter(Event evt)
        {
            //PBMessage.go_copy_allrole_return infos = ServiceProvider.DeserializeNetPacket<PBMessage.go_copy_allrole_return>(evt);
            //if (infos.roledata != null && infos.roledata.Count > 0)
            //{
            //    for (int i = 0; i < infos.roledata.Count; i++)
            //    {
            //        CreatePlayer(infos.roledata[i]);
            //    }
            //}
            //if (ContextProvider.CurrentScene != BattleScene.Instace)
            //{
            //    ContextProvider.StartScene<BattleScene>();
            //}
        }
        private void OnPlayerLeave(Event evt)
        {
            PBMessage.go_copy_roleleave_return info = NetManager.DeserializeNetPacket<PBMessage.go_copy_roleleave_return>(evt);
            if (info != null)
            {
                RemovePlayer(info.roleid);
            }
        }
        private void OnSyncPlayerTransform(Event evt)
        {
            PBMessage.go_charactercommand_return info = NetManager.DeserializeNetPacket<PBMessage.go_charactercommand_return>(evt);
            if (info != null)
            {
                Player player = GetOnlinePlayer(info.roleid);
            }
        }

        public Player CreateHero()
        {
            return CreateHero(HeroInfo);
        }
        public Player CreateHero(PBMessage.go_login_playerInfo playerInfo)
        {
            Player tempPlayer = null;
            if (m_OnlinePlayers.TryGetValue(playerInfo.roleid, out tempPlayer))
            {
                m_Hero = tempPlayer;
                return tempPlayer;
            }
            if (m_Hero == null)
            {
                m_Hero = new Player(PlayerType.PT_Hero);
            }
            m_Hero.Initialize(playerInfo);

            m_OnlinePlayers.Add(playerInfo.roleid, m_Hero);
            return m_Hero;
        }
        public Player CreatePlayer(PBMessage.go_login_playerInfo data)
        {
            Player player = null;
            if (m_OnlinePlayers.TryGetValue(data.roleid, out player))
            {
                return player;
            }
            player = new Player(PlayerType.PT_Player);

            player.Initialize(data);

            m_OnlinePlayers.Add(data.roleid, player);
            return player;
        }
        public void RemovePlayer(int playerID)
        {

            Player player = null;
            if (m_OnlinePlayers.TryGetValue(playerID, out player))
            {
                if (playerID != HeroInfo.roleid)//Do not remove hero.
                {
                    m_OnlinePlayers.Remove(playerID);
                }
            }
        }
        public Player GetOnlinePlayer(int playerID)
        {
            Player player = null;
            if (m_OnlinePlayers != null)
            {
                m_OnlinePlayers.TryGetValue(playerID, out player);
            }
            return player;
        }
        public void GetOnlinePlayers(out List<Player> players)
        {
            players = new List<Player>();
            if (m_OnlinePlayers != null && m_OnlinePlayers.Count > 0)
            {
                Dictionary<int, Player>.Enumerator it = m_OnlinePlayers.GetEnumerator();
                for (int i = 0; i < m_OnlinePlayers.Count; i++)
                {
                    it.MoveNext();
                    players.Add(it.Current.Value);
                }
            }
        }
    }
}