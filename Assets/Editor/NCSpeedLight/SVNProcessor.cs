/*----------------------------------------------------------------
           // Copyright © 2014-2017 NCSpeedLight
           // 
           // FileName: SVNProcessor.cs
           // Describle: SVN外部进程链接
           // Created By:  Wells Hsu
           // Date&Time:  2016/1/19 10:03:15
           // Modify History:
           //
//----------------------------------------------------------------*/

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEngine;

public class SVNProcessor
{
    private static List<string> mDrivers = new List<string>() { "c:", "d:", "e:", "f:" };
    private static string mSvnPath = @"\Program Files\TortoiseSVN\bin\";
    private static string mSvnProc = @"TortoiseProc.exe";
    private static string mSvnProcPath = "";

    [MenuItem("Assets/SVN Update")]
    public static void UpdateFromSVN()
    {
        if (string.IsNullOrEmpty(mSvnProcPath))
            mSvnProcPath = GetSvnProcPath();
        var dir = new DirectoryInfo(Application.dataPath);
        var path = dir.Parent.FullName.Replace('/', '\\');
        var para = "/command:update /path:\"" + path + "\" /closeonend:0";
        System.Diagnostics.Process.Start(mSvnProcPath, para);
    }

    [MenuItem("Assets/SVN Commit")]
    public static void CommitToSVN()
    {
        if (string.IsNullOrEmpty(mSvnProcPath))
            mSvnProcPath = GetSvnProcPath();
        var path = Application.dataPath.Replace('/', '\\');
        var para = "/command:commit /path:\"" + path + "\"";
        System.Diagnostics.Process.Start(mSvnProcPath, para);
    }

    private static string GetSvnProcPath()
    {
        foreach (var item in mDrivers)
        {
            var path = string.Concat(item, mSvnPath, mSvnProc);
            if (File.Exists(path))
                return path;
        }
        return EditorUtility.OpenFilePanel("Select TortoiseProc.exe", "c:\\", "exe");
    }
}
