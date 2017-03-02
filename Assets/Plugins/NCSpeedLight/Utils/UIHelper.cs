using UnityEngine;
using System.Collections;
using System.IO;
using LuaInterface;

/// <summary>
/// UI辅助类.
/// </summary>
public class UIHelper
{
    /// <summary>
    /// 设置按钮委托事件.
    /// </summary>
    /// <param name="varBtn"></param>
    /// <param name="varDelegate"></param>
    public static void SetButtonEvent(Transform varBtn, UIEventListener.VoidDelegate varDelegate)
    {
        if (varBtn != null)
        {
            UIEventListener.Get(varBtn.gameObject).onClick = varDelegate;
        }
    }

    /// <summary>
    /// 设置按钮委托事件.
    /// </summary>
    /// <param name="varParent"></param>
    /// <param name="varBtnPath"></param>
    /// <param name="varDelegate"></param>
    public static void SetButtonEvent(Transform varParent, string varBtnPath, UIEventListener.VoidDelegate varDelegate)
    {
        if (varParent != null)
        {
            Transform tempBtn = varParent.Find(varBtnPath);
            if (tempBtn != null)
            {
                SetButtonEvent(tempBtn, varDelegate);
            }
        }
    }

    public static void SetButtonEvent(Transform transform, string rootpath, LuaFunction func)
    {
        if (transform != null && string.IsNullOrEmpty(rootpath) == false && func != null)
        {
            Transform btn = transform.Find(rootpath);
            if (btn != null)
            {
                UIEventListener.Get(btn.gameObject).onClick = delegate (GameObject o)
                {
                    func.Call();
                };
            }
        }
    }

    /// <summary>
    /// 设置某Label的内容.
    /// </summary>
    /// <param name="varParent"></param>
    /// <param name="varPath"></param>
    /// <param name="varContent"></param>
    /// <returns></returns>
    public static UILabel SetLabelText(Transform varParent, string varPath, string varContent)
    {
        UILabel tempLabel = GetComponent<UILabel>(varParent, varPath);
        if (tempLabel == null)
        {
            return null;
        }

        tempLabel.text = varContent;

        return tempLabel;
    }

    /// <summary>
    /// 设置某Label的内容.
    /// </summary>
    /// <param name="varTran"></param>
    /// <param name="varContent"></param>
    /// <returns></returns>
    public static UILabel SetLabelText(Transform varTran, string varContent)
    {
        if (varTran == null)
        {
            return null;
        }
        UILabel tempLabel = varTran.GetComponent<UILabel>();
        if (tempLabel != null)
        {
            tempLabel.text = varContent;
            return tempLabel;
        }
        return null;
    }

    public static SpringPosition ResetSpringPosition(GameObject varObj, Vector3 varVec, float varStrength)
    {
        if (varObj == null)
        {
            return null;
        }

        SpringPosition tempSp = varObj.GetComponent<SpringPosition>();
        if (tempSp != null)
        {
            GameObject.Destroy(tempSp);
        }
        tempSp = varObj.AddComponent<SpringPosition>();

        tempSp.target = varVec;
        tempSp.strength = varStrength;
        tempSp.onFinished = null;

        return tempSp;
    }

    /// <summary>
    /// 设置某个对象的激活状态.
    /// </summary>
    /// <param name="varParent"></param>
    /// <param name="varState"></param>
    /// <returns></returns>
    public static bool SetActiveState(Transform varParent, bool varState)
    {
        if (varParent == null)
        {
            return false;
        }
        varParent.gameObject.SetActive(varState);
        return true;
    }

    /// <summary>
    /// 设置某个对象的激活状态.
    /// </summary>
    /// <param name="varParent"></param>
    /// <param name="varPath"></param>
    /// <param name="varState"></param>
    /// <returns></returns>
    public static bool SetActiveState(Transform varParent, string varPath, bool varState)
    {
        if (varParent == null)
        {
            return false;
        }
        Transform find = varParent.Find(varPath);
        if (find == null)
        {
            return false;
        }
        find.gameObject.SetActive(varState);
        return true;
    }

    /// <summary>
    /// 设置某个Sprite对象的图片名字.
    /// </summary>
    /// <param name="varParent"></param>
    /// <param name="varPath"></param>
    /// <param name="varName"></param>
    /// <returns></returns>
    public static UISprite SetSpriteName(Transform varParent, string varPath, string varName)
    {
        if (varParent == null)
        {
            return null;
        }
        Transform tempTran = varParent.Find(varPath);
        return SetSpriteName(tempTran, varName);
    }
    /// <summary>
    /// 设置某个Sprite对象的图片名字.
    /// </summary>
    /// <param name="varTran"></param>
    /// <param name="varName"></param>
    /// <returns></returns>
    public static UISprite SetSpriteName(Transform varTran, string varName)
    {
        if (varTran == null)
        {
            return null;
        }
        UISprite temp = varTran.GetComponent<UISprite>();
        if (temp != null)
        {
            temp.spriteName = varName;
            temp.MakePixelPerfect();
            return temp;
        }
        return null;
    }

    public static UISprite SetSpriteAlpha(Transform varTran, string varPath, int varAlpha)
    {
        if (varTran == null)
        {
            return null;
        }
        Transform tempTran = varTran.Find(varPath);
        return SetSpriteAlpha(tempTran, varAlpha);
    }

