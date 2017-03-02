echo "begin export xls to proto"

echo %SystemRoot%

..\Python27\python.exe json-to-proto.py ../../configuration/ShopBundleData.txt ../../client/Assets/Scripts/Config ../../client/Assets/StreamingAssets/

pause