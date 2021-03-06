﻿using System;
using System.IO;
using System.Diagnostics;
using System.Collections.Generic;
using System.Threading;

class Program
{
    public const string OUTPUT_DIRECTORY = "./";
    public const string PROTOC_EXE = "protoc.exe";
    public const string COPY_TARGET_DIRECTORY = "..//..//..//..//Assets/Scripts/Lua/NCSpeedLight/Protocol/";
    public const string PB_FILE_NAME = "PBMessage.pb";
    public const string PB_MESSAGE_FILE_NAME = "PBMessage.lua";
    public const string GAME_MESSAGE_FILE_NAME = "GameMessage.lua";
    public const string USER_MESSAGE_FILE_NAME = "..//include//usermessage.h";
    public const string SERVER_PROTO_DIRECTORY = "..//protoc//proto//";
    public const string CONFIG_PROTO_DIRECTORY = "Config";
    public const string TEMP_PB_FILE_DIRECTORY = "./Temp/";
    public static void Main(string[] args)
    {
        GenPBFile();
        GenGameMessage();
        GenPBMessage();
        //CopyFiles();
    }

    private static void GenPBFile()
    {
        try
        {
            if (Directory.Exists(TEMP_PB_FILE_DIRECTORY))
            {
                Directory.Delete(TEMP_PB_FILE_DIRECTORY, true);
                Directory.CreateDirectory(TEMP_PB_FILE_DIRECTORY);
            }
            else
            {
                Directory.CreateDirectory(TEMP_PB_FILE_DIRECTORY);
            }
        }
        catch (Exception e) { Console.Write(e.Message); }
        string[] serverProtoFiles = Directory.GetFiles(SERVER_PROTO_DIRECTORY, "*.txt");
        string[] configProtoFiles = Directory.GetFiles(CONFIG_PROTO_DIRECTORY, "*.txt");
        List<string> protoFiles = new List<string>();
        protoFiles.AddRange(serverProtoFiles);
        protoFiles.AddRange(configProtoFiles);
        if (protoFiles != null && protoFiles.Count > 0)
        {
            for (int i = 0; i < protoFiles.Count; i++)
            {
                string filePath = protoFiles[i];
                if (File.Exists(filePath) == false)
                {
                    continue;
                }
                string fileName = Path.GetFileName(filePath);
                string outFileName = Path.GetFileNameWithoutExtension(fileName) + ".bytes";
                filePath = filePath.Replace("//", "/");
                filePath = filePath.Replace("\\", "/");
                string protoPath = filePath;
                int index = protoPath.LastIndexOf("/");
                if (index > 0)
                {
                    protoPath = protoPath.Substring(0, index);
                }
                // 使用相对路径时，必须设置proto_path，否则无法定位proto文件的位置。
                string cmd = "--proto_path=./{0} --descriptor_set_out=./{1}/{2} ./{3}";
                cmd = string.Format(cmd, protoPath, TEMP_PB_FILE_DIRECTORY, outFileName, filePath);
                Process.Start(PROTOC_EXE, cmd);
            }
        }
        Thread.Sleep(1000);
        MergePBFile();
    }

    private static void MergePBFile()
    {
        string pbmessageFile = OUTPUT_DIRECTORY + PB_FILE_NAME;
        if (File.Exists(pbmessageFile))
        {
            File.Delete(pbmessageFile);
        }
        using (var file = File.Open(pbmessageFile, FileMode.CreateNew))
        {
            BinaryWriter writer = new BinaryWriter(file);
            string[] pbFiles = Directory.GetFiles(TEMP_PB_FILE_DIRECTORY, "*.bytes");
            if (pbFiles != null && pbFiles.Length > 0)
            {
                for (int i = 0; i < pbFiles.Length; i++)
                {
                    string filePath = pbFiles[i];
                    if (filePath.Contains("loginRecord"))
                    {
                        int a = 2;
                    }
                    if (File.Exists(filePath) == false)
                    {
                        continue;
                    }
                    byte[] bytes = File.ReadAllBytes(filePath);
                    writer.Write(bytes);
                }
            }
            file.Close();
        }
    }

