-- region *.lua
-- Date
-- 此文件由[BabeLua]插件自动生成

require "Common/define"
require "Common/functions"


Test = { };
local this = Test;

function Test.TestCortinue()
    logWarn("1111");
    coroutine.wait(1);
    logWarn("2222");

    local www = WWW("http://doc.ulua.org/readme.txt");
    coroutine.www(www);
    logWarn(www.text);
end

-- endregion
