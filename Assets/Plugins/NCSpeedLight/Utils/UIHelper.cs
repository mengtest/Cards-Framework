/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: UIHelper.cs
            // Describle:  UI 工具类
            // Created By:  All
            // Date&Time:  2016/3/26 10:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

using UnityEngine;
using LuaInterface;

public class UIHelper
{
    public static void SetButtonEvent(Transform transform, UIEventListener.VoidDelegate func)
    {
        if (transform != null)
        {
            UIEventListener listener = UIEventListener.Get(transform.gameObject);
            if (listener)
            {
                listener.onClick += func;
            }
        }
    }

    public static void SetButtonEvent(Transform parent, string path, UIEventListener.VoidDelegate func)
    {
        if (parent != null)
        {
            SetButtonEvent(parent.Find(path), func);
        }
    }

    public static void SetButtonEvent(Transform parent, string path, LuaFunction func)
    {
        if (parent != null)
        {
            SetButtonEvent(parent.Find(path), (go) => { if (func != null) { func.Call(go); } });
        }
    }

    public static UILabel SetLabelText(Transform transform, string path, string content)
    {
        UILabel label = GetComponent<UILabel>(transform, path);
        if (label == null)
        {
            return null;
        }
        label.text = content;
        return label;
    }

    public static UILabel SetLabelText(Transform transform, string content)
    {
        if (transform == null)
        {
            return null;
        }
        UILabel label = transform.GetComponent<UILabel>();
        if (label)
        {
            label.text = content;
            return label;
        }
        return null;
    }

    public static SpringPosition ResetSpringPosition(GameObject go, Vector3 vec3, float strength)
    {
        if (go == null)
        {
            return null;
        }
        SpringPosition sp = go.GetComponent<SpringPosition>();
        if (sp != null)
        {
            GameObject.Destroy(sp);
        }
        sp = go.AddComponent<SpringPosition>();
        sp.target = vec3;
        sp.strength = strength;
        sp.onFinished = null;
        return sp;
    }

    public static bool SetActiveState(Transform transform, bool state)
    {
        if (transform == null)
        {
            return false;
        }
        transform.gameObject.SetActive(state);
        return true;
    }

    public static bool SetActiveState(Transform parent, string path, bool state)
    {
        if (parent == null)
        {
            return false;
        }
        Transform find = parent.Find(path);
        if (find == null)
        {
            return false;
        }
        find.gameObject.SetActive(state);
        return true;
    }

    public static UISprite SetSpriteName(Transform parent, string path, string spriteName)
    {
        if (parent == null)
        {
            return null;
        }
        Transform t = parent.Find(path);
        return SetSpriteName(t, spriteName);
    }

    public static UISprite SetSpriteName(Transform transform, string spriteName)
    {
        if (transform == null)
        {
            return null;
        }
        UISprite sprite = transform.GetComponent<UISprite>();
        if (sprite != null)
        {
            sprite.spriteName = spriteName;
            sprite.MakePixelPerfect();
            return sprite;
        }
        return null;
    }

    public static UISprite SetSpriteAlpha(Transform parent, string path, int alpha)
    {
        if (parent == null)
        {
            return null;
        }
        Transform t = parent.Find(path);
        return SetSpriteAlpha(t, alpha);
    }

    public static UISprite SetSpriteAlpha(Transform transform, int alpha)
    {
        if (transform == null)
        {
            return null;
        }
        UISprite sprite = transform.GetComponent<UISprite>();
        if (sprite != null)
        {
            sprite.alpha = (float)alpha / 255;
            return sprite;
        }
        return null;
    }

    public static T GetComponent<T>(Transform transform, string path)
        where T : Component
    {
        if (transform == null)
        {
            return null;
        }
        Transform t = transform.Find(path);
        if (t == null)
        {
            return null;
        }
        return t.GetComponent<T>();
    }

    public static T GetComponent<T>(Transform transform)
        where T : Component
    {
        if (transform == null)
        {
            return null;
        }
        return transform.GetComponent<T>();
    }

    public static string BytesToString(byte[] bytes)
    {
        try
        {
            return System.Text.Encoding.UTF8.GetString(bytes).TrimEnd('\0');
            //return System.Text.Encoding.GetEncoding("UTF8").GetString(varByte).TrimEnd('\0');
            //return System.Text.Encoding.Unicode.GetString(varByte).TrimEnd('\0');
        }
        catch (System.Exception)
        {
            return null;
        }
    }

}
