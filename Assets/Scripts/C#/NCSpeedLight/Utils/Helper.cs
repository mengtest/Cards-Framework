/*----------------------------------------------------------------
            // Copyright © 2014-2017 NCSpeedLight
            // 
            // FileName: Helper.cs
			// Describle: 功能性、公用、帮助型函数集
			// Created By:  Neil
			// Date&Time:  2015/4/1 14:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

#define OPEN_LOG //控制输出日志

using System;
using System.IO;
using System.Text;
using System.Reflection;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using UnityEngine;
using LuaInterface;

namespace NCSpeedLight
{
    public class Helper
    {
        private static float PRECISION = 0.000001f;
        private static StringBuilder m_StrBuilder = new StringBuilder();

        /// <summary>
        /// 字符串拼接
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string StringFormat(string format, params object[] args)
        {
            try
            {
                if (m_StrBuilder.Length > 0)
                {
                    m_StrBuilder.Remove(0, m_StrBuilder.Length);
                }
                m_StrBuilder.AppendFormat(format, args);
                return m_StrBuilder.ToString();
            }
            catch (Exception e)
            {
                Debug.LogError("help format error: " + e.Message);
                return "";
            }
        }

        /// <summary>
        /// 添加组件至GameObject对象上
        /// </summary>
        /// <param name="className"></param>
        /// <param name="go"></param>
        public static void AddComponent(string className, GameObject go)
        {
            if (go && string.IsNullOrEmpty(className) == false)
            {
                Type type = Type.GetType(className);
                go.AddComponent(type);
            }
        }

        /// <summary>
        /// 设置GameObject对象层级
        /// </summary>
        /// <param name="go"></param>
        /// <param name="layerName"></param>
        public static void SetLayer(GameObject go, string layerName)
        {
            int layer = LayerMask.NameToLayer(layerName);
            NGUITools.SetLayer(go, layer);
            return;
        }

        /// <summary>
        /// 字符串转Vector3
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static Vector3 StrToVec3(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return Vector3.zero;
            }
            string v = str.Substring(1, str.Length - 2);
            string[] values = v.Split(new string[] { "," }, StringSplitOptions.None);
            if (values.Length == 3)
            {
                return new Vector3(Convert.ToSingle(values[0]), Convert.ToSingle(values[1]), Convert.ToSingle(values[2]));
            }
            return Vector3.zero;
        }

        /// <summary>
        /// 字符串转Vector4
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static Vector4 StrToVec4(string str)
        {
            if (string.IsNullOrEmpty(str))
            {
                return Vector3.zero;
            }
            string v = str.Substring(1, str.Length - 2);
            string[] values = v.Split(new string[] { "," }, StringSplitOptions.None);
            if (values.Length == 4)
            {
                return new Vector4(Convert.ToSingle(values[0]), Convert.ToSingle(values[1]), Convert.ToSingle(values[2]), Convert.ToSingle(values[3]));
            }
            return Vector4.zero;
        }

        /// <summary>
        /// Vector3转字符串
        /// </summary>
        /// <param name="vec"></param>
        /// <returns></returns>
        public static string Vec3ToStr(Vector3 vec)
        {
            return StringFormat("({0},{1},{2} )", vec.x, vec.y, vec.z);
        }

        /// <summary>
        /// Vector4转字符串
        /// </summary>
        /// <param name="vec"></param>
        /// <returns></returns>
        public static string Vec4ToStr(Vector4 vec)
        {
            return StringFormat("({0},{1},{2} ,{3})", vec.x, vec.y, vec.z, vec.w);
        }

        /// <summary>
        /// 判断浮点数是否等于0
        /// </summary>
        /// <param name="f"></param>
        /// <returns></returns>
        public static bool FloatEqualsZero(float f)
        {
            if (Math.Abs(f) < PRECISION)
            {
                return true;
            }
            return false;
        }

        public delegate void ChildDelegate(GameObject child, System.Object userData);
        public static void ForeachChildRecursively(GameObject parent, string childName, ChildDelegate del, System.Object userData)
        {
            foreach (Transform t in parent.GetComponentsInChildren<Transform>())
            {
                if (t.gameObject.name == childName)
                {
                    del(t.gameObject, userData);
                }
            }
        }

        public static void SplitNum(int num, out List<int> outData)
        {
            outData = new List<int>();
            int n = Mathf.Abs(num);
            for (int i = 0; Math.Pow(10, i) <= n; ++i)
            {
                int tmp = (int)Math.Pow(10, i);
                tmp = n / tmp;
                tmp = tmp % 10;
                outData.Insert(0, tmp);
            }
        }

        public static bool EqualsType<T>(object obj) where T : class
        {
            if (obj.GetType() == typeof(T))
            {
                return true;
            }
            return false;
        }

        static public string GetGradeColorStr(int grade)
        {
            switch (grade)
            {
                case 1:
                    return "[FFFFFF]";
                case 2:
                    return "[4FE0FF]";
                case 3:
                    return "[9E48FF]";
                case 4:
                    return "[FF9191]";
                case 5:
                    return "[FF4D24]";
                default:
                    Helper.LogError("Helper::getGradeColorStr error: no exist grade = " + grade);
                    return "[FFFFFF]";
            }
        }


        //比较两个vector3;
        static public bool JudgeIsEnd(Vector3 start, Vector3 end, bool is_angle, float judge_range)
        {
            //        if (start == null || end == null) return false;

            //如果角度小于0则加360度;
            if (is_angle)
            {
                start.x = start.x < 0 ? start.x + 360 : start.x;
                start.y = start.y < 0 ? start.y + 360 : start.y;
                start.z = start.z < 0 ? start.z + 360 : start.z;

                end.x = end.x < 0 ? end.x + 360 : end.x;
                end.y = end.y < 0 ? end.y + 360 : end.y;
                end.z = end.z < 0 ? end.z + 360 : end.z;
            }

            bool is_x = Mathf.Abs(start.x - end.x) % 360 <= judge_range;
            bool is_y = Mathf.Abs(start.y - end.y) % 360 <= judge_range;
            bool is_z = Mathf.Abs(start.z - end.z) % 360 <= judge_range;
            return is_x && is_y && is_z;
        }

        public static void Log(object str)
        {
#if OPEN_LOG
            string logStr = StringFormat("[{0}][{1}-{2}] {3}", "Log.Info", DateTime.Now.ToString("HH:mm:ss"), Time.frameCount, str);
            Debug.Log(logStr);
#endif
        }

        public static void Log(object str, UnityEngine.Object obj)
        {
#if OPEN_LOG
            string logStr = StringFormat("[{0}][{1}-{2}] {3}", "Log.Info", DateTime.Now.ToString("HH:mm:ss"), Time.frameCount, str);
            Debug.Log(logStr, obj);
#endif

        }

        public static void LogError(object str)
        {
#if OPEN_LOG
            string logStr = StringFormat("[{0}][{1}-{2}] {3}", "Log.Error", DateTime.Now.ToString("HH:mm:ss"), Time.frameCount, str);
            Debug.LogError(logStr);
#endif
        }

        public static void LogError(object str, UnityEngine.Object obj)
        {
#if OPEN_LOG
            string logStr = StringFormat("[{0}][{1}-{2}] {3}", "Log.Error", DateTime.Now.ToString("HH:mm:ss"), Time.frameCount, str);
            Debug.LogError(logStr, obj);
#endif
        }

        public static void LogWarning(object str)
        {
#if OPEN_LOG
            string logStr = StringFormat("[{0}][{1}-{2}] {3}", "Log.Warning", DateTime.Now.ToString("HH:mm:ss"), Time.frameCount, str);
            Debug.LogWarning(logStr);
#endif
        }

        public static void LogWarning(object str, UnityEngine.Object obj)
        {
#if OPEN_LOG
            string logStr = StringFormat("[{0}][{1}-{2}] {3}", "Log.Warning", DateTime.Now.ToString("HH:mm:ss"), Time.frameCount, str);
            Debug.LogWarning(logStr, obj);
#endif
        }

        /// <summary>
        /// 判断输入是否为中文
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        public static bool HasChinese(string content)
        {
            //判断是不是中文
            string regexstr = @"[\u4e00-\u9fa5]";
            if (Regex.IsMatch(content, regexstr))
            {
                Log("HasChinese");
                return true;
            }
            else
            {
                Log("Has Not Chinese");
                return false;
            }
        }

        /// <summary>
        /// 只允许数字或字母的判断
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        public static bool IsIntergerOrLetter(string content)
        {
            Regex reg1 = new System.Text.RegularExpressions.Regex(@"^[A-Za-z0-9]+$");
            return reg1.IsMatch(content);
        }

        /// <summary>
        /// 把总秒数转成 倒计时00:00:00格式
        /// </summary>
        /// <param name="seconds"></param>
        /// <returns></returns>
        public static string GetTextBySeconds(int seconds)
        {
            int hour = seconds / 3600;
            int minutes = (seconds - hour * 3600) / 60;
            int second = seconds - hour * 3600 - minutes * 60;

            string str_time = string.Empty;
            if (hour < 10)
            {
                str_time += ("0" + hour + ":");
            }
            else
            {
                str_time += (hour + ":");
            }
            if (hour == 0)
            {
                str_time = string.Empty;
            }

            if (minutes < 10)
            {
                str_time += ("0" + minutes + ":");
            }
            else
            {
                str_time += (minutes + ":");
            }
            if (second < 10)
            {
                str_time += ("0" + second);
            }
            else
            {
                str_time += (second);
            }

            return str_time;
        }

        /// <summary>
        /// 格式化输出钱币类数字.如：123456则显示为123,456
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static string MoneyFormatInput(long num)
        {
            string str_num = "0";
            if (num >= 0)
            {
                str_num = Helper.StringFormat("{0:N0}", num);
            }
            return str_num;
        }

        /// <summary>
        /// 获取当前时间，毫秒显示
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentTimeWithMillisecond()
        {
            return DateTime.Now.ToString() + ":" + DateTime.Now.Millisecond.ToString();
        }

        public static int OnlyIncluding(params string[] layers)
        {
            return MakeMask(layers);
        }

        public static int EverythingBut(params string[] layers)
        {
            return MakeMask(layers);
        }

        static int MakeMask(params string[] layers)
        {
            int mask = 0;
            for (int i = 0; i < layers.Length; i++)
            {
                mask |= 1 << LayerMask.NameToLayer(layers[i]);
            }
            return mask;
        }

        public static bool SetActiveState(Transform parent, bool state)
        {
            if (parent == null)
            {
                return false;
            }
            parent.gameObject.SetActive(state);
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

        public static Transform SetParent(Transform child, Transform root, string path, bool worldPositionStavs)
        {
            if (child == null || root == null)
            {
                return null;
            }
            Transform parent = root.Find(path);
            if (parent != null)
            {
                child.SetParent(parent, worldPositionStavs);
                return parent;
            }
            return null;
        }

        public static Transform SetParent(Transform child, Transform root, string path)
        {
            return SetParent(child, root, path, false);
        }

        /// <summary>
        /// 设置Label的内容
        /// </summary>
        /// <param name="parent"></param>
        /// <param name="path"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static UILabel SetLabelText(Transform parent, string path, string content)
        {
            UILabel label = GetComponent<UILabel>(parent, path);
            if (label == null)
            {
                return null;
            }
            label.text = content;
            return label;
        }

        /// <summary>
        /// 设置Label的内容
        /// </summary>
        /// <param name="transform"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static UILabel SetLabelText(Transform transform, string content)
        {
            if (transform == null)
            {
                return null;
            }
            UILabel label = transform.GetComponent<UILabel>();
            if (label != null)
            {
                label.text = content;
                return label;
            }
            return null;
        }

        /// <summary>
        /// 设置Sprite对象的图片名字
        /// </summary>
        /// <param name="parent"></param>
        /// <param name="path"></param>
        /// <param name="spriteName"></param>
        /// <returns></returns>
        public static UISprite SetSpriteName(Transform parent, string path, string spriteName)
        {
            if (parent == null)
            {
                return null;
            }
            Transform transform = parent.Find(path);
            return SetSpriteName(transform, spriteName);
        }

        /// <summary>
        /// 设置Sprite对象的图片名字
        /// </summary>
        /// <param name="transform"></param>
        /// <param name="spriteName"></param>
        /// <returns></returns>
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

        /// <summary>
        /// 获取背景颜色框图片名字.
        /// </summary>
        public static string GetColorBgSpriteName(int color)
        {
            string tempSpriteName = string.Empty;
            switch (color)
            {
                case 1: tempSpriteName = "kuang_1"; break;
                case 2: tempSpriteName = "kuang_2"; break;
                case 3: tempSpriteName = "kuang_3"; break;
                case 4: tempSpriteName = "kuang_4"; break;
                case 5: tempSpriteName = "kuang_5"; break;
                default: tempSpriteName = "kuang_1"; break;
            }
            return tempSpriteName;
        }

        /// <summary>
        /// 获得指定路径对应的组件.
        /// </summary>
        /// <returns>The component.</returns>
        /// <param name="transform">Variable trans.</param>
        /// <param name="path">Variable path.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static T GetComponent<T>(Transform transform, string path) where T : Component
        {
            if (transform == null)
            {
                return null;
            }
            Transform tempTrans = transform.Find(path);
            if (tempTrans == null)
            {
                return null;
            }
            return tempTrans.GetComponent<T>();
        }


        /// <summary>
        /// 根据文件路径生成MD5值
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public static string FilePathToMD5(string path)
        {
            try
            {
                byte[] bytes = File.ReadAllBytes(path);
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] md5Bytes = md5.ComputeHash(bytes);
                md5.Clear();
                StringWriter sw = new StringWriter();
                for (int i = 0; i < md5Bytes.Length; i++)
                {
                    sw.Write(md5Bytes[i].ToString("x").PadLeft(2, '0'));
                }
                return sw.ToString();
            }
            catch (Exception e)
            {
                LogError(e.Message);
                return null;
            }
        }

        /// <summary>
        /// Ascii码检查字符是不是汉字
        /// </summary>
        /// <param name="c"></param>
        /// <returns></returns>
        public static bool CheckChinese(char c)
        {
            return c > 127;
        }

        public static string GetFileNameFromPath(string path)
        {
            if (string.IsNullOrEmpty(path))
            {
                return string.Empty;
            };
            string[] paths = path.Split(new char[] { '/' });
            if (paths.Length == 0)
            {
                return string.Empty;
            }
            return paths[paths.Length - 1];
        }

        public static string SplitPathExtension(string path)
        {
            return path.Substring(0, path.LastIndexOf("."));
        }

        /// <summary>
        /// 颜色转字符
        /// </summary>
        /// <param name="color"></param>
        /// <returns></returns>
        public static string ColorToStr(Color32 color)
        {
            string tem = "({0},{1},{2},{3})";
            tem = Helper.StringFormat(tem, color.r, color.g, color.b, color.a);
            return tem;
        }

        /// <summary>
        /// 删除字符串中的空格
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string DeleteNullChar(string str)
        {
            if (string.IsNullOrEmpty(str)) return Vector3.zero.ToString();
            return str.Replace(" ", "");

        }

        /// <summary>
        /// 字符转颜色
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static Color StrToColor(string str)
        {
            if (string.IsNullOrEmpty(str)) return Color.black;
            str = DeleteNullChar(str);
            string v = str.Substring(1, str.Length - 2);
            string[] values = v.Split(new string[] { "," }, StringSplitOptions.None);
            if (values.Length == 4)
            {
                try
                {
                    float r, g, b, a;
                    r = Convert.ToSingle(values[0]);
                    g = Convert.ToSingle(values[1]);
                    b = Convert.ToSingle(values[2]);
                    a = Convert.ToSingle(values[3]);
                    r /= 255.0f;
                    g /= 255.0f;
                    b /= 255.0f;
                    a /= 255.0f;
                    return new Color(r, g, b, a);
                }
                catch (System.Exception e)
                {
                    Helper.LogError("convert to color error:" + e.ToString());
                    return Color.black;
                }
            }
            return Color.black;
        }

        /// <summary>
        /// 对象名除去“(Clone）”
        /// </summary>
        /// <param name="objName"></param>
        /// <returns></returns>
        public string SplitCloneFromObjName(string objName)
        {
            if (string.IsNullOrEmpty(objName))
            {
                return null;
            }
            string[] temp = objName.Split(new string[] { "(" }, StringSplitOptions.None);
            return temp[0];
        }


        public static float Multiply(float p1x, float p1y, float p2x, float p2y, float p0x, float p0y)
        {
            return ((p1x - p0x) * (p2y - p0y) - (p2x - p0x) * (p1y - p0y));
        }

        public static bool InInRect(Vector3 point, Vector3 v0, Vector3 v1, Vector3 v2, Vector3 v3)
        {
            float x = point.x;
            float y = point.z;

            float v0x = v0.x;
            float v0y = v0.z;

            float v1x = v1.x;
            float v1y = v1.z;

            float v2x = v2.x;
            float v2y = v2.z;

            float v3x = v3.x;
            float v3y = v3.z;

            if (Multiply(x, y, v0x, v0y, v1x, v1y) * Multiply(x, y, v3x, v3y, v2x, v2y) <= 0 && Multiply(x, y, v3x, v3y, v0x, v0y) * Multiply(x, y, v2x, v2y, v1x, v1y) <= 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 判断某点是否在相机视景体内
        /// </summary>
        /// <param name="camera"></param>
        /// <param name="position"></param>
        /// <returns></returns>
        public static bool IsInViewPort(Camera camera, Vector3 position)
        {
            if (camera == null)
            {
                return false;
            }
            // 首先判断是否在视野内
            bool b1 = false;
            Vector3 tmpViewPortPos = camera.WorldToViewportPoint(position);
            Rect tmpRect = new Rect(0, 0, 1, 1);
            b1 = tmpRect.Contains(tmpViewPortPos);

            // 其次判断是否在远近平面内
            bool b2 = false;
            if (tmpViewPortPos.z >= camera.nearClipPlane && tmpViewPortPos.z <= camera.farClipPlane)
            {
                b2 = true;
            }
            return b1 && b2;
        }

        public static string GetAssetDirectory(string fullPath)
        {
            if (string.IsNullOrEmpty(fullPath))
            {
                return string.Empty;
            };
            string[] paths = fullPath.Split(new char[] { '/' });

            if (paths.Length == 0)
            {
                return string.Empty;
            }
            string str = string.Empty;
            for (int i = 0; i < paths.Length - 1; i++)
            {
                str += paths[i];
            }
            return str;
        }


        /// <summary>
        /// 获取resource文件夹的相对路径
        /// </summary>
        /// <param name="assetDatabasePath"></param>
        /// <returns></returns>
        public static string GetReleativePathDependOnRes(string assetDatabasePath)
        {
            if (string.IsNullOrEmpty(assetDatabasePath))
            {
                return string.Empty;
            }
            string[] pathArray = assetDatabasePath.Split(new char[] { '/' });
            if (pathArray.Length == 0)
            {
                return string.Empty;
            }
            string str = string.Empty;
            for (int i = 2; i < pathArray.Length; i++)
            {
                if (i > 2)
                {
                    str += "/";
                }
                str += pathArray[i];
            }
            if (string.IsNullOrEmpty(str))
            {
                return string.Empty;
            }
            int index = 0;
            for (int i = str.Length - 1; i > 0; i--)
            {
                string a = str.Substring(i, 1);
                if (string.IsNullOrEmpty(a))
                {
                    continue;
                }
                if (a.Equals("."))
                {
                    index = i;
                    break;
                }
            }
            if (index > str.Length)
            {
                return str;
            }
            return str.Substring(0, index);
        }

        /// <summary>
        /// Generate root path depend on parent transform
        /// </summary>
        /// <param name="targetTransform"></param>
        /// <param name="startTransform"></param>
        /// <param name="rootPath"></param>
        /// <returns></returns>
        public static string GetRootPath(Transform targetTransform, Transform startTransform, string rootPath)
        {
            if (targetTransform == null || startTransform == null)
            {
                return string.Empty;
            }
            if (targetTransform != startTransform)
            {
                if (string.IsNullOrEmpty(rootPath))
                {
                    rootPath = startTransform.name;
                }
                else
                {
                    rootPath = startTransform.name + "/" + rootPath;
                }
                return GetRootPath(targetTransform, startTransform.parent, rootPath);
            }
            else
            {
                return rootPath;
            }
        }

        public static string GetTypeNameWithoutNamespcae(string typeName)
        {
            if (string.IsNullOrEmpty(typeName))
            {
                return string.Empty;
            }
            string[] pathArray = typeName.Split(new char[] { '.' });
            if (pathArray == null || pathArray.Length == 0)
            {
                return string.Empty;
            }
            return pathArray[pathArray.Length - 1];
        }

        public static List<Type> GetAllSubClass(Type parentType)
        {
            if (parentType == null) return null;
            List<Type> types = new List<Type>();
            Assembly ass = Assembly.GetAssembly(parentType);
            foreach (Type child in ass.GetTypes())
            {
                if (child.BaseType == parentType)
                {
                    types.Add(child);
                }
            }
            return types;
        }

        public static string GenerateAssetPathByAbsolutelyDir(string dir)
        {
            if (string.IsNullOrEmpty(dir)) return string.Empty;
            string[] pathArray = dir.Split(new char[] { '/' });
            if (pathArray.Length == 0)
            {
                return string.Empty;
            }
            string path = string.Empty;
            for (int i = 0; i < pathArray.Length; i++)
            {
                string tempStr = pathArray[i];
                if (string.IsNullOrEmpty(tempStr)) continue;
                if (tempStr.Equals("Assets"))
                {
                    path += tempStr;
                    continue;
                }
                if (string.IsNullOrEmpty(path) == false)
                {
                    path += "/" + tempStr;
                }
            }
            return path;
        }

        /// <summary>
        /// 删除目录.
        /// </summary>
        /// <param name="path"></param>
        public static bool DeleteDirectory(string path)
        {
            bool result = false;
            try
            {
                if (Directory.Exists(path) == true)
                {
                    Directory.Delete(path, true);
                }
                result = true;
            }
            catch (Exception e)
            {
                Debug.LogError(e.Message);
            }
            return result;
        }

        /// <summary>
        /// 金币转化为万和亿，保留两位小数
        /// </summary>
        /// <param name="gold"></param>
        /// <returns></returns>
        public static string GoldReturnStr(Double gold)
        {
            string outStr = "0";
            string tempStr = "";
            if (gold < 10000)
            {
                outStr = gold.ToString();
            }
            else if (gold < 100000000)
            {
                Double tempM = gold / 10000;
                tempStr = tempM.ToString();
                SetStringTo4(ref tempStr);
                outStr = tempStr + Localization.Get("useful ten thousand");
            }
            else
            {
                Double tempM = gold / 100000000;
                tempStr = tempM.ToString();
                SetStringTo4(ref tempStr);
                outStr = tempStr.ToString() + Localization.Get("Golden Text_1");
            }
            return outStr;
        }

        /// <summary>
        /// 设置字符串长度为4
        /// </summary>
        /// <param name="str"></param>
        private static void SetStringTo4(ref string str)
        {
            if (str.IndexOf('.') <= -1)
            {
                if (str.Length <= 4)
                {
                    return;
                }
            }
            else
            {
                if (str.Length <= 5)
                {
                    return;
                }
            }
            int tempPos = str.IndexOf('.');
            if (tempPos > -1)
            {
                if (tempPos == 4)
                {
                    str = str.Substring(0, 4);
                }
                else
                {
                    str = str.Substring(0, 5);
                }
            }
            else
            {
                str = str.Substring(0, 4);
            }
            while (str.EndsWith("0"))
            {
                str = str.Substring(0, str.Length - 1);
                if (str.Length > 1 && str[str.Length - 1].Equals('.'))
                {
                    str = str.Substring(0, str.Length - 1);
                    break;
                }
            }
        }

        public static string FileMD5(string filePath)
        {
            if (File.Exists(filePath) == false)
            {
                return string.Empty;
            }
            try
            {
                FileStream fs = new FileStream(filePath, FileMode.Open);
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] retVal = md5.ComputeHash(fs);
                fs.Close();

                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < retVal.Length; i++)
                {
                    sb.Append(retVal[i].ToString("x2"));
                }
                return sb.ToString();
            }
            catch
            {
                return string.Empty;
            }
        }

        public static int FileSize(string filePath)
        {
            if (File.Exists(filePath) == false)
            {
                return 0;
            }
            try
            {
                FileStream fs = new FileStream(filePath, FileMode.Open);
                int length = (int)fs.Length;
                fs.Close();
                return length;
            }
            catch
            {
                return 0;
            }
        }

        public static string BytesMD5(byte[] bytes)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] retVal = md5.ComputeHash(bytes);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < retVal.Length; i++)
            {
                sb.Append(retVal[i].ToString("x2"));
            }
            return sb.ToString();
        }

        [LuaInterface.LuaByteBuffer]
        public static byte[] OpenFile(string path)
        {
            if (File.Exists(path) == false)
            {
                return null;
            }
            using (var file = File.OpenRead(path))
            {
                if (file != null)
                {
                    byte[] bytes = new byte[file.Length];
                    file.Read(bytes, 0, (int)file.Length);
                    file.Close();
                    file.Dispose();
                    return bytes;
                }
            }
            return null;
        }

        public static bool SaveFile(string path, byte[] buffer)
        {
            if (string.IsNullOrEmpty(path) || buffer == null)
            {
                return false;
            }
            string directory = path.Substring(0, path.IndexOf(Path.GetFileName(path)));
            if (Directory.Exists(directory) == false)
            {
                Directory.CreateDirectory(directory);
            }
            if (File.Exists(path))
            {
                File.Delete(path);
            }
            using (var file = File.Open(path, FileMode.CreateNew))
            {
                if (file != null)
                {
                    file.Write(buffer, 0, buffer.Length);
                    file.Close();
                    file.Dispose();
                    return true;
                }
            }
            return false;
        }

        public static void DeleteFile(string path)
        {
            if (File.Exists(path))
            {
                File.Delete(path);
            }
        }

        public static void DeleteDirectory(string path, bool recursive = true)
        {
            if (Directory.Exists(path))
            {
                Directory.Delete(path, recursive);
            }
        }

        public static void CreateDirectory(string path)
        {
            Directory.CreateDirectory(path);
        }

        public static void CopyDirectory(string srcdir, string desdir, params string[] excludeFileExtension)
        {
            string folderName = srcdir.Substring(srcdir.LastIndexOf("\\") + 1);

            string desfolderdir = desdir + "\\" + folderName;

            if (desdir.LastIndexOf("\\") == (desdir.Length - 1))
            {
                desfolderdir = desdir + folderName;
            }
            string[] filenames = Directory.GetFileSystemEntries(srcdir);

            foreach (string file in filenames)// 遍历所有的文件和目录
            {
                if (Directory.Exists(file))// 先当作目录处理如果存在这个目录就递归Copy该目录下面的文件
                {

                    string currentdir = desfolderdir + "\\" + file.Substring(file.LastIndexOf("\\") + 1);
                    if (!Directory.Exists(currentdir))
                    {
                        Directory.CreateDirectory(currentdir);
                    }

                    CopyDirectory(file, desfolderdir);
                }

                else // 否则直接copy文件
                {
                    string srcfileName = file.Substring(file.LastIndexOf("\\") + 1);

                    bool exclude = false;
                    for (int j = 0; j < excludeFileExtension.Length; j++)
                    {
                        if (srcfileName.EndsWith(excludeFileExtension[j]))
                        {
                            exclude = true;
                            break;
                        }
                    }
                    if (exclude) continue;

                    srcfileName = desfolderdir + "\\" + srcfileName;


                    if (!Directory.Exists(desfolderdir))
                    {
                        Directory.CreateDirectory(desfolderdir);
                    }


                    File.Copy(file, srcfileName);
                }
            }//foreach 
        }

        /// <summary>
        /// 解决AssetBundle.LoadAsset(string,type) 无法映射lua的问题.
        /// </summary>
        /// <param name="assetName"></param>
        /// <param name="type"></param>
        /// <param name="bundle"></param>
        /// <returns></returns>
        public static UnityEngine.Object LoadAssetFromBundle(string assetName, Type type, AssetBundle bundle)
        {
            if (bundle)
            {
                return bundle.LoadAsset(assetName, type);
            }
            return null;
        }

        private static byte[] RGBIV = { 0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF };

        [NoToLua]
        public static string EncryptString(string encryptString, string key)
        {
            try
            {
                byte[] rgbKey = Encoding.UTF8.GetBytes(key);
                byte[] inputByteArray = Encoding.UTF8.GetBytes(encryptString);
                DESCryptoServiceProvider dcsp = new DESCryptoServiceProvider();
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, dcsp.CreateEncryptor(rgbKey, RGBIV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                cs.Close();
                return Convert.ToBase64String(ms.ToArray());
            }
            catch
            {
                return encryptString;
            }
        }

        [NoToLua]
        public static string DecryptString(string decryptString, string key)
        {
            try
            {
                byte[] rgbKey = Encoding.UTF8.GetBytes(key);
                byte[] inputByteArray = Convert.FromBase64String(decryptString);
                DESCryptoServiceProvider dcsp = new DESCryptoServiceProvider();
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, dcsp.CreateDecryptor(rgbKey, RGBIV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                cs.Close();
                return Encoding.UTF8.GetString(ms.ToArray());
            }
            catch
            {
                return decryptString;
            }
        }

        public static void ReleaseMemory(bool mono, bool luajit, bool resource)
        {
            if (mono)
            {
                GC.Collect();
            }
            if (luajit)
            {
                LuaManager.GC();
            }
            if (resource)
            {
                Resources.UnloadUnusedAssets();
            }
        }
    }
}
