#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/base frameworks/native frameworks/opt/telephony system/core system/netd system/sepolicy packages/apps/FMRadio/jni/fmr"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo -e "\n Cleaning $dir patches...\n"
	git checkout -- . && git clean -df
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory
