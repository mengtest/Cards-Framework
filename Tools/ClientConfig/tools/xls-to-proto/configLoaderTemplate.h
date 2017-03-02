#ifndef __CONFIGLOADERTEMPLATE_H__
#define __CONFIGLOADERTEMPLATE_H__

#include <map>
#include <vector>

#include "TemplateConfig.pb.h"

class configLoaderTemplate
{
public:
	static configLoaderTemplate* getInstance();

	void load(const unsigned char* buffer, int bufferLen);

	TemplateConfig* getConfigByKey(TemplateKey key);

	std::vector<TemplateConfig*>& getAllCachedConfig();

	void releaseConfig();

private:
	std::map<TemplateKey, TemplateConfig*> m_configMapCache;
	std::vector<TemplateConfig*> m_configVectorCache;
	static configLoaderTemplate* m_pInstance;
	configLoaderTemplate();
};

#endif 