/*----------------------------------------------------------------
            // Copyright © 2015 NCSpeedLight
            // 
            // FileName: Helper.cs
			// Describle: 功能性、公用、帮助型函数集
			// Created By:  Neil
			// Date&Time:  2015/4/1 14:34:18
            // Modify History:
            //
//----------------------------------------------------------------*/

#define OPEN_LOG //该定义控制是否打印Log
using System;
//#define OPEN_DEBUG_TOAST //该定义控制是否在打印Log的同时，通过Toast（小弹框）的形式显示出来
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.IO;


namespace NCSpeedLight
{
   


    public delegate void GameObjectCallback(GameObject obj);

    public class Helper
    {

        static float PRECISION = 0.000001f;

        static System.Text.StringBuilder mStrB = new System.Text.StringBuilder();

        public static string Format(string varFormat, params object[] args)
        {
            try
            {
                if (mStrB.Length > 0)
                {
                    mStrB.Remove(0, mStrB.Length);
                }
                mStrB.AppendFormat(varFormat, args);
                return mStrB.ToString();
            }
            catch (Exception e)
            {
                Debug.LogError("help format error: " + e.Message);
                return "";
            }
        }

        public static void AddComponent(string className, GameObject go)
        {
            if (go && string.IsNullOrEmpty(className) == false)
            {
                Type type = Type.GetType(className);
                go.AddComponent(type);
            }
        }


        //指定对象指定的layer;
        //public static void SetLayer(GameObject root, GameScene.LAYER varLayer)
        //{
        //    NGUITools.SetLayer(root, (int)varLayer);
        //    return;
        //    /*
        //    if (root == null) return;

        //    Transform[] all_transform = root.GetComponentsInChildren<Transform>();

        //    foreach (Transform tran in all_transform)
        //    {
        //        tran.gameObject.layer = LayerMask.NameToLayer(layer_name);
        //    }
        //    //*/
        //}


        /**create new object by class str name;*/
        public static System.Object createObjectByString(string className)
        {
            Type type = Type.GetType(className);
            if (type == null)
            {
                Helper.LogError("Helper::createObjectByString str name class is not exist:" + className);
                return null;
            }
            Assembly assembly = Assembly.GetAssembly(type);
            if (assembly == null)
            {
                return null;
            }
            System.Object obj = assembly.CreateInstance(className);
            if (obj == null)
            {
                return null;
            }
            return obj;
        }

        /**convernt(x,y,z) format string to vector3*/
        public static Vector3 stringToVector3(string vector)
        {
            if (string.IsNullOrEmpty(vector))
            {
                return Vector3.zero;
            }

            // vector = FTComponent.DeleteNullChar(vector);

            string v = vector.Substring(1, vector.Length - 2);
            string[] values = v.Split(new string[] { "," }, StringSplitOptions.None);
            if (values.Length == 3)
            {
                return new Vector3(Convert.ToSingle(values[0]), Convert.ToSingle(values[1]), Convert.ToSingle(values[2]));
            }

            return Vector3.zero;
        }



        /**convernt(x,y,z,w) format string to vector3*/
        public static Vector4 stringToVector4(string vector)
        {
            if (string.IsNullOrEmpty(vector))
            {
                return Vector3.zero;
            }

            // vector = FTComponent.DeleteNullChar(vector);

            string v = vector.Substring(1, vector.Length - 2);
            string[] values = v.Split(new string[] { "," }, StringSplitOptions.None);
            if (values.Length == 4)
            {
                return new Vector4(Convert.ToSingle(values[0]), Convert.ToSingle(values[1]), Convert.ToSingle(values[2]), Convert.ToSingle(values[3]));
            }

            return Vector4.zero;
        }


        public static string vector3ToString(Vector3 vec)
        {
            return Format("({0},{1},{2} )", vec.x, vec.y, vec.z);
        }

        public static string vector4ToString(Vector4 vec)
        {
            return Format("({0},{1},{2} ,{3})", vec.x, vec.y, vec.z, vec.w);
        }

        /// <summary>
        ///判断浮点数是否等于0 
        /// </summary>
        /// <returns><c>true</c>, if equal zero was floted, <c>false</c> otherwise.</returns>
        /// <param name="f">F.</param>
        static public bool FlotEqualZero(float f)
        {
            if (Math.Abs(f) < PRECISION)
            {
                return true;
            }
            return false;
        }


