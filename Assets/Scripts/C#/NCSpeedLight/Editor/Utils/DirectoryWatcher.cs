using UnityEngine;
using UnityEditor;
using System.IO;
using System.Collections.Generic;
using System;
using ICSharpCode.SharpZipLib.Zip;
using UnityEditor.Callbacks;

namespace NCSpeedLight
{
    public class DirectoryWatcher
    {
        private static readonly Dictionary<string, FileSystemWatcher> watchers = new Dictionary<string, FileSystemWatcher>();

        /// <summary>
        /// 监视一个目录，如果有修改则触发事件函数, 包含其子目录！
        /// <para>使用更大的buffer size确保及时触发事件</para>
        /// <para>不用includesubdirect参数，使用自己的子目录扫描，更稳健</para>
        /// </summary>
        /// <param name="directory"></param>
        /// <param name="handler"></param>
        /// <returns></returns>
        public DirectoryWatcher(string directory, FileSystemEventHandler handler)
        {
            CreateWatch(directory, handler);
        }

        void CreateWatch(string directory, FileSystemEventHandler handler)
        {
            if (watchers.ContainsKey(directory))
            {
                watchers[directory].Dispose();
                watchers[directory] = null;
            }

            if (!Directory.Exists(directory)) return;

            var watcher = new FileSystemWatcher();
            watcher.IncludeSubdirectories = false;//includeSubdirectories;
            watcher.Path = directory;
            watcher.NotifyFilter = NotifyFilters.LastWrite;
            watcher.Filter = "*";
            watcher.Changed += handler;
            watcher.EnableRaisingEvents = true;
            watcher.InternalBufferSize = 10240;
            //return watcher;
            watchers[directory] = watcher;

            foreach (var childDirPath in Directory.GetDirectories(directory))
            {
                CreateWatch(childDirPath, handler);
            }
        }
    }
}
