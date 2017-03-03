--create by yangxun
NotificationServices={}

--- <summary>
--- 属性:Int32
--- </summary>
NotificationServices.localNotificationCount=nil
--- <summary>
--- 属性:LocalNotification[]
--- </summary>
NotificationServices.localNotifications=nil
--- <summary>
--- 属性:LocalNotification[]
--- </summary>
NotificationServices.scheduledLocalNotifications=nil
--- <summary>
--- 属性:Int32
--- </summary>
NotificationServices.remoteNotificationCount=nil
--- <summary>
--- 属性:RemoteNotification[]
--- </summary>
NotificationServices.remoteNotifications=nil
--- <summary>
--- 属性:NotificationType
--- </summary>
NotificationServices.enabledNotificationTypes=nil
--- <summary>
--- 属性:Byte[]
--- </summary>
NotificationServices.deviceToken=nil
--- <summary>
--- 属性:String
--- </summary>
NotificationServices.registrationError=nil
--- <summary>
--- C#声明:Int32 get_localNotificationCount()
--- </summary>
--- <returns>System.Int32</returns>
function NotificationServices.get_localNotificationCount()
end
--- <summary>
--- C#声明:UnityEngine.iOS.LocalNotification GetLocalNotification(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.iOS.LocalNotification</returns>
function NotificationServices.GetLocalNotification(arg_index)
end
--- <summary>
--- C#声明:UnityEngine.iOS.LocalNotification[] get_localNotifications()
--- </summary>
--- <returns>UnityEngine.iOS.LocalNotification[]</returns>
function NotificationServices.get_localNotifications()
end
--- <summary>
--- C#声明:Void ScheduleLocalNotification(UnityEngine.iOS.LocalNotification)
--- </summary>
--- <param name="arg_notification">UnityEngine.iOS.LocalNotification</param>
--- <returns>System.Void</returns>
function NotificationServices.ScheduleLocalNotification(arg_notification)
end
--- <summary>
--- C#声明:Void PresentLocalNotificationNow(UnityEngine.iOS.LocalNotification)
--- </summary>
--- <param name="arg_notification">UnityEngine.iOS.LocalNotification</param>
--- <returns>System.Void</returns>
function NotificationServices.PresentLocalNotificationNow(arg_notification)
end
--- <summary>
--- C#声明:Void CancelLocalNotification(UnityEngine.iOS.LocalNotification)
--- </summary>
--- <param name="arg_notification">UnityEngine.iOS.LocalNotification</param>
--- <returns>System.Void</returns>
function NotificationServices.CancelLocalNotification(arg_notification)
end
--- <summary>
--- C#声明:Void CancelAllLocalNotifications()
--- </summary>
--- <returns>System.Void</returns>
function NotificationServices.CancelAllLocalNotifications()
end
--- <summary>
--- C#声明:UnityEngine.iOS.LocalNotification[] get_scheduledLocalNotifications()
--- </summary>
--- <returns>UnityEngine.iOS.LocalNotification[]</returns>
function NotificationServices.get_scheduledLocalNotifications()
end
--- <summary>
--- C#声明:Int32 get_remoteNotificationCount()
--- </summary>
--- <returns>System.Int32</returns>
function NotificationServices.get_remoteNotificationCount()
end
--- <summary>
--- C#声明:UnityEngine.iOS.RemoteNotification GetRemoteNotification(Int32)
--- </summary>
--- <param name="arg_index">System.Int32</param>
--- <returns>UnityEngine.iOS.RemoteNotification</returns>
function NotificationServices.GetRemoteNotification(arg_index)
end
--- <summary>
--- C#声明:UnityEngine.iOS.RemoteNotification[] get_remoteNotifications()
--- </summary>
--- <returns>UnityEngine.iOS.RemoteNotification[]</returns>
function NotificationServices.get_remoteNotifications()
end
--- <summary>
--- C#声明:Void ClearLocalNotifications()
--- </summary>
--- <returns>System.Void</returns>
function NotificationServices.ClearLocalNotifications()
end
--- <summary>
--- C#声明:Void ClearRemoteNotifications()
--- </summary>
--- <returns>System.Void</returns>
function NotificationServices.ClearRemoteNotifications()
end
--- <summary>
--- C#声明:Void RegisterForNotifications(UnityEngine.iOS.NotificationType)
--- </summary>
--- <param name="arg_notificationTypes">UnityEngine.iOS.NotificationType</param>
--- <returns>System.Void</returns>
function NotificationServices.RegisterForNotifications(arg_notificationTypes)
end
--- <summary>
--- C#声明:Void RegisterForNotifications(UnityEngine.iOS.NotificationType, Boolean)
--- </summary>
--- <param name="arg_notificationTypes">UnityEngine.iOS.NotificationType</param>
--- <param name="arg_registerForRemote">System.Boolean</param>
--- <returns>System.Void</returns>
function NotificationServices.RegisterForNotifications(arg_notificationTypes,arg_registerForRemote)
end
--- <summary>
--- C#声明:Void UnregisterForRemoteNotifications()
--- </summary>
--- <returns>System.Void</returns>
function NotificationServices.UnregisterForRemoteNotifications()
end
--- <summary>
--- C#声明:UnityEngine.iOS.NotificationType get_enabledNotificationTypes()
--- </summary>
--- <returns>UnityEngine.iOS.NotificationType</returns>
function NotificationServices.get_enabledNotificationTypes()
end
--- <summary>
--- C#声明:Byte[] get_deviceToken()
--- </summary>
--- <returns>System.Byte[]</returns>
function NotificationServices.get_deviceToken()
end
--- <summary>
--- C#声明:System.String get_registrationError()
--- </summary>
--- <returns>System.String</returns>
function NotificationServices.get_registrationError()
end
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function NotificationServices:ToString()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function NotificationServices:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function NotificationServices:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function NotificationServices:GetType()
end
