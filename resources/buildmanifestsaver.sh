#!/bin/bash

devices=(iPhone4,1 iPhone5,1 iPhone5,2
iPad2,1 iPad2,2 iPad2,3 iPad2,4 iPad2,5 iPad2,6 iPad2,7
iPad3,1 iPad3,2 iPad3,3 iPad3,4 iPad3,5 iPad3,6 iPod5,1
)
devices613=(iPhone4,1 iPad2,1 iPad2,2 iPad2,3)

if [[ $OSTYPE == "linux-gnu" ]]; then
    platform='linux'
elif [[ $OSTYPE == "darwin"* ]]; then
    platform='macos'
fi

echo "32bit-OTA-Downgrader BuildManifest and Firmware Keys Saver"
echo "- by LukeZGD"

for ProductType in "${devices[@]}"
do
    dllink=$(curl -I -Ls -o /dev/null -w %{url_effective} https://api.ipsw.me/v4/ota/download/${ProductType}/12H321?prerequisite=12H143)
    tools/pzb_$platform -g AssetData/boot/BuildManifest.plist -o BuildManifest_${ProductType}_8.4.1.plist $dllink
    mkdir -p firmware/$ProductType/12H321
    curl -L https://firmware-keys.ipsw.me/firmware/$ProductType/12H321 -o firmware/$ProductType/12H321/index.html
    curl -L https://api.ipsw.me/v2.1/${ProductType}/12H321/sha1sum -o firmware/$ProductType/12H321/sha1sum
    curl -L https://api.ipsw.me/v2.1/${ProductType}/12H321/url -o firmware/$ProductType/12H321/url
done

for ProductType in "${devices613[@]}"
do
    dllink=$(curl -I -Ls -o /dev/null -w %{url_effective} https://api.ipsw.me/v4/ota/download/${ProductType}/10B329?prerequisite=10B146)
    tools/pzb_$platform -g AssetData/boot/BuildManifest.plist -o BuildManifest_${ProductType}_6.1.3.plist $dllink
    mkdir -p firmware/$ProductType/10B329
    curl -L https://firmware-keys.ipsw.me/firmware/$ProductType/10B329 -o firmware/$ProductType/10B329/index.html
    curl -L https://api.ipsw.me/v2.1/${ProductType}/10B329/sha1sum -o firmware/$ProductType/10B329/sha1sum
    curl -L https://api.ipsw.me/v2.1/${ProductType}/10B329/url -o firmware/$ProductType/10B329/url
done

mkdir manifests
mv *.plist manifests