        public delegate void ChildDelegate(GameObject child, System.Object userData);
        public static void foreachChildRecursive(GameObject parent, string childName, ChildDelegate del, System.Object userData)
        {
            foreach (Transform t in parent.GetComponentsInChildren<Transform>())
            {
                if (t.gameObject.name == childName)
                {
                    del(t.gameObject, userData);
                }
            }
        }




        public static void splitNum(int num, out List<int> outData)
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



        public static bool equalType<T>(object obj) where T : class
        {
            if (obj.GetType() == typeof(T))
            {
                return true;
            }
            return false;
        }




        static public string getGradeColorStr(int grade)
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
            string head = System.DateTime.Now.ToString();
            str = head + " " + str;
            Debug.Log(str);
#endif
        }

        public static void Log(object str, UnityEngine.Object obj)
        {
#if OPEN_LOG
            string head = System.DateTime.Now.ToString();
            str = head + " " + str;
            Debug.Log(str, obj);
#endif

        }

        public static void LogError(object str)
        {
#if OPEN_LOG
            string head = System.DateTime.Now.ToString();
            str = head + " " + str;
            Debug.LogError(str);
#endif
        }

        public static void LogError(object str, UnityEngine.Object obj)
        {
#if OPEN_LOG
            string head = System.DateTime.Now.ToString();
            str = head + " " + str;
            Debug.LogError(str, obj);
#endif
        }

        public static void LogWarning(object str)
        {
#if OPEN_LOG
            string head = System.DateTime.Now.ToString();
            str = head + " " + str;
            Debug.LogWarning(str);
#endif
        }

        public static void LogWarning(object str, UnityEngine.Object obj)
        {
#if OPEN_LOG
            string head = System.DateTime.Now.ToString();
            str = head + " " + str;
            Debug.LogWarning(str, obj);
#endif
        }

        public static void LogWithToast(object str)
        {
#if OPEN_DEBUG_TOAST
            if (str != null)
            {
                string head = System.DateTime.Now.ToString();
                str = head + " " + str;
                Debug.Log(str);
                WindowManager.GetSingleton().OpenSmallTipsDialog(str.ToString());
            }
#endif
        }

        //调试用，绘制边界，正式发布时一定不能调用该方法，这将非常消耗性能
        public static void DrawBounds(Vector3 center, Vector3 varSize, Color color)
        {
            if (varSize.x * varSize.y * varSize.z <= 0)
            {

                return;
            }
            Vector3 size = varSize * 1 / 2;

            Vector3 a = new Vector3(center.x - size.x, center.y - size.y, center.z + size.z);
            Vector3 b = new Vector3(center.x + size.x, center.y - size.y, center.z + size.z);
            Vector3 c = new Vector3(center.x - size.x, center.y - size.y, center.z - size.z);
            Vector3 d = new Vector3(center.x + size.x, center.y - size.y, center.z - size.z);

            Vector3 e = new Vector3(center.x - size.x, center.y + size.y, center.z + size.z);
            Vector3 f = new Vector3(center.x + size.x, center.y + size.y, center.z + size.z);
            Vector3 g = new Vector3(center.x - size.x, center.y + size.y, center.z - size.z);
            Vector3 h = new Vector3(center.x + size.x, center.y + size.y, center.z - size.z);

            Debug.DrawLine(a, b, color);
            Debug.DrawLine(b, d, color);
            Debug.DrawLine(d, c, color);
            Debug.DrawLine(c, a, color);

            Debug.DrawLine(e, f, color);
            Debug.DrawLine(f, h, color);
            Debug.DrawLine(h, g, color);
            Debug.DrawLine(g, e, color);

            Debug.DrawLine(a, e, color);
            Debug.DrawLine(b, f, color);
            Debug.DrawLine(c, g, color);
            Debug.DrawLine(d, h, color);
        }

        //判断输入是否为中文
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



        //只允许数字或字母的判断
        public static bool isIntergerOrLetter(string content)
        {
            System.Text.RegularExpressions.Regex reg1 = new System.Text.RegularExpressions.Regex(@"^[A-Za-z0-9]+$");
            return reg1.IsMatch(content);
        }
        //把总秒数转成 倒计时00:00:00格式;
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


        //格式化输出钱币类数字.如：123456则显示为123,456;
        public static string MoneyFormatInput(long num)
        {
            string str_num = "0";
            if (num >= 0)
            {
                str_num = Helper.Format("{0:N0}", num);
            }
            return str_num;
        }

