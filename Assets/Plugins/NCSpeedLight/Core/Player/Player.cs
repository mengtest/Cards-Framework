/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Player.cs
			// Describle:   
			// Created By:  Wells Hsu
			// Date&Time:  2016/3/3 19:11:09
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;

namespace NCSpeedLight
{
    public class Player
    {
        protected PlayerEventManager m_EventProcessor;
        protected PlayerType m_PlayerType;
        protected PlayerState m_PlayerState;

        private bool m_IsDie;
        public bool IsDie
        {
            get
            {
                return m_IsDie;
            }
            set
            {
                m_IsDie = value;
            }
        }
       
        public PlayerEventManager EventProcessor
        {
            get { return m_EventProcessor; }
            set { m_EventProcessor = value; }
        }
        public PlayerType PlayerType
        {
            get { return m_PlayerType; }
        }
        public Player(PlayerType type)
        {
            m_PlayerType = type;
            m_EventProcessor = new PlayerEventManager(this);
        }

        private PBMessage.go_login_playerInfo m_Data;
        public PBMessage.go_login_playerInfo Data
        {
            get { return m_Data; }
            set { m_Data = value; }
        }
        public bool Initialize(PBMessage.go_login_playerInfo data)
        {
            Data = data;
            return true;
        }
        public bool UpdateData(PBMessage.go_login_playerInfo data)
        {
            return true;
        }
    }
}

