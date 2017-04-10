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
using System.Collections;

namespace NCSpeedLight
{
    public class UIHelper
    {
        public static void SetButtonEvent(Transform transform, UIEventListener.VoidDelegate func)
        {
            if (transform != null)
            {
                UIEventListener listener = UIEventListener.Get(transform.gameObject);
                if (listener)
                {
                    listener.onClick = func;
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

        public static void SetButtonEvent(Transform transform, LuaFunction func)
        {
            if (transform != null)
            {
                SetButtonEvent(transform, (go) => { if (func != null) { func.Call(go); } });
            }
        }

        public static void SetButtonEvent(Transform parent, string path, LuaFunction func)
        {
            if (parent != null)
            {
                SetButtonEvent(parent.Find(path), (go) => { if (func != null) { func.Call(go); } });
            }
        }

        public static UILabel SetLabelText(Transform transform, string path, object content)
        {
            UILabel label = GetComponent(transform, path, typeof(UILabel)) as UILabel;
            if (label == null || content == null)
            {
                return null;
            }
            label.text = content.ToString();
            return label;
        }

        public static UILabel SetLabelText(Transform transform, object content)
        {
            if (transform == null || content == null)
            {
                return null;
            }
            UILabel label = transform.GetComponent<UILabel>();
            if (label)
            {
                label.text = content.ToString();
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

        public static UITexture SetTexture(Transform parent, string path, string url)
        {
            if (parent == null)
            {
                return null;
            }
            Transform t = parent.Find(path);
            return SetTexture(t, url);
        }

        public static UITexture SetTexture(Transform transform, string url)
        {
            if (transform != null)
            {
                UITexture texture = transform.GetComponent<UITexture>();
                Game.Instance.StartCoroutine(DownloadImage(url, texture));
                return texture;
            }
            return null;
        }

        public static IEnumerator DownloadImage(string url, UITexture texture)
        {
            if (string.IsNullOrEmpty(url) || texture == null)
            {
                yield break;
            }
            WWW www = new WWW(url);
            yield return www;
            Texture2D image = www.texture;
            texture.mainTexture = image;
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

        public static UnityEngine.Object GetComponent(Transform transform, string path, System.Type type)
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
            return t.GetComponent(type);
        }

        public static UnityEngine.Object GetComponent(Transform transform, System.Type type)
        {
            if (transform == null)
            {
                return null;
            }
            return transform.GetComponent(type);
        }

        /// <summary>
        /// 改变图片的显示状态，Isgray=true,则图片设置为灰色,否则设置成白色
        /// </summary>
        /// <param name="root"></param>
        /// <param name="path"></param>
        /// <param name="isGrey"></param>
        /// <returns></returns>
        public static bool ChangeSpriteColor(Transform root, string path, bool isGrey)
        {
            if (root != null)
            {
                Transform sprite = root.Find(path);
                if (sprite != null)
                {
                    return ChangeSpriteColor(sprite, isGrey);
                }
            }
            return false;
        }

        /// <summary>
        /// 改变图片的显示状态，Isgray=true,则图片设置为灰色,否则设置成白色
        /// </summary>
        /// <param name="transform"></param>
        /// <param name="isGrey"></param>
        /// <returns></returns>
        public static bool ChangeSpriteColor(Transform transform, bool isGrey)
        {
            if (transform != null)
            {
                UISprite sprite = transform.GetComponent<UISprite>();
                if (sprite != null)
                {
                    return ChangeSpriteColor(sprite, isGrey);
                }
            }
            return false;
        }

        /// <summary>
        /// 改变图片的显示状态，Isgray=true,则图片设置为灰色,否则设置成白色
        /// </summary>
        /// <param name="sprite"></param>
        /// <param name="isGrey"></param>
        /// <returns></returns>
        public static bool ChangeSpriteColor(UISprite sprite, bool isGrey)
        {
            Color changecolor = Color.white;
            if (isGrey)
            {
                changecolor = new Color(0, 0, 0);
            }
            if (sprite != null)
            {
                sprite.color = changecolor;
                return true;
            }
            return false;
        }
    }
}
