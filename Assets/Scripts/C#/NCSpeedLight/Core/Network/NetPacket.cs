/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: NetPacket.cs
			// Describle:  消息包
			// Created By:  Wells Hsu
			// Date&Time:  2016/3/3 19:11:09
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;

namespace NCSpeedLight
{
    public class NetPacket
    {
        private int m_MessageID;// message id
        private byte[] m_HeaderBuffer;
        private byte[] m_BodyBuffer;

        public const int PACK_VERSION_OFFSET = 2;// packet version
        public const int PACK_LENGTH_OFFSET = 3;// length offset
        public const int PACK_MESSAGEID_OFFSET = 7;// message id offset
        public const int PACK_USERDATA_OFFSET = 11;// message data offset
        public const int PACK_SERVERID_OFFSET = 15;// server id offset
        public const int PACK_MESSAGE_OFFSET = 19;// offset from header to body
        public const int PACK_HEAD_SIZE = 19;// size of header
        public const int PACK_CODE_SIZE = 4;// verify code length
        public const int PACK_VERSION = 1;// packet version
        public const int PACK_CODE_MSG_VERSION = 3;//

        public NetPacket(int id, int bodySize)
        {
            m_MessageID = id;
            m_HeaderBuffer = new byte[PACK_HEAD_SIZE];
            m_HeaderBuffer[0] = 8;
            m_HeaderBuffer[1] = 8;

            byte[] bytes = BitConverter.GetBytes(PACK_VERSION);
            Array.Copy(bytes, 0, m_HeaderBuffer, PACK_VERSION_OFFSET, bytes.Length);

            bytes = BitConverter.GetBytes(bodySize + PACK_HEAD_SIZE);
            Array.Copy(bytes, 0, m_HeaderBuffer, PACK_LENGTH_OFFSET, bytes.Length);

            bytes = BitConverter.GetBytes(m_MessageID);
            Array.Copy(bytes, 0, m_HeaderBuffer, PACK_MESSAGEID_OFFSET, bytes.Length);

            if (bodySize < 0) bodySize = 0;
            m_BodyBuffer = new byte[bodySize];
        }

        public static bool IsPacketHeader(byte[] data)
        {
            if (data.Length != PACK_HEAD_SIZE)
            {
                return false;
            }
            if (data[0] != 8 || data[1] != 8)
            {
                return false;
            }
            return true;
        }

        public byte[] GetBuffer()
        {
            byte[] buffer = new byte[GetTotalSize()];
            Array.Copy(m_HeaderBuffer, 0, buffer, 0, m_HeaderBuffer.Length);
            Array.Copy(m_BodyBuffer, 0, buffer, m_HeaderBuffer.Length, m_BodyBuffer.Length);
            return buffer;
        }

        public int GetMessageID() { return m_MessageID; }

        public bool SetHeader(byte[] data)
        {
            if (data == null || data.Length < PACK_HEAD_SIZE)
                return false;
            Array.Copy(data, 0, m_HeaderBuffer, 0, PACK_HEAD_SIZE);
            return true;
        }

        public bool SetPlayerID(int id)
        {
            byte[] bytes = BitConverter.GetBytes(id);
            Array.Copy(bytes, 0, m_HeaderBuffer, PACK_USERDATA_OFFSET, bytes.Length);
            return true;
        }

        public int GetPlayerID()
        {
            int data = BitConverter.ToInt32(m_HeaderBuffer, PACK_USERDATA_OFFSET);
            return data;
        }

        public bool SetServerID(int id)
        {
            byte[] bytes = BitConverter.GetBytes(id);
            Array.Copy(bytes, 0, m_HeaderBuffer, PACK_SERVERID_OFFSET, bytes.Length);
            return true;
        }

        public int GetServerID()
        {
            int data = BitConverter.ToInt32(m_HeaderBuffer, PACK_USERDATA_OFFSET);
            return data;
        }

        public bool SetBody(byte[] data)
        {
            m_BodyBuffer = data;
            return true;
        }

        public byte[] GetBody()
        {
            return m_BodyBuffer;
        }

        public int GetTotalSize()
        {
            if (m_BodyBuffer == null)
            {
                return PACK_HEAD_SIZE;
            }
            else
            {
                return m_BodyBuffer.Length + PACK_HEAD_SIZE;
            }
        }

        public int GetBodySize()
        {
            if (m_BodyBuffer == null)
            {
                return 0;
            }
            else
            {
                return m_BodyBuffer.Length;
            }
        }
    }
}