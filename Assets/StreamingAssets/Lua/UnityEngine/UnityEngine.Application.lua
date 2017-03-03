--create by yangxun
Application={}

--- <summary>
--- 属性:Int32
--- </summary>
Application.loadedLevel=nil
--- <summary>
--- 属性:String
--- </summary>
Application.loadedLevelName=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isLoadingLevel=nil
--- <summary>
--- 属性:Int32
--- </summary>
Application.levelCount=nil
--- <summary>
--- 属性:Int32
--- </summary>
Application.streamedBytes=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isPlaying=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isEditor=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isWebPlayer=nil
--- <summary>
--- 属性:RuntimePlatform
--- </summary>
Application.platform=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isMobilePlatform=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isConsolePlatform=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.runInBackground=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.isPlayer=nil
--- <summary>
--- 属性:String
--- </summary>
Application.dataPath=nil
--- <summary>
--- 属性:String
--- </summary>
Application.streamingAssetsPath=nil
--- <summary>
--- 属性:String
--- </summary>
Application.persistentDataPath=nil
--- <summary>
--- 属性:String
--- </summary>
Application.temporaryCachePath=nil
--- <summary>
--- 属性:String
--- </summary>
Application.srcValue=nil
--- <summary>
--- 属性:String
--- </summary>
Application.absoluteURL=nil
--- <summary>
--- 属性:String
--- </summary>
Application.absoluteUrl=nil
--- <summary>
--- 属性:String
--- </summary>
Application.unityVersion=nil
--- <summary>
--- 属性:String
--- </summary>
Application.version=nil
--- <summary>
--- 属性:String
--- </summary>
Application.bundleIdentifier=nil
--- <summary>
--- 属性:ApplicationInstallMode
--- </summary>
Application.installMode=nil
--- <summary>
--- 属性:ApplicationSandboxType
--- </summary>
Application.sandboxType=nil
--- <summary>
--- 属性:String
--- </summary>
Application.productName=nil
--- <summary>
--- 属性:String
--- </summary>
Application.companyName=nil
--- <summary>
--- 属性:String
--- </summary>
Application.cloudProjectId=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.webSecurityEnabled=nil
--- <summary>
--- 属性:String
--- </summary>
Application.webSecurityHostUrl=nil
--- <summary>
--- 属性:Int32
--- </summary>
Application.targetFrameRate=nil
--- <summary>
--- 属性:SystemLanguage
--- </summary>
Application.systemLanguage=nil
--- <summary>
--- 属性:ThreadPriority
--- </summary>
Application.backgroundLoadingPriority=nil
--- <summary>
--- 属性:NetworkReachability
--- </summary>
Application.internetReachability=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.genuine=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Application.genuineCheckAvailable=nil
--- <summary>
--- C#声明:Void CommitSuicide(Int32)
--- </summary>
--- <param name="arg_mode">System.Int32</param>
--- <returns>System.Void</returns>
function Application.CommitSuicide(arg_mode)
end
--- <summary>
--- C#声明:Int32 get_targetFrameRate()
--- </summary>
--- <returns>System.Int32</returns>
function Application.get_targetFrameRate()
end
--- <summary>
--- C#声明:Void set_targetFrameRate(Int32)
--- </summary>
--- <param name="arg_value">System.Int32</param>
--- <returns>System.Void</returns>
function Application.set_targetFrameRate(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.SystemLanguage get_systemLanguage()
--- </summary>
--- <returns>UnityEngine.SystemLanguage</returns>
function Application.get_systemLanguage()
end
--- <summary>
--- C#声明:UnityEngine.ThreadPriority get_backgroundLoadingPriority()
--- </summary>
--- <returns>UnityEngine.ThreadPriority</returns>
function Application.get_backgroundLoadingPriority()
end
--- <summary>
--- C#声明:Void set_backgroundLoadingPriority(UnityEngine.ThreadPriority)
--- </summary>
--- <param name="arg_value">UnityEngine.ThreadPriority</param>
--- <returns>System.Void</returns>
function Application.set_backgroundLoadingPriority(arg_value)
end
--- <summary>
--- C#声明:UnityEngine.NetworkReachability get_internetReachability()
--- </summary>
--- <returns>UnityEngine.NetworkReachability</returns>
function Application.get_internetReachability()
end
--- <summary>
--- C#声明:Boolean get_genuine()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_genuine()
end
--- <summary>
--- C#声明:Boolean get_genuineCheckAvailable()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_genuineCheckAvailable()
end
--- <summary>
--- C#声明:UnityEngine.AsyncOperation RequestUserAuthorization(UnityEngine.UserAuthorization)
--- </summary>
--- <param name="arg_mode">UnityEngine.UserAuthorization</param>
--- <returns>UnityEngine.AsyncOperation</returns>
function Application.RequestUserAuthorization(arg_mode)
end
--- <summary>
--- C#声明:Boolean HasUserAuthorization(UnityEngine.UserAuthorization)
--- </summary>
--- <param name="arg_mode">UnityEngine.UserAuthorization</param>
--- <returns>System.Boolean</returns>
function Application.HasUserAuthorization(arg_mode)
end
--- <summary>
--- C#声明:Void RegisterLogCallback(LogCallback)
--- </summary>
--- <param name="arg_handler">UnityEngine.Application+LogCallback</param>
--- <returns>System.Void</returns>
function Application.RegisterLogCallback(arg_handler)
end
--- <summary>
--- C#声明:Void RegisterLogCallbackThreaded(LogCallback)
--- </summary>
--- <param name="arg_handler">UnityEngine.Application+LogCallback</param>
--- <returns>System.Void</returns>
function Application.RegisterLogCallbackThreaded(arg_handler)
end
--- <summary>
--- C#声明:Void add_logMessageReceived(LogCallback)
--- </summary>
--- <param name="arg_value">UnityEngine.Application+LogCallback</param>
--- <returns>System.Void</returns>
function Application.add_logMessageReceived(arg_value)
end
--- <summary>
--- C#声明:Void remove_logMessageReceived(LogCallback)
--- </summary>
--- <param name="arg_value">UnityEngine.Application+LogCallback</param>
--- <returns>System.Void</returns>
function Application.remove_logMessageReceived(arg_value)
end
--- <summary>
--- C#声明:Void add_logMessageReceivedThreaded(LogCallback)
--- </summary>
--- <param name="arg_value">UnityEngine.Application+LogCallback</param>
--- <returns>System.Void</returns>
function Application.add_logMessageReceivedThreaded(arg_value)
end
--- <summary>
--- C#声明:Void remove_logMessageReceivedThreaded(LogCallback)
--- </summary>
--- <param name="arg_value">UnityEngine.Application+LogCallback</param>
--- <returns>System.Void</returns>
function Application.remove_logMessageReceivedThreaded(arg_value)
end
--- <summary>
--- C#声明:Void Quit()
--- </summary>
--- <returns>System.Void</returns>
function Application.Quit()
end
--- <summary>
--- C#声明:Void CancelQuit()
--- </summary>
--- <returns>System.Void</returns>
function Application.CancelQuit()
end
--- <summary>
--- C#声明:Int32 get_loadedLevel()
--- </summary>
--- <returns>System.Int32</returns>
function Application.get_loadedLevel()
end
--- <summary>
--- C#声明:System.String get_loadedLevelName()
--- </summary>
--- <returns>System.String</returns>
function Application.get_loadedLevelName()
end
--- <summary>
--- C#声明:Void LoadLevel(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Void</returns>
function Application.LoadLevel(arg_index)
end
--- <summary>
--- C#声明:Void LoadLevel(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Application.LoadLevel(arg_name)
end
--- <summary>
--- C#声明:UnityEngine.AsyncOperation LoadLevelAsync(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.AsyncOperation</returns>
function Application.LoadLevelAsync(arg_index)
end
--- <summary>
--- C#声明:UnityEngine.AsyncOperation LoadLevelAsync(System.String)
--- </summary>
--- <param name="arg_levelName">System.String</param>
--- <returns>UnityEngine.AsyncOperation</returns>
function Application.LoadLevelAsync(arg_levelName)
end
--- <summary>
--- C#声明:UnityEngine.AsyncOperation LoadLevelAdditiveAsync(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.AsyncOperation</returns>
function Application.LoadLevelAdditiveAsync(arg_index)
end
--- <summary>
--- C#声明:UnityEngine.AsyncOperation LoadLevelAdditiveAsync(System.String)
--- </summary>
--- <param name="arg_levelName">System.String</param>
--- <returns>UnityEngine.AsyncOperation</returns>
function Application.LoadLevelAdditiveAsync(arg_levelName)
end
--- <summary>
--- C#声明:Void LoadLevelAdditive(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>System.Void</returns>
function Application.LoadLevelAdditive(arg_index)
end
--- <summary>
--- C#声明:Void LoadLevelAdditive(System.String)
--- </summary>
--- <param name="arg_name">System.String</param>
--- <returns>System.Void</returns>
function Application.LoadLevelAdditive(arg_name)
end
--- <summary>
--- C#声明:Boolean get_isLoadingLevel()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isLoadingLevel()
end
--- <summary>
--- C#声明:Int32 get_levelCount()
--- </summary>
--- <returns>System.Int32</returns>
function Application.get_levelCount()
end
--- <summary>
--- C#声明:Single GetStreamProgressForLevel(Int32)
--- </summary>
--- <param name="arg_levelIndex">System.Int32</param>
--- <returns>System.Single</returns>
function Application.GetStreamProgressForLevel(arg_levelIndex)
end
--- <summary>
--- C#声明:Single GetStreamProgressForLevel(System.String)
--- </summary>
--- <param name="arg_levelName">System.String</param>
--- <returns>System.Single</returns>
function Application.GetStreamProgressForLevel(arg_levelName)
end
--- <summary>
--- C#声明:Int32 get_streamedBytes()
--- </summary>
--- <returns>System.Int32</returns>
function Application.get_streamedBytes()
end
--- <summary>
--- C#声明:Boolean CanStreamedLevelBeLoaded(Int32)
--- </summary>
--- <param name="arg_levelIndex">System.Int32</param>
--- <returns>System.Boolean</returns>
function Application.CanStreamedLevelBeLoaded(arg_levelIndex)
end
--- <summary>
--- C#声明:Boolean CanStreamedLevelBeLoaded(System.String)
--- </summary>
--- <param name="arg_levelName">System.String</param>
--- <returns>System.Boolean</returns>
function Application.CanStreamedLevelBeLoaded(arg_levelName)
end
--- <summary>
--- C#声明:Boolean get_isPlaying()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isPlaying()
end
--- <summary>
--- C#声明:Boolean get_isEditor()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isEditor()
end
--- <summary>
--- C#声明:Boolean get_isWebPlayer()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isWebPlayer()
end
--- <summary>
--- C#声明:UnityEngine.RuntimePlatform get_platform()
--- </summary>
--- <returns>UnityEngine.RuntimePlatform</returns>
function Application.get_platform()
end
--- <summary>
--- C#声明:Boolean get_isMobilePlatform()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isMobilePlatform()
end
--- <summary>
--- C#声明:Boolean get_isConsolePlatform()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isConsolePlatform()
end
--- <summary>
--- C#声明:Void CaptureScreenshot(System.String, Int32)
--- </summary>
--- <param name="arg_filename">System.String</param>
--- <param name="arg_superSize">System.Int32</param>
--- <returns>System.Void</returns>
function Application.CaptureScreenshot(arg_filename,arg_superSize)
end
--- <summary>
--- C#声明:Void CaptureScreenshot(System.String)
--- </summary>
--- <param name="arg_filename">System.String</param>
--- <returns>System.Void</returns>
function Application.CaptureScreenshot(arg_filename)
end
--- <summary>
--- C#声明:Boolean get_runInBackground()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_runInBackground()
end
--- <summary>
--- C#声明:Void set_runInBackground(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Application.set_runInBackground(arg_value)
end
--- <summary>
--- C#声明:Boolean get_isPlayer()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_isPlayer()
end
--- <summary>
--- C#声明:Boolean HasProLicense()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.HasProLicense()
end
--- <summary>
--- C#声明:Void DontDestroyOnLoad(UnityEngine.Object)
--- </summary>
--- <param name="arg_mono">UnityEngine.Object</param>
--- <returns>System.Void</returns>
function Application.DontDestroyOnLoad(arg_mono)
end
--- <summary>
--- C#声明:System.String get_dataPath()
--- </summary>
--- <returns>System.String</returns>
function Application.get_dataPath()
end
--- <summary>
--- C#声明:System.String get_streamingAssetsPath()
--- </summary>
--- <returns>System.String</returns>
function Application.get_streamingAssetsPath()
end
--- <summary>
--- C#声明:System.String get_persistentDataPath()
--- </summary>
--- <returns>System.String</returns>
function Application.get_persistentDataPath()
end
--- <summary>
--- C#声明:System.String get_temporaryCachePath()
--- </summary>
--- <returns>System.String</returns>
function Application.get_temporaryCachePath()
end
--- <summary>
--- C#声明:System.String get_srcValue()
--- </summary>
--- <returns>System.String</returns>
function Application.get_srcValue()
end
--- <summary>
--- C#声明:System.String get_absoluteURL()
--- </summary>
--- <returns>System.String</returns>
function Application.get_absoluteURL()
end
--- <summary>
--- C#声明:System.String get_absoluteUrl()
--- </summary>
--- <returns>System.String</returns>
function Application.get_absoluteUrl()
end
--- <summary>
--- C#声明:Void ExternalCall(System.String, System.Object[])
--- </summary>
--- <param name="arg_functionName">System.String</param>
--- <param name="arg_args">System.Object[]</param>
--- <returns>System.Void</returns>
function Application.ExternalCall(arg_functionName,arg_args)
end
--- <summary>
--- C#声明:Void ExternalEval(System.String)
--- </summary>
--- <param name="arg_script">System.String</param>
--- <returns>System.Void</returns>
function Application.ExternalEval(arg_script)
end
--- <summary>
--- C#声明:System.String get_unityVersion()
--- </summary>
--- <returns>System.String</returns>
function Application.get_unityVersion()
end
--- <summary>
--- C#声明:System.String get_version()
--- </summary>
--- <returns>System.String</returns>
function Application.get_version()
end
--- <summary>
--- C#声明:System.String get_bundleIdentifier()
--- </summary>
--- <returns>System.String</returns>
function Application.get_bundleIdentifier()
end
--- <summary>
--- C#声明:UnityEngine.ApplicationInstallMode get_installMode()
--- </summary>
--- <returns>UnityEngine.ApplicationInstallMode</returns>
function Application.get_installMode()
end
--- <summary>
--- C#声明:UnityEngine.ApplicationSandboxType get_sandboxType()
--- </summary>
--- <returns>UnityEngine.ApplicationSandboxType</returns>
function Application.get_sandboxType()
end
--- <summary>
--- C#声明:System.String get_productName()
--- </summary>
--- <returns>System.String</returns>
function Application.get_productName()
end
--- <summary>
--- C#声明:System.String get_companyName()
--- </summary>
--- <returns>System.String</returns>
function Application.get_companyName()
end
--- <summary>
--- C#声明:System.String get_cloudProjectId()
--- </summary>
--- <returns>System.String</returns>
function Application.get_cloudProjectId()
end
--- <summary>
--- C#声明:Boolean get_webSecurityEnabled()
--- </summary>
--- <returns>System.Boolean</returns>
function Application.get_webSecurityEnabled()
end
--- <summary>
--- C#声明:System.String get_webSecurityHostUrl()
--- </summary>
--- <returns>System.String</returns>
function Application.get_webSecurityHostUrl()
end
--- <summary>
--- C#声明:Void OpenURL(System.String)
--- </summary>
--- <param name="arg_url">System.String</param>
--- <returns>System.Void</returns>
function Application.OpenURL(arg_url)
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Application:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Application:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Application:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Application:GetType()
end
