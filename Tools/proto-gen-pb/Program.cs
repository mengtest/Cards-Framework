using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Diagnostics;

class Program
{
    public const string OUTPUT_DIRECTORY = "Output";
    public const string PROTOC_EXE = "protoc.exe";
    public static void Main(string[] args)
    {
        GeneratePBFile();
        MergePBFile();
    }

    private static void GeneratePBFile()
    {
        string outputPath = OUTPUT_DIRECTORY + "/PB";
        try
        {
            if (Directory.Exists(outputPath))
            {
                Directory.Delete(outputPath, true);
                Directory.CreateDirectory(outputPath);
            }
            else
            {
                Directory.CreateDirectory(outputPath);
            }
        }
        catch (Exception e) { Console.Write(e.Message); }
        string[] protoFiles = Directory.GetFiles("Proto", "*.txt");
        if (protoFiles != null && protoFiles.Length > 0)
        {
            for (int i = 0; i < protoFiles.Length; i++)
            {
                string filePath = protoFiles[i];
                if (File.Exists(filePath) == false)
                {
                    continue;
                }
                string fileName = Path.GetFileName(filePath);
                string outFileName = Path.GetFileNameWithoutExtension(fileName) + ".bytes";
                string cmd = "--descriptor_set_out=./{0}/{1} ./{2}";
                cmd = string.Format(cmd, outputPath, outFileName, "Proto/" + fileName);
                Process.Start(PROTOC_EXE, cmd);
            }
        }
    }

    private static void MergePBFile()
    {
        string pbmessageFile = OUTPUT_DIRECTORY + "/PBMessage.pb";
        if (File.Exists(pbmessageFile))
        {
            File.Delete(pbmessageFile);
        }
        using (var file = File.Open(pbmessageFile, FileMode.CreateNew))
        {
            BinaryWriter writer = new BinaryWriter(file);
            string[] pbFiles = Directory.GetFiles("Output/PB", "*.bytes");
            if (pbFiles != null && pbFiles.Length > 0)
            {
                for (int i = 0; i < pbFiles.Length; i++)
                {
                    string filePath = pbFiles[i];
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
}
