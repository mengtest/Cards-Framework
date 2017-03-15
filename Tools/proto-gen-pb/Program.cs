using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

class Program
{
    public const string PROTO_FILE_DIRECTORY = "C:/Users/威/Desktop/客户端热更新/protoc-gen-lua/public/protoc/proto";
    public const string PB_PROTO_FILE_NAME = "C:/Users/威/Desktop/客户端热更新/protoc-gen-lua/public/protoc/proto/PBMessage.proto";
    static void Main(string[] args)
    {
        string[] filePaths = Directory.GetFiles(PROTO_FILE_DIRECTORY, "*txt");
        if (File.Exists(PB_PROTO_FILE_NAME))
        {
            File.Delete(PB_PROTO_FILE_NAME);
        }
        FileStream pbFile = File.Create(PB_PROTO_FILE_NAME);
        StringWriter sw = new StringWriter();
        if (filePaths != null && filePaths.Length > 0)
        {
            for (int i = 0; i < filePaths.Length; i++)
            {
                string filePath = filePaths[i];
                if (File.Exists(filePath) == false)
                {
                    continue;
                }
                using (var file = File.Open(filePath, FileMode.Open))
                {
                    byte[] bytes = new byte[file.Length];
                    file.Read(bytes, 0, (int)file.Length);
                }
            }
        }
    }
}
