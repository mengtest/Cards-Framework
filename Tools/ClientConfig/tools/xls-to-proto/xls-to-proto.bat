echo "begin export xls to proto"

echo %SystemRoot%

..\python27\python.exe xls-to-proto.py ../../configuration ../../client/Assets/UncompressData/Scripts/Config ../../client/Assets/UncompressData/StreamingAssets/Config language=c#

pause