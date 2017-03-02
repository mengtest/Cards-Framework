/*----------------------------------------------------------------
            // Copyright © 2015 NCSpeedLight
            // 
            // FileName: UIGaussianBlurEffect.cs
			// Describle:
			// Created By:  Wells Hsu
			// Date&Time:  2016/5/16 15:14:50
            // Modify History:
            //
//----------------------------------------------------------------*/
using System;
using UnityEngine;

public class UIGaussianBlurEffect : MonoBehaviour
{
    public delegate void GetImage(Texture tex);

    public float BlurSize;
    public int TextureSample;
    [NonSerialized]
    public Shader GaussianBlurShader;
    [NonSerialized]
    public Material Mat;
    //public UITexture Tex;
    public event GetImage GetImageDelegate;
    public bool Grap = false;
    public static UIGaussianBlurEffect Instance;

    void Awake()
    {
        if (GaussianBlurShader == null)
        {
            GaussianBlurShader = Shader.Find("NCSpeedLight/ImageEffect/GaussianBlur");
        }
        if (GaussianBlurShader == null)
        {
            Debug.LogError("[UIGaussianBlurEffect] Fetal error: can not find shader named: 'NCSpeedLight/ImageEffect/GaussianBlur'");
            return;
        }
        if (Mat == null)
        {
            Mat = new Material(GaussianBlurShader);
        }
        Instance = this;
    }
    void Update()
    {
        if (GetImageDelegate != null)
        {
            Grap = true;
        }
    }
    void OnDestroy()
    {
        Instance = null;
        GetImageDelegate = null;
    }
    void OnRenderImage(RenderTexture sourceTexture, RenderTexture destTexture)
    {
        if (Grap == false) return;
        Grap = false;
        if (BlurSize != 0 && GaussianBlurShader != null)
        {
            int rtW = sourceTexture.width / TextureSample;
            int rtH = sourceTexture.height / TextureSample;
            RenderTexture rtTempA = RenderTexture.GetTemporary(rtW, rtH, 0, sourceTexture.format);
            rtTempA.filterMode = FilterMode.Bilinear;
            Graphics.Blit(sourceTexture, rtTempA);
            for (int i = 0; i < BlurSize; i++)
            {
                float iteraionOffs = i * 1.0f;
                Mat.SetFloat("_blurSize", BlurSize + iteraionOffs);
                //vertical blur           
                RenderTexture rtTempB = RenderTexture.GetTemporary(rtW, rtH, 0, sourceTexture.format);
                rtTempB.filterMode = FilterMode.Bilinear;
                Graphics.Blit(rtTempA, rtTempB, Mat, 0);
                RenderTexture.ReleaseTemporary(rtTempA);
                rtTempA = rtTempB;
                //horizontal blur             
                rtTempB = RenderTexture.GetTemporary(rtW, rtH, 0, sourceTexture.format);
                rtTempB.filterMode = FilterMode.Bilinear;
                Graphics.Blit(rtTempA, rtTempB, Mat, 1);
                RenderTexture.ReleaseTemporary(rtTempA);
                rtTempA = rtTempB;
            }
            Graphics.Blit(sourceTexture, destTexture);
            if (GetImageDelegate != null)
            {
                GetImageDelegate(rtTempA);
                GetImageDelegate = null;
            }
            //if (Tex != null)
            //{
            //    Tex.mainTexture = rtTempA;
            //}
        }
    }
}
