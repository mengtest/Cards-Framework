import os
import sys
from datetime import datetime
from configobj import ConfigObj, Section
from xlrd import * #open_workbook
import plistlib
from copy import copy, deepcopy
import types
import struct
import win32api
import win32com.shell.shell as shell
import win32event
import shutil
import json


TYPE_DOUBLE         = 1
TYPE_FLOAT          = 2
TYPE_INT64          = 3
TYPE_UINT64         = 4
TYPE_INT32          = 5
TYPE_FIXED64        = 6
TYPE_FIXED32        = 7
TYPE_BOOL           = 8
TYPE_STRING         = 9
TYPE_GROUP          = 10
TYPE_MESSAGE        = 11
TYPE_BYTES          = 12
TYPE_UINT32         = 13
TYPE_ENUM           = 14
TYPE_SFIXED32       = 15
TYPE_SFIXED64       = 16
TYPE_SINT32         = 17
TYPE_SINT64         = 18

LABEL_OPTIONAL      = 1
LABEL_REQUIRED      = 2
LABEL_REPEATED      = 3
MAX_LABEL           = 3

LANGUAGE_CPP = "language=cpp"
LANGUAGE_LUA = "language=lua"
LANGUAGE_CSHARP = "language=c#"

class Converter(object):

    def __init__(self, config_file, pbPath, destPath, dataOutPath, language, proto):

        self.xlsPath = config_file

        self.readXLS()

        sys.path.append(pbPath)
        #print pbPath
        py_proto = proto + '_pb2'
        #print py_proto
        self.pbModel = __import__(py_proto)
        self.pbName = proto

        self.xlsName = os.path.basename(config_file)
        self.xlsName = os.path.splitext(self.xlsName)[0]
        #print self.xlsName

        pbDataPath = "{}/{}.data".format(dataOutPath, self.xlsName)
        self.file = open(pbDataPath, "wb")
        self.destPath = destPath
        self.language = language

    def readXLS(self):

        self.xls = open_workbook(self.xlsPath, on_demand=True)

    def convert(self):
        sheet =  self.xls.sheet_by_index(0)
        #print sheet.name
        cell_key = sheet.cell(0, 1)

        if cell_key.ctype != XL_CELL_TEXT:
            #print "error key type is not text"
            return

        message_names = []
        for col_index in range(1,sheet.ncols):
            message_names.append(sheet.cell(2, col_index).value)
        #for index in range(len(message_names)):
            ##print message_names[index]

        isLanguageConfig = False;
        if os.path.basename(self.xlsPath) == "Language.xls":
            isLanguageConfig = True;

        #print "isLanguageConfig"
        #print isLanguageConfig

        languageKey = []
        keyPbType = -1
        for row in range(3, sheet.nrows, 1):
            func = getattr(self.pbModel, self.pbName)
            config = func()
            if keyPbType == -1:
                keyPbType = getPBType(config.DESCRIPTOR.fields, cell_key.value)
                #print "keyPbType"
                #print keyPbType
            ##print config.DESCRIPTOR
            for col_index in range(1, sheet.ncols):
                 cell = sheet.cell(row, col_index)
                 filed = getattr(config, message_names[col_index - 1])
                 pbType = getPBType(config.DESCRIPTOR.fields, message_names[col_index - 1])
                 pbLabel = getPBLable(config.DESCRIPTOR.fields, message_names[col_index - 1])
                 #print cell.value

                 if isLanguageConfig and message_names[col_index - 1] == cell_key.value:
                     languageKey.append(cell.value)

                 if pbLabel == LABEL_REPEATED:
                     if cell.ctype == XL_CELL_EMPTY:
                         ##print "get empty text"
                         continue
                     if cell.ctype == XL_CELL_TEXT and cell.value == '':
                         #print "get empty text"
                         continue

                     append = getattr(filed, "append")
                     if cell.ctype == XL_CELL_TEXT:
                        values = cell.value.split(';')
                        for i in range(len(values)):
                            #print  values[i]
                            if values[i] == '':
                                #print 'empty value, skipped'
                                continue
                            append(valueToPbType(values[i], pbType))
                     else:
                         append(valueToPbType(cell.value, pbType))
                 else:
                     setattr(config,  message_names[col_index - 1], valueToPbType(cell.value, pbType))
                     #filed = valueToPbType(cell.value, pbType)
                     ##print filed
            #print config
            pbString = config.SerializeToString()
            #print "buffer len"
            #print len(pbString)
            self.file.write(struct.pack('i', len(pbString)))
            self.file.write(pbString)
            #print len(pbString)
            #print "ok"


        if isLanguageConfig == True:
            key_file = open("{}/LanguageKey.cs".format(self.destPath), "w");
            key_file.write("using System;\n")
            key_file.write("public class LanguageKey\n")
            key_file.write("{\n")
            for index in range(len(languageKey)):
                key_file.write("    public const string " + languageKey[index] + ' = "{0}";'.format(languageKey[index]) + '\n')
            key_file.write("}")
            key_file.close()

        if self.language == LANGUAGE_CSHARP:
            r_file = open("configLoaderTemplate.cs", "r")
            loaderTemplate = r_file.read()
            r_file.close()
        elif self.language == LANGUAGE_CPP:
            r_file = open("configLoaderTemplate.cpp", "r")
            loaderTemplate = r_file.read()
            r_file.close()

            r_file = open("configLoaderTemplate.h", "r")
            loaderTemplate_h = r_file.read()
            r_file.close()

        if self.language == LANGUAGE_CSHARP:
            fileName = "{0}Loader.cs".format(self.xlsName)
            w_file = open("{}/{}".format(self.destPath, fileName), "w")
            loaderTemplate = loaderTemplate.replace("configLoaderTemplate", "{0}Loader".format(self.xlsName))
            loaderTemplate = loaderTemplate.replace("TemplateConfig", "{0}".format(self.pbName))
            loaderTemplate = loaderTemplate.replace("TemplateKey", "config.{0}".format(cell_key.value))
            w_file.write(loaderTemplate)
            w_file.close()
        elif self.language == LANGUAGE_CPP:
            fileName = "{0}Loader.cpp".format(self.xlsName)
            w_file = open("{}/{}".format(self.destPath, fileName), "w")
            loaderTemplate = loaderTemplate.replace("configLoaderTemplate", "{0}Loader".format(self.xlsName))
            loaderTemplate = loaderTemplate.replace("TemplateConfig", "{0}".format(self.pbName))
            loaderTemplate = loaderTemplate.replace("TemplateKey", "{0}".format(getKeyPBType(keyPbType)))
            loaderTemplate = loaderTemplate.replace("key()", "{0}()".format(cell_key.value))
            w_file.write(loaderTemplate)
            w_file.close()

            fileName = "{0}Loader.h".format(self.xlsName)
            w_file = open("{}/{}".format(self.destPath, fileName), "w")
            loaderTemplate_h = loaderTemplate_h.replace("__CONFIGLOADERTEMPLATE_H__", "__{0}_H__".format(self.xlsName.upper()))
            loaderTemplate_h = loaderTemplate_h.replace("configLoaderTemplate", "{0}Loader".format(self.xlsName))
            loaderTemplate_h = loaderTemplate_h.replace("TemplateConfig", "{0}".format(self.pbName))
            loaderTemplate_h = loaderTemplate_h.replace("TemplateKey", "{0}".format(getKeyPBType(keyPbType)))
            w_file.write(loaderTemplate_h)
            w_file.close()
        elif self.language == LANGUAGE_LUA:
            print "do not support lua language"
        else:
            print "language is invalid"

        # for col_index in range(sheet.ncols):
        #     for row in range(1, sheet.nrows, 1):
        #         cell = sheet.cell(row, col_index)
        #         if cell.ctype == XL_CELL_BOOLEAN:
        #             #print "XL_CELL_BOOLEAN"
        #         elif cell.ctype == XL_CELL_NUMBER:
        #             #print "XL_CELL_NUMBER"
        #         elif cell.ctype == XL_CELL_DATE:
        #             #print "XL_CELL_NUMBER"
        #         elif cell.ctype == XL_CELL_TEXT:
        #             #print "XL_CELL_TEXT"
        #         elif cell.ctype == XL_CELL_TEXT:
        #             #print "XL_CELL_TEXT"
        #         elif cell.ctype == XL_CELL_BLANK:
        #             #print "XL_CELL_BLANK"

        # for row_index in range(sheet.nrows):
        #     for col_index in range(sheet.ncols):
        #         #print cellname(row_index,col_index),'-',
        #         #print sheet.cell(row_index,col_index).value

def getPBLable(fields, fieldName):
    for index in range(len(fields)):
        if fields[index].name == fieldName:
            return fields[index].label
    return -1

def getPBType(fields, fieldName):
    for index in range(len(fields)):
        if fields[index].name == fieldName:
            return fields[index].type

    return -1

def getKeyPBType(pbType):
    if pbType == TYPE_DOUBLE:
        return "double"

    if pbType == TYPE_FLOAT:
        return "float"

    if pbType == TYPE_INT32:
        return "int"

    if pbType == TYPE_INT64:
        return "long"

    if pbType == TYPE_STRING:
        return "std::string"

    if pbType == TYPE_BOOL:
        return "bool"

def valueToPbType(value, pbType):
    if pbType == TYPE_DOUBLE or pbType == TYPE_FLOAT:
        return float(value)

    if pbType == TYPE_INT32:
        return int(value)

    if pbType == TYPE_INT64:
        return long(value)

    if pbType == TYPE_STRING:
        t = type(value)
        if t != types.StringType and t != types.UnicodeType:
            if value == None:
                return ""
            else:
                return str(value)
        else:
            return value

    if pbType == TYPE_BOOL:
        return bool(int(value))

def isRepteatType(filed):
    t = type(filed)

    if t != types.StringType and t != types.IntType and t != types.FloatType and t != types.UnicodeType:
        return True

    return False

def process(srcPath, destPath, dataOutPath):
    jsonFile = open(srcPath, "r")
    content = jsonFile.read()
    decoded = json.loads(content)
    path = os.path.dirname(srcPath)
    #python pb
    txt = os.path.splitext(srcPath)
    protoName = txt[0] + '.proto'
    #print protoName
    os.chdir("./proto")
    param = '{} --proto_path={} --python_out={}'
    cmd = param.format(protoName, path, '../out')
    #print "cmd"
    #print cmd
    exePath = "{}\\protoc.exe".format(os.getcwd())
    dict = shell.ShellExecuteEx(fMask = 256 + 64, lpFile=exePath, lpParameters=cmd)
    hh = dict['hProcess']
    ret = win32event.WaitForSingleObject(hh, -1)
    os.chdir("../")
    pbPath = "{}/out".format(os.getcwd())
    sys.path.append(pbPath)
    #print pbPath
    baseName = os.path.basename(protoName)
    pbModelName = os.path.splitext(baseName)[0]
    py_proto = pbModelName + '_pb2'
    print py_proto
    pbModel = __import__(py_proto)

    func = getattr(pbModel, pbModelName) 

    output = open(dataOutPath + '/' + pbModelName + ".txt", "wb+")

    srcProto = "{}".format(os.path.join(srcPath, protoName))
    destProto = "../ProtoGen/{}".format(protoName)
    #print "srcProto"
    #print srcProto
    #print os.getcwd()
    shutil.copy(srcProto, "./ProtoGen/")
    param = "-i:{}.proto -o:{}.cs -ns:Configuration".format(pbModelName, pbModelName)
    exePath = "{}\\ProtoGen\\protogen.exe".format(os.getcwd())
    #print exePath
    os.chdir("./ProtoGen")
    #print param
    dict = shell.ShellExecuteEx(fMask = 256 + 64, lpFile=exePath, lpParameters=param)
    hh = dict['hProcess']
    ret = win32event.WaitForSingleObject(hh, -1)
    destCSFile = "{}/{}.cs".format(destPath, pbModelName)
    if os.path.isfile(destCSFile):
        os.remove(destCSFile)
    shutil.move("{}.cs".format(pbModelName), destPath)
    os.chdir("../")

    pbPath = "{}/out".format(os.getcwd())

    index = 0

    for item in decoded:
        name = item["name"]
        includs = item["includs"]
        dependAssets = item["dependAssets"]
        includeGUIDs = item["includeGUIDs"]
        dependGUIDs = item["dependGUIDs"]
        sceneBundle = item["sceneBundle"]
        priority = item["priority"]
        parent = item["parent"]
        children = item["children"]

        config = func()
        ##print config
        pbType = getPBType(config.DESCRIPTOR.fields, "name")
        setattr(config,  "name", valueToPbType(name, pbType))

        pbType = getPBType(config.DESCRIPTOR.fields, "parent")
        setattr(config,  "parent", valueToPbType(parent, pbType))

        #print config
        pbString = config.SerializeToString()
        #print pbString
        #print "buffer len"
        print len(pbString)
        #print len(struct.pack('i', len(pbString)))
        length = struct.pack('i', len(pbString))
        print repr(length)
        output.write(length)
        output.write(pbString)
        #print len(pbString)
        print "ok"
        ##print name
        ##print children
    output.close()

    r_file = open("configLoaderTemplate.cs", "r")
    loaderTemplate = r_file.read()
    r_file.close()

    fileName = "{0}Loader.cs".format(pbModelName)
    w_file = open("{}/{}".format(destPath, fileName), "w+")
   
    loaderTemplate = loaderTemplate.replace("configLoaderTemplate", "{0}Loader".format(pbModelName))
    loaderTemplate = loaderTemplate.replace("TemplateConfig", "{0}".format(pbModelName))
    loaderTemplate = loaderTemplate.replace("TemplateKey", "config.{0}".format("name"))
    w_file.write(loaderTemplate)
    w_file.close()

def main(args):
    # if len(sys.argv) > 1:
    #     config_file = sys.argv[1]
    # else:
    #     config_file = "default.xls"
    # if not os.path.isfile(config_file):
    #     #print "Configuration file '%s' not found" % (config_file)
    #     quit()
    src = os.path.abspath(sys.argv[1])
    dest = os.path.abspath(sys.argv[2])
    dataOutPath = os.path.abspath(sys.argv[3])

    process(src, dest, dataOutPath)

    # converter = Converter(config_file)
    #
    # converter.convert()

    # setattr(config, "id", 5)
    # #print config.id
    #
    # noCheckIds = getattr(config, "noCheckIds")
    #
    # if isRepteatType(noCheckIds):
    #     append = getattr(noCheckIds, "append")
    #     append(3)
    #
    # config.noCheckIds.append(1)
    # config.noCheckIds.append(2)
    # #print config.noCheckIds
    # isRepteatType(config.noCheckIds)
    # if type(config.name) == types.IntType:
    #     #print 'is Int type'
    # elif type(config.name) == types.StringType:
    #     #print 'is string type'
    # elif type(config.name) == types.FloatType:
    #     #print 'is float type'
    # elif type(config.name) == types.UnicodeType:
    #     #print 'is unicode type'
    # #print type(config.noCheckIds)
    # #print type(config.name)
    # #print type('abdcsd')

if __name__ == '__main__':
    main(sys.argv)