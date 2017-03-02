/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: NetPacket.cs
			// Describle:  
			// Created By:  Wells Hsu
			// Date&Time:  2016/3/3 19:11:09
            // Modify History:
            //
//----------------------------------------------------------------*/

using System;
public class NetPacket
{
    private int m_MessageID;// message id
    private Byte[] m_Buffer;// message buffer,include header and body

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

    /// <summary>
    /// Constructor,generate packet header.
    /// </summary>
    /// <param name="msgID"></param>
    /// <param name="bodySize"></param>
    public NetPacket(int msgID, int bodySize)
    {
        m_MessageID = msgID;
        m_Buffer = new Byte[bodySize + PACK_HEAD_SIZE];
        m_Buffer[0] = 8;
        m_Buffer[1] = 8;

        Byte[] bytes = BitConverter.GetBytes(PACK_VERSION);
        Array.Copy(bytes, 0, m_Buffer, PACK_VERSION_OFFSET, bytes.Length);

        bytes = BitConverter.GetBytes(bodySize + PACK_HEAD_SIZE);
        Array.Copy(bytes, 0, m_Buffer, PACK_LENGTH_OFFSET, bytes.Length);

        bytes = BitConverter.GetBytes(m_MessageID);
        Array.Copy(bytes, 0, m_Buffer, PACK_MESSAGEID_OFFSET, bytes.Length);
    }
    public static bool IsPacketHeader(Byte[] data)
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
    public Byte[] GetBuffer() { return m_Buffer; }
    public int GetMessageID() { return m_MessageID; }
    public Byte[] GetBody()
    {
        if (m_Buffer == null || m_Buffer.Length <= PACK_HEAD_SIZE)
        {
            return null;
        }
        Byte[] data = new Byte[m_Buffer.Length - PACK_HEAD_SIZE];
        Array.Copy(m_Buffer, PACK_HEAD_SIZE, data, 0, data.Length);
        return data;
    }
    public bool SetPacketHeader(Byte[] data)
    {
        if (data == null || data.Length < PACK_HEAD_SIZE)
            return false;

        if (m_Buffer == null || m_Buffer.Length < PACK_HEAD_SIZE)
            return false;
        Array.Copy(data, 0, m_Buffer, 0, data.Length);
        return true;
    }
    public bool SetUserData(int userData)
    {
        if (m_Buffer == null || m_Buffer.Length < PACK_HEAD_SIZE)
            return false;
        byte[] bytes = BitConverter.GetBytes(userData);
        Array.Copy(bytes, 0, m_Buffer, PACK_USERDATA_OFFSET, bytes.Length);
        return true;
    }
    public int GetUserData()
    {
        int data = BitConverter.ToInt32(m_Buffer, PACK_USERDATA_OFFSET);
        return data;
    }
    public bool SetData(Byte[] data)
    {
        if (data == null)
            return false;
        if (m_Buffer == null || m_Buffer.Length < data.Length + PACK_HEAD_SIZE)
            return false;

        Array.Copy(data, 0, m_Buffer, PACK_MESSAGE_OFFSET, data.Length);
        return true;
    }
    public int GetTotalSize()
    {
        if (m_Buffer == null)
            return 0;
        return m_Buffer.Length;
    }
}