        //获取当前时间，毫秒显示;
        public static string GetCurrentTimeWithMillisecond()
        {
            return DateTime.Now.ToString() + ":" + DateTime.Now.Millisecond.ToString();
        }

        //改变图片的显示状态，Isgray=true,则图片设置为灰色,否则设置成白色;
        public static bool ChangeSpriteColor(Transform root, string path, bool Isgray)
        {
            if (root != null)
            {
                Transform tran_sprite = root.Find(path);
                if (tran_sprite != null)
                {
                    return ChangeSpriteColor(tran_sprite, Isgray);
                }
            }
            return false;
        }
        //改变图片的显示状态，Isgray=true,则图片设置为灰色,否则设置成白色;
        public static bool ChangeSpriteColor(Transform varTranSprite, bool Isgray)
        {
            if (varTranSprite != null)
            {
                UISprite tempSprite = varTranSprite.GetComponent<UISprite>();
                if (tempSprite != null)
                {
                    return ChangeSpriteColor(tempSprite, Isgray);
                }
            }

            return false;
        }
        //改变图片的显示状态，Isgray=true,则图片设置为灰色,否则设置成白色;
        public static bool ChangeSpriteColor(UISprite tempSprite, bool Isgray)
        {
            Color changecolor = Color.white;
            if (Isgray)
            {
                changecolor = new Color(0, 0, 0);
            }
            if (tempSprite != null)
            {
                tempSprite.color = changecolor;
                return true;
            }
            return false;
        }





        // 设置Camera要显示的层级;
        public static int OnlyIncluding(params int[] layers)
        {
            return MakeMask(layers);
        }

        public static int EverythingBut(params int[] layers)
        {
            return ~MakeMask(layers);
        }

        static int MakeMask(params int[] layers)
        {
            int mask = 0;
            for (int i = 0; i < layers.Length; i++)
            {
                mask |= 1 << layers[i];
            }
            return mask;
        }
        //设置某个对象的激活状态;
        public static bool SetActiveState(Transform varParent, bool varState)
        {
            if (varParent == null)
            {
                return false;
            }
            varParent.gameObject.SetActive(varState);
            return true;
        }

        //设置某个对象的激活状态;
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

        public static Transform SetParent(Transform varChid, Transform varRoot, string varParentPath, bool worldPositionStavs)
        {
            if (varChid == null || varRoot == null)
            {
                return null;
            }

            Transform tempParent = varRoot.Find(varParentPath);
            if (tempParent != null)
            {
                varChid.SetParent(tempParent, worldPositionStavs);
                return tempParent;
            }
            return null;

        }
        public static Transform SetParent(Transform varChid, Transform varRoot, string varParentPath)
        {
            return SetParent(varChid, varRoot, varParentPath, false);
        }



