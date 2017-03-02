/*----------------------------------------------------------------
            // Copyright © 2015 NCSpeedLight
            // 
            // FileName: GetBlurBackground.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  2016/5/16 20:47:57
            // Modify History:
            //
//----------------------------------------------------------------*/
using System;
using UnityEngine;

public class GetBlurBackground : MonoBehaviour
{
    public UITexture Texture;
    [NonSerialized]
    [HideInInspector]
    public static Color ColorTint = new Color(0.8f, 0.8f, 0.8f, 1f);
    public bool OverrideColorTint = false;
    [NonSerialized]
    public Texture BlurTexture;

    public bool NoAction = false;
    void Awake()
    {
        if (NoAction == true)
        {
            return;
        }
        GetBlurImg();
    }
    void OnDestroy()
    {
        if (Texture != null)
        {
            Texture.mainTexture = null;
            Texture = null;
        }
        BlurTexture = null;
    }
    public void GetBlurImg(bool recapture = false)
    {
        if (recapture == false && BlurTexture != null) return;
        if (Texture == null)
        {
            Texture = GetComponent<UITexture>();
        }
        if (Texture == null) return;
        Texture.type = UIBasicSprite.Type.Sliced;
        if (UIGaussianBlurEffect.Instance == null) return;
        UIGaussianBlurEffect.Instance.GetImageDelegate += OnGotBlurImg;
    }
    void ReleaseBlurImg()
    {
        if (Texture == null)
        {
            Texture = GetComponent<UITexture>();
        }
        if (Texture == null) return;
        Texture.mainTexture = null;
    }
    void OnGotBlurImg(Texture tex)
    {
        BlurTexture = tex;
        if (Texture != null)
        {
            Texture.mainTexture = BlurTexture;
            if (OverrideColorTint == false)
            {
                Texture.color = ColorTint;
            }
        }
    }
    void OnApplicationPause(bool pause)
    {
        if (pause == false)
        {
            GetBlurImg(true);
        }
        else
        {
            ReleaseBlurImg();
        }
    }
}