    private static void GenGameMessage()
    {
        string userMessageFilePath = USER_MESSAGE_FILE_NAME;
        if (File.Exists(userMessageFilePath) == false)
        {
            return;
        }
        string gameMessasgeFilePath = OUTPUT_DIRECTORY + GAME_MESSAGE_FILE_NAME;
        if (File.Exists(gameMessasgeFilePath))
        {
            File.Delete(gameMessasgeFilePath);
        }
        using (var gameMessageFile = File.Open(gameMessasgeFilePath, FileMode.Create))
        {
            StreamWriter sw = new StreamWriter(gameMessageFile);
            sw.WriteLine("-- Auto generated by proto-gen-pb.exe");
            sw.WriteLine();

            using (var file = File.OpenText(userMessageFilePath))
            {
                int lastEnumIndex = -1;
                bool beginParse = false;
                while (file.EndOfStream == false)
                {
                    string line = file.ReadLine();
                    if (line.StartsWith("enum"))
                    {
                        if (beginParse)
                        {
                            sw.WriteLine("}");
                            sw.WriteLine();
                        }

                        string structName = line.Replace("\t", "");
                        structName = structName.Replace(" ", "");
                        structName = structName.Replace("{", "");
                        int index = structName.IndexOf('/');
                        if (index > 0)
                        {
                            structName = structName.Substring(0, index);
                        }
                        structName = structName.Replace("/", "");
                        structName = structName.Substring(4, structName.Length - 4);
                        sw.WriteLine(structName + " = ");
                        sw.WriteLine("{");
                        beginParse = true;
                        lastEnumIndex = -1;// reset enum value.
                        continue;
                    }

                    if (line.StartsWith("/") || string.IsNullOrEmpty(line)
                        || line.StartsWith("{") || line.StartsWith("}")
                        || line.Replace(" ", "").StartsWith("*") || line.Replace(" ", "").StartsWith("/")
                        || beginParse == false)
                    {
                        continue;
                    }
                    string messageName = string.Empty;
                    messageName = line;
                    messageName = messageName.Replace("\t", "");
                    messageName = messageName.Replace(" ", "");
                    if (string.IsNullOrEmpty(messageName))
                    {
                        continue;
                    }
                    int index1 = messageName.IndexOf('/');
                    if (index1 == 0)
                    {
                        continue;
                    }
                    if (index1 > 0)
                    {
                        messageName = messageName.Substring(0, index1);
                    }
                    messageName = messageName.Replace("/", "");

                    int enumIndex;

                    int index2 = messageName.IndexOf("=");
                    int index3 = messageName.IndexOf(",");
                    if (index2 > 0)
                    {
                        string enumIndexStr = messageName.Substring(index2 + 1, index3 - index2 - 1);
                        enumIndexStr = enumIndexStr.Replace(" ", "");
                        int.TryParse(enumIndexStr, out enumIndex);
                        messageName = messageName.Substring(0, index2);
                    }
                    else
                    {
                        enumIndex = lastEnumIndex + 1;
                    }
                    lastEnumIndex = enumIndex;
                    messageName = messageName.Replace(",", "");
                    sw.WriteLine("\t" + messageName + " = " + enumIndex + ",");
                }
                file.Close();
            }
            sw.WriteLine("}");
            sw.Close();
        }
    }

    private static void GenPBMessage()
    {
        string pbmessasgeFilePath = OUTPUT_DIRECTORY + PB_MESSAGE_FILE_NAME;
        if (File.Exists(pbmessasgeFilePath))
        {
            File.Delete(pbmessasgeFilePath);
        }
        using (var pbmessageFile = File.Open(pbmessasgeFilePath, FileMode.Create))
        {
            StreamWriter sw = new StreamWriter(pbmessageFile);
            sw.WriteLine("-- Auto generated by proto-gen-pb.exe");
            sw.WriteLine();
            sw.WriteLine("PBMessage =");
            sw.WriteLine("{");
            string[] serverProtoFiles = Directory.GetFiles(SERVER_PROTO_DIRECTORY, "*.txt");
            string[] configProtoFiles = Directory.GetFiles(CONFIG_PROTO_DIRECTORY, "*.txt");
            List<string> protoFiles = new List<string>();
            protoFiles.AddRange(serverProtoFiles);
            protoFiles.AddRange(configProtoFiles);
            if (protoFiles != null && protoFiles.Count > 0)
            {
                for (int i = 0; i < protoFiles.Count; i++)
                {
                    string filePath = protoFiles[i];
                    if (File.Exists(filePath) == false)
                    {
                        continue;
                    }
                    using (var file = File.OpenText(filePath))
                    {
                        while (file.EndOfStream == false)
                        {
                            string line = file.ReadLine();
                            string messageName = string.Empty;
                            if (line.StartsWith("message"))
                            {
                                messageName = line.Replace("message", "");
                                messageName = messageName.Replace("\t", "");
                                messageName = messageName.Replace("{", "");
                                int index = messageName.IndexOf('/');
                                if (index > 0)
                                {
                                    messageName = messageName.Substring(0, index);
                                }
                                messageName = messageName.Replace("/", "");
                                messageName = messageName.Replace(" ", "");
                                sw.WriteLine("\t" + messageName + " = " + '"' + messageName + '"' + ",");
                            }
                        }
                        file.Close();
                    }
                }
            }
            sw.WriteLine("}");
            sw.Close();
            pbmessageFile.Close();
        }
    }

    private static void CopyFiles()
    {
        string pbFile = OUTPUT_DIRECTORY + PB_FILE_NAME;
        string pbmessageFile = OUTPUT_DIRECTORY + PB_MESSAGE_FILE_NAME;
        if (File.Exists(pbFile))
        {
            File.Copy(pbFile, COPY_TARGET_DIRECTORY + PB_FILE_NAME, true);
        }
        if (File.Exists(pbmessageFile))
        {
            File.Copy(pbmessageFile, COPY_TARGET_DIRECTORY + PB_MESSAGE_FILE_NAME, true);
        }
    }
}