        //设置某个Label的内容;
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
        //设置某个Label的内容;
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
        //设置某个Sprite对象的图片名字;
        public static UISprite SetSpriteName(Transform varParent, string varPath, string varName)
        {
            if (varParent == null)
            {
                return null;
            }
            Transform tempTran = varParent.Find(varPath);
            return SetSpriteName(tempTran, varName);
        }
        //设置某个Sprite对象的图片名字;
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
        /// <summary>
        /// 获取背景颜色框图片名字.
        /// </summary>
        public static string GetColorBgSpriteName(int varColor)
        {
            string tempSpriteName = string.Empty;
            switch (varColor)
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
        /// <param name="varTrans">Variable trans.</param>
        /// <param name="varPath">Variable path.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
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
        /// 发现文件夹不存在，则创建.
        /// </summary>
        /// <returns><c>true</c>, if directory was created, <c>false</c> otherwise.</returns>
        /// <param name="tempPath">Temp path.</param>
        public static bool CreateDirectory(string tempPath)
        {
            if (!Directory.Exists(tempPath))
            {
                Directory.CreateDirectory(tempPath);
                return true;
            }

            return false;
        }

        /// <summary>
        /// Md5s the file.
        /// </summary>
        /// <returns>The file.</returns>
        /// <param name="varPath">Variable path.</param>
        public static string Md5File(string varPath)
        {
            try
            {
                byte[] bytes = File.ReadAllBytes(varPath);
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
                Helper.LogError(e.Message);
                return null;
            }
        }

        /// <summary>
        /// Ascii码检查字符是不是汉字.
        /// </summary>
        /// <returns><c>true</c>, if chinese was checked, <c>false</c> otherwise.</returns>
        /// <param name="c">C.</param>
        public static bool CheckChinese(char c)
        {
            return ((int)c > 127);
        }




        public static string GetFileNameFromFullPath(string varPath)
        {
            if (string.IsNullOrEmpty(varPath))
            {
                return null;
            };


            string[] paths = varPath.Split(new char[] { '/' });

            if (paths.Length == 0)
            {
                return null;
            }

            return paths[paths.Length - 1];


        }

        /// <summary>
        /// 颜色转字符
        /// </summary>
        /// <param name="varColor"></param>
        /// <returns></returns>
        public static string ColorToString(Color32 varColor)
        {
            string tem = "({0},{1},{2},{3})";
            tem = Helper.Format(tem, varColor.r, varColor.g, varColor.b, varColor.a);
            return tem;
        }

        /// <summary>
        /// 删除字符串中的空格
        /// </summary>
        /// <param name="vector"></param>
        /// <returns></returns>
        public static string DeleteNullChar(string vector)
        {
            if (string.IsNullOrEmpty(vector)) return Vector3.zero.ToString();
            return vector.Replace(" ", "");

        }

        /// <summary>
        /// 字符转颜色
        /// </summary>
        /// <param name="str_color"></param>
        /// <returns></returns>
        public static Color StringToColor(string str_color)
        {
            if (string.IsNullOrEmpty(str_color)) return Color.black;
            str_color = DeleteNullChar(str_color);
            string v = str_color.Substring(1, str_color.Length - 2);
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
        public string ConvertObjName(string objName)
        {
            if (string.IsNullOrEmpty(objName))
            {
                return null;
            }
            string[] temp = objName.Split(new string[] { "(" }, StringSplitOptions.None);
            return temp[0];
        }
        //--------------------------------------------------add by dsq---------------------------------------------------------------------------
        public static float Multiply(float p1x, float p1y, float p2x, float p2y, float p0x, float p0y)
        {
            return ((p1x - p0x) * (p2y - p0y) - (p2x - p0x) * (p1y - p0y));
        }

        public static bool isINRect(Vector3 point, Vector3 v0, Vector3 v1, Vector3 v2, Vector3 v3)
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
        //-----------------------------------------------------------end--------------------------------------------------------------------------------------------------------------

        /// <summary>
        /// 判断某点是否在相机视景体内
        /// </summary>
        /// <param name="varCamera"></param>
        /// <param name="varWorldPos"></param>
        /// <returns></returns>
        public static bool IsInViewPort(Camera varCamera, Vector3 varWorldPos)
        {
            if (varCamera == null)
            {
                return false;
            }
            // 首先判断是否在视野内
            bool b1 = false;
            Vector3 tmpViewPortPos = varCamera.WorldToViewportPoint(varWorldPos);
            Rect tmpRect = new Rect(0, 0, 1, 1);
            b1 = tmpRect.Contains(tmpViewPortPos);

            // 其次判断是否在远近平面内
            bool b2 = false;
            if (tmpViewPortPos.z >= varCamera.nearClipPlane && tmpViewPortPos.z <= varCamera.farClipPlane)
            {
                b2 = true;
            }

            return b1 && b2;
        }

        public static string GetAssetDirectory(string varFullPath)
        {
            if (string.IsNullOrEmpty(varFullPath))
            {
                return string.Empty;
            };
            string[] paths = varFullPath.Split(new char[] { '/' });

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
        /// <param name="varAssetDatabasePath"></param>
        /// <returns></returns>
        public static string GetReleativePathDependOnRes(string varAssetDatabasePath)
        {
            if (string.IsNullOrEmpty(varAssetDatabasePath))
            {
                return string.Empty;
            }
            string[] pathArray = varAssetDatabasePath.Split(new char[] { '/' });
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
        /// <param name="varFinalParentTran"></param>
        /// <param name="varTran"></param>
        /// <param name="varTargetRoot"></param>
        /// <returns></returns>
        public static string GenerateRootPath(Transform varFinalParentTran, Transform varTran, string varTargetRoot)
        {
            if (varFinalParentTran == null || varTran == null)
            {
                return string.Empty;
            }
            if (varFinalParentTran != varTran)
            {
                if (string.IsNullOrEmpty(varTargetRoot))
                {
                    varTargetRoot = varTran.name;
                }
                else
                {
                    varTargetRoot = varTran.name + "/" + varTargetRoot;
                }
                return GenerateRootPath(varFinalParentTran, varTran.parent, varTargetRoot);
            }
            else
            {
                return varTargetRoot;
            }
        }

        public static string GetTypeNameWithoutNamespcae(string varTypeName)
        {
            if (string.IsNullOrEmpty(varTypeName))
            {
                return string.Empty;
            }
            string[] pathArray = varTypeName.Split(new char[] { '.' });
            if (pathArray == null || pathArray.Length == 0)
            {
                return string.Empty;
            }
            return pathArray[pathArray.Length - 1];
        }

        public static List<Type> GetAllSubClass(Type varParentType)
        {
            if (varParentType == null) return null;
            List<Type> types = new List<Type>();
            Assembly ass = Assembly.GetAssembly(varParentType);
            foreach (Type child in ass.GetTypes())
            {
                if (child.BaseType == varParentType)
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
        /// <param name="varPath">Variable path.</param>
        public static bool DeleteDirectory(string varPath)
        {
            bool tempResult = false;
            try
            {
                if (Directory.Exists(varPath) == true)
                {
                    Directory.Delete(varPath, true);
                }
                tempResult = true;
            }
            catch (Exception e)
            {
                Debug.LogError(e.Message);
            }
            return tempResult;
        }

        /// <summary>
        /// 金币转化为万和亿  保留两位小数
        /// </summary>
        /// <param name="varGold"></param>
        /// <returns></returns>
		public static string GoldReturnStr(Double varGold)
        {
            string outStr = "0";
            string tempStr = "";
            if (varGold < 10000)
            {
                outStr = varGold.ToString();
            }
            else if (varGold < 100000000)
            {
                Double tempM = varGold / 10000;
                tempStr = tempM.ToString();
                SetStringTo4(ref tempStr);
                outStr = tempStr + Localization.Get("useful ten thousand");
                //temp = temp.Insert(temp.Length - 3, ".");
            }
            else
            {
                Double tempM = varGold / 100000000;
                tempStr = tempM.ToString();
                SetStringTo4(ref tempStr);
                outStr = tempStr.ToString() + Localization.Get("Golden Text_1");
                //outStr = temp.Insert(temp.Length - 3, ".");
            }
            return outStr;
        }

        //设置字符串长度为4;
        static void SetStringTo4(ref string varStr)
        {
            if (varStr.IndexOf('.') <= -1)
            {
                if (varStr.Length <= 4)
                {
                    return;
                }
            }
            else
            {
                if (varStr.Length <= 5)
                {
                    return;
                }
            }

            //			else if(varStr.Length < 4)
            //			{
            //				if(varStr.IndexOf('.') <= -1)
            //				{
            //					varStr += ".";
            //					for(int i = varStr.Length; i != 5; ++i)
            //					{
            //						varStr += "0";
            //					}
            //				}
            //				else
            //				{
            //					for(int i = varStr.Length; i != 5; ++i)
            //					{
            //						varStr += "0";
            //					}
            //				}
            ////				for(int i = varStr.Length; i != 4; ++i)
            ////				{
            ////					varStr += "0";
            ////				}
            //			}
            //			else
            //			{
            int tempPos = varStr.IndexOf('.');
            if (tempPos > -1)
            {
                if (tempPos == 4)
                {
                    varStr = varStr.Substring(0, 4);
                }
                else
                {
                    varStr = varStr.Substring(0, 5);
                }
            }
            else
            {
                varStr = varStr.Substring(0, 4);
            }

            //			while(varStr.EndsWith("0") || varStr.EndsWith("."))
            //			{
            //				varStr = varStr.Substring(0,varStr.Length -1);
            //				//break;
            //			}
            while (varStr.EndsWith("0"))
            {
                varStr = varStr.Substring(0, varStr.Length - 1);
                if (varStr.Length > 1 && varStr[varStr.Length - 1].Equals('.'))
                {
                    varStr = varStr.Substring(0, varStr.Length - 1);
                    break;
                }
            }
            //				while(varStr.Length != 4)
            //				{
            //					varStr.Remove(varStr.Length - 1);
            //				}
            //				for(int i = varStr.Length; i != 4; --i)
            //				{
            //					varStr.Remove(i);
            //				}
            //			}
        }
    }
}