    public static UISprite SetSpriteAlpha(Transform varTran, int varAlpha)
    {
        if (varTran == null)
        {
            return null;
        }
        UISprite temp = varTran.GetComponent<UISprite>();
        if (temp != null)
        {
            temp.alpha = (float)varAlpha / 255;
            return temp;
        }
        return null;
    }

    /// <summary>
    /// 获得指定路径对应的组件.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="varTrans"></param>
    /// <param name="varPath"></param>
    /// <returns></returns>
    public static T GetComponent<T>(Transform varTrans, string varPath) where T : Component
    {
        if (varTrans == null)
        {
            return null;
        }

        Transform tempTrans = varTrans.Find(varPath);
        if (tempTrans == null)
        {
            return null;
        }

        return tempTrans.GetComponent<T>();
    }

    /// <summary>
    /// 获得对应的组件.
    /// </summary>
    /// <returns>The component.</returns>
    /// <param name="varTrans">Variable trans.</param>
    /// <typeparam name="T">The 1st type parameter.</typeparam>
    public static T GetComponent<T>(Transform varTrans) where T : Component
    {
        if (varTrans == null)
        {
            return null;
        }
        return varTrans.GetComponent<T>();
    }

    /// <summary>
    /// 获得字符串.
    /// </summary>
    /// <param name="varByte"></param>
    /// <returns></returns>
    public static string GetString(byte[] varByte)
    {

        try
        {
            return System.Text.Encoding.UTF8.GetString(varByte).TrimEnd('\0');
            //return System.Text.Encoding.GetEncoding("UTF8").GetString(varByte).TrimEnd('\0');
            //return System.Text.Encoding.Unicode.GetString(varByte).TrimEnd('\0');
        }
        catch (System.Exception)
        {
            return null;
        }
    }

    /// <summary>
    /// 获得带符号的数字字符串.
    /// </summary>
    /// <param name="varNumber"></param>
    /// <returns></returns>
    public static string GetNumberString(int varNumber)
    {
        if (varNumber > 0)
        {
            return "+" + varNumber.ToString();
        }

        return varNumber.ToString();
    }

    public static string GetNumberString(long varNumber)
    {
        if (varNumber > 0)
        {
            return "+" + varNumber.ToString();
        }

        return varNumber.ToString();
    }

    /// <summary>
    /// 获取字符串中指定字符后面的字符串,并转成整型返回.
    /// </summary>
    /// <param name="varName"></param>
    /// <param name="varSpilt"></param>
    /// <returns></returns>
    public static int GetCutNumber(string varName, char varSpilt)
    {
        int tempNum = -1;

        int tempIndex = varName.IndexOf(varSpilt) + 1;

        string tempsub = varName.Substring(tempIndex, varName.Length - tempIndex);

        int.TryParse(tempsub, out tempNum);

        return tempNum;
    }


    /// <summary>
    /// 获取金额（千位分隔）字符.
    /// </summary>
    /// <param name="varNumber"></param>
    /// <returns></returns>
    public static string GetSeparatorNumber(int varNumber)
    {
        if (varNumber > 0)
        {
            return GetSeparatorNumber(varNumber.ToString());
        }
        else
        {
            varNumber = System.Math.Abs(varNumber);

            return "-" + GetSeparatorNumber(varNumber.ToString());
        }
    }
    /// 获取金额（千位分隔）字符.
    public static string GetSeparatorNumber(string varNumberStr)
    {
        int tempLength = varNumberStr.Length;

        int temp = 3;

        while (tempLength > temp)
        {
            tempLength -= temp;

            varNumberStr = varNumberStr.Insert(tempLength, ",");
        }

        return varNumberStr;
    }


    /// <summary>  
    /// 截取字节数组  
    /// </summary>  
    /// <param name="srcBytes">要截取的字节数组</param>  
    /// <param name="startIndex">开始截取位置的索引</param>  
    /// <param name="length">要截取的字节长度</param>  
    /// <returns>截取后的字节数组</returns>  
    public static byte[] SubByte(byte[] srcBytes, int startIndex, int length)
    {
        System.IO.MemoryStream bufferStream = new System.IO.MemoryStream();
        byte[] returnByte = new byte[] { };
        if (srcBytes == null) { return returnByte; }
        if (startIndex < 0) { startIndex = 0; }
        if (startIndex < srcBytes.Length)
        {
            if (length < 1 || length > srcBytes.Length - startIndex) { length = srcBytes.Length - startIndex; }
            bufferStream.Write(srcBytes, startIndex, length);
            returnByte = bufferStream.ToArray();
            bufferStream.SetLength(0);
            bufferStream.Position = 0;
        }
        bufferStream.Close();
        bufferStream.Dispose();
        return returnByte;
    }

    //微信头像最后一个数值为0，默认640*640，改成132*132
    static string SetHeadSize(string varStr)
    {
        if (varStr == null || varStr.Length == 0)
        {
            Debug.LogWarning("Head url is null ");
            return varStr;
        }
        if (varStr[varStr.Length - 1].Equals('0'))
        {
            varStr = varStr.Substring(0, varStr.Length - 1);
            string tempSize = "132";//头像大小
            string tempStr = string.Format("{0}{1}", varStr, tempSize);
            return tempStr;
        }
        else
        {
            return varStr;
        }
    }
}
