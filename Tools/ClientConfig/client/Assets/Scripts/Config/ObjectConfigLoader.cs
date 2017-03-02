﻿using System;
using System.Collections.Generic;
using System.Collections;
using ProtoBuf;
using System.IO;
using Configuration;

class ObjectConfigLoader
{
    private ObjectConfigLoader()
    {
        m_configCache = new List<ObjectConfig>();
//        m_configHashCache = new Hashtable();
    }

    private static ObjectConfigLoader m_instance = null;

    private List<ObjectConfig> m_configCache = null;

//    private Hashtable m_configHashCache = null;

    public static ObjectConfigLoader getInstance()
    {
        if (null == m_instance)
        {
            m_instance = new ObjectConfigLoader();
        }

        return m_instance;
    }

    public void load(string path)
    {
        if (false == File.Exists(path))
        {
            return;
        }

        byte[] byteAll = File.ReadAllBytes(path);

        if (byteAll == null  || byteAll.Length <= 0)
        {
            return;
        }

        releaseConfig();
           
        int length = BitConverter.ToInt32(byteAll, 0);

        int offset = 4;

        while (offset <= byteAll.Length)
        {
            MemoryStream memStream = new MemoryStream(byteAll, offset, length);

            ObjectConfig config = Serializer.Deserialize<ObjectConfig>(memStream);

            m_configCache.Add(config);

//            m_configHashCache.Add(config.Id, config);

            offset += length;

            if (offset >= byteAll.Length)
            {
                break;
            }

            length = BitConverter.ToInt32(byteAll, offset);
            offset += 4;
        }
    }

    public void load(byte[] buffer)
    {
        if (null == buffer || buffer.Length <= 0)
        {
            return;
        }

        releaseConfig();

        int length = BitConverter.ToInt32(buffer, 0);


        int offset = 4;

        while (offset <= buffer.Length)
        {
            MemoryStream memStream = new MemoryStream(buffer, offset, length);

            ObjectConfig config = Serializer.Deserialize<ObjectConfig>(memStream);

            m_configCache.Add(config);

//            m_configHashCache.Add(config.Id, config);

            offset += length;

            if (offset >= buffer.Length)
            {
                break;
            }

            length = BitConverter.ToInt32(buffer, offset);
            offset += 4;
        }
    }

 /*   public ObjectConfig getConfigByKey(object key)
    {
        if (null == m_configHashCache)
        {
            return null;
        }

        if (false == m_configHashCache.Contains(key))
        {
            return null;
        }

        return (ObjectConfig)m_configHashCache[key];
    }
*/
	public List<ObjectConfig> getAllCachedConfig()
	{
		return m_configCache;
	}

    public void releaseConfig(){
        m_configCache.Clear();
//        m_configHashCache.Clear();
    }

}
