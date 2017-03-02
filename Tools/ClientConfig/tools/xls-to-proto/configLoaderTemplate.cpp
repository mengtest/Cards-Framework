#include "configLoaderTemplate.h"

configLoaderTemplate* configLoaderTemplate::m_pInstance = NULL;

configLoaderTemplate::configLoaderTemplate()
{

}

configLoaderTemplate* configLoaderTemplate::getInstance()
{
	if (NULL == m_pInstance)
	{
		m_pInstance = new configLoaderTemplate();
	}

	return m_pInstance;
}

void configLoaderTemplate::load(const unsigned char* buffer, int bufferLen)
{
	if (NULL == buffer)
	{
		return;
	}

	if (bufferLen <= 4)
	{
		return;
	}

	const unsigned char* begin = buffer;
	const unsigned char* end = buffer + bufferLen;

	while (begin != end)
	{
		int configLength  = 0;
		memcpy(&configLength, begin, 4);
		begin += 4;

		TemplateConfig* config = new TemplateConfig();
		config->ParseFromArray(begin, configLength);
		m_configVectorCache.push_back(config);
		m_configMapCache[config->key()] = config;

		begin += configLength;
	}
}

TemplateConfig* configLoaderTemplate::getConfigByKey(TemplateKey key)
{
	std::map<TemplateKey, TemplateConfig*>::iterator it = m_configMapCache.find(key);

	if (it == m_configMapCache.end())
	{
		return NULL;
	}

	return it->second;
}

std::vector<TemplateConfig*>& configLoaderTemplate::getAllCachedConfig()
{
	return m_configVectorCache;
}

void configLoaderTemplate::releaseConfig()
{
	m_configMapCache.clear();

	for (int i = 0; i < m_configVectorCache.size(); i++)
	{
		TemplateConfig* config = m_configVectorCache[i];
		delete config;
	}

	m_configVectorCache.clear();
}