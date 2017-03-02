echo "begin export xls to proto"
echo %SystemRoot%

..\python27\python.exe xls-to-proto_encrypts.py  ../../configuration ../../client/Assets/Scripts/Config ../../client/Assets/StreamingAssets/Config language=c# 20.0.0

call dataToByteAndCopy.bat

pause