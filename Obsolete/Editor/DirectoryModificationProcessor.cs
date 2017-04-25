using System.IO;
using System.Collections.Generic;

public class DirectoryModificationProcessor
{
    static readonly Dictionary<string, FileSystemWatcher> m_Listeners = new Dictionary<string, FileSystemWatcher>();

    public DirectoryModificationProcessor(string directory, FileSystemEventHandler handler)
    {
        CreateWatch(directory, handler);
    }

    void CreateWatch(string directory, FileSystemEventHandler handler)
    {
        if (m_Listeners.ContainsKey(directory))
        {
            m_Listeners[directory].Dispose();
            m_Listeners[directory] = null;
        }

        if (!Directory.Exists(directory)) return;

        var watcher = new FileSystemWatcher();
        watcher.IncludeSubdirectories = false; 
        watcher.Path = directory;
        watcher.NotifyFilter = NotifyFilters.LastWrite;
        watcher.Filter = "*";
        watcher.Changed += handler;
        watcher.EnableRaisingEvents = true;
        watcher.InternalBufferSize = 10240;

        m_Listeners[directory] = watcher;

        foreach (var childDirPath in Directory.GetDirectories(directory))
        {
            CreateWatch(childDirPath, handler);
        }
    }
}
