#~/sign.sh work dir map
#  sign.sh
#
#─jar
#      signapk.jar
#
#─key
#      platform.pk8
#      platform.x509.pem
#      Readme
#
#─lib
#     libconscrypt_openjdk_jni.so
#
#─lib64
#       libconscrypt_openjdk_jni.so

#define keyname use for sign here.
keyname=platform

Usage() {
	echo "Sign a package tools from andorid."
	echo "Usage:"
    echo "$0 [--package | --help ]"
	echo "--package: sign the package pass into, and output the signed package with name like package_signed".
	echo "--help: for this help page."
	return 0 
}

#Sign maxHeapSize keyname package outPackage
Sign() {
    #here keyname, we asume the key is locate in root dir of tools.
	java -Xmx$1 -Djava.library.path=$workpath/lib64 -jar $workpath/jar/signapk.jar $workpath/key/$2.x509.pem $workpath/key/$2.pk8 $3 $4
	return 0
}

if [ $# -ne 1 ]; then
	Usage
	exit 1
fi

#use for sign large package files.
maxHeapSize=2048m

package=$1
packageName=${package##*/}
packageSufix=${packageName##*.}
outPackage=${packageName%.*}_signed.${packageSufix}

workpath=`pwd`
echo "Signing $packageName..."
echo "Sign output: $workpath/$outPackage"
Sign $maxHeapSize $keyname $package $outPackage
exit 0






















