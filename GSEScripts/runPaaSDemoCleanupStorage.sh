# !/bin/sh
#
if [ $# -lt 3 ]
then
	echo "Usage: runPaasDemoCleanupStorage.sh <username> <password> <identity domain>" 
	exit 1
fi
java -server -classpath ./OPCSupport/ManageStorage/deploy/ManageStorage.jar:./OracleCloudStorageAPI/lib/jersey-client-1.13.jar:./OracleCloudStorageAPI/lib/jersey-core-1.13.jar:./OracleCloudStorageAPI/lib/jersey-json-1.13.jar:./OracleCloudStorageAPI/lib/jersey-multipart-1.13.jar:./OracleCloudStorageAPI/lib/jettison-1.1.jar:./OracleCloudStorageAPI/lib/mimepull-1.9.3.jar:./OracleCloudStorageAPI/lib/oracle.cloud.storage.api-13.0.0.jar -Djavax.net.ssl.trustStore=./trustStore.jks nassoleng.oracle.DeleteStorageContainer $1 $2 $3 PaaSDemoCleanup

