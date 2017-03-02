UrlKeeper = { }
CompanyName = 'jinxian'
Version = '1.6.2'
Channel = 'jinxian'
Platform = 'Android'
function UrlKeeper.JsonUrl()
    local str = "http://jinxianmajiangcdn.damaigame.com/json/{0}/{1}/{2}/v{3}/qiumo.db?v={4}";
    str = Helper.StringFormat(str, CompanyName, Platform, Channel, Version, System.DateTime.Now.Ticks)
    return str
end