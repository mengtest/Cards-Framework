using System;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace cn.sharesdk.unity3d
{
	#if UNITY_IPHONE
	public class PCShaderSDK : ShareSDKImpl
	{
		

	
		

		public PCShaderSDK (GameObject go) 
		{
			Debug.Log("PCUtils  ===>>>  PCUtils" );

		}

		
		public override void InitSDK (String appKey) 
		{

			return ;
		}

		public override void SetPlatformConfig (Hashtable configs) 
		{

			return ;
		}
		
		public override void Authorize(int reqID, PlatformType platform) 
		{
			return ;
		}
		
		public override void CancelAuthorize (PlatformType platform) 
		{
			return ;
		}
		
		public override bool IsAuthorized (PlatformType platform) 
		{
			
			return  true;
		}
		
		public override bool IsClientValid (PlatformType platform)
		{
			return  true;
		}
		
		public override void GetUserInfo (int reqID, PlatformType platform) 
		{
			return ;
		}
		
		public override void ShareContent (int reqID, PlatformType platform, ShareContent content) 
		{
			
			return ;
		}
		
		public override void ShareContent (int reqID, PlatformType[] platforms, ShareContent content) 
		{
			return ;
		}
		
		public override void ShowPlatformList (int reqID, PlatformType[] platforms, ShareContent content, int x, int y) 
		{
			return ;
		}
		
		public override void ShowShareContentEditor (int reqID, PlatformType platform, ShareContent content) 
		{
			return ;
			
		}
		
		public override void GetFriendList (int reqID, PlatformType platform, int count, int page) 
		{
			
			return ;
		}
		
		public override void AddFriend (int reqID, PlatformType platform, String account)
		{
			return ;
		}
		
		public override Hashtable GetAuthInfo (PlatformType platform) 
		{

			Hashtable  temTable = new Hashtable();
			return  temTable;
		}
		
		public override void DisableSSO (Boolean open)
		{
			// no this interface on iOS
			Console.WriteLine ("#waring : no this interface on PC");
		}
		
		
	}
	#endif
}
