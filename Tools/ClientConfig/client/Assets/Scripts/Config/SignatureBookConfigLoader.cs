using System;
using System.Collections.Generic;
using System.Collections;
using ProtoBuf;
using System.IO;
using Configuration;

class SignatureBookConfigLoader
{
    private SignatureBookConfigLoader()
    {
        m_configCache = new List<SignatureBookConfig>();
//        m_configHashCache = new Hashtable();
    }

    private static SignatureBookConfigLoader m_instance = null;

    private List<SignatureBookConfig> m_configCache = null;

//    private Hashtable m_configHashCache = null;

    public static SignatureBookConfigLoader getInstance()
    {
        if (null == m_instance)
        {
            m_instance = new SignatureBookConfigLoader();
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

            SignatureBookConfig config = Serializer.Deserialize<SignatureBookConfig>(memStream);

            m_configCache.Add(config);

//            m_configHashCache.Add(config.day, config);

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

            SignatureBookConfig config = Serializer.Deserialize<SignatureBookConfig>(memStream);

            m_configCache.Add(config);

//            m_configHashCache.Add(config.day, config);

            offset += length;

            if (offset >= buffer.Length)
            {
                break;
            }

            length = BitConverter.ToInt32(buffer, offset);
            offset += 4;
        }
    }

 /*   public SignatureBookConfig getConfigByKey(object key)
    {
        if (null == m_configHashCache)
        {
            return null;
        }

        if (false == m_configHashCache.Contains(key))
        {
            return null;
        }

        return (SignatureBookConfig)m_configHashCache[key];
    }
*/
	public List<SignatureBookConfig> getAllCachedConfig()
	{
		return m_configCache;
	}

    public void releaseConfig(){
        m_configCache.Clear();
//        m_configHashCache.Clear();
    }

}

