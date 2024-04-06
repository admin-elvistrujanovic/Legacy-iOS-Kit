# Legacy iOS Kit

- (formerly iOS-OTA-Downgrader)
- **An all-in-one tool to [restore/downgrade](https://github.com/LukeZGD/Legacy-iOS-Kit/wiki/Restore-Downgrade), [save SHSH blobs](https://github.com/LukeZGD/Legacy-iOS-Kit/wiki/Saving-SHSH-blobs), and [jailbreak](https://github.com/LukeZGD/Legacy-iOS-Kit/wiki/Jailbreaking) legacy iOS devices**
- Supported on **Linux and macOS**
- **Read the ["How to Use" wiki page](https://github.com/LukeZGD/Legacy-iOS-Kit/wiki/How-to-Use) for instructions**
- **Read the ["Troubleshooting" wiki page](https://github.com/LukeZGD/Legacy-iOS-Kit/wiki/Troubleshooting) for tips, frequent questions, and troubleshooting**

## Features
- Legacy iOS Kit supports all 32-bit iOS devices, and some 64-bit (A7/A8/A9/A10) devices
    - Devices that received iOS 16 and newer are not supported and only have limited functionality (such as sideload on Linux etc.)
    - S5L8900 devices (iPhone 2G, 3G, touch 1) are only partially supported, some features like SSH ramdisk are not available
- Restore to signed OTA versions (iOS 8.4.1 and/or 6.1.3) on A5/A6 devices
- Restore some 32-bit devices to other iOS versions without blobs
    - This includes downgrading iPhone 3GS, iPhone 4 GSM and CDMA, iPod touch 2, touch 3, iPad 1
- Restore with SHSH blobs on supported devices
- Restore to other iOS versions with iOS 7 blobs (powdersn0w)
- Tethered restores to other iOS versions for A5/A6 and other devices
- Jailbreak all 32-bit iOS devices on (almost) any iOS version
    - Available on iOS versions 3.1 to 9.3.4
    - Only unsupported versions are iOS 9.0.x
- Hacktivation for iPhone 2G, 3G, 3GS, 4 GSM (activate without valid SIM card)
- Restore to iOS 10.3.3 (signed OTA version) on supported A7 devices
- Install IPA files for supported devices with AppSync Unified installed
- Sideload IPA files for supported devices on Linux
- Save SHSH blobs for signed OTA versions for supported devices
- Save onboard and Cydia SHSH blobs for 32-bit devices
- Save onboard SHSH blobs for jailbroken 64-bit devices (deverser)
- Enter pwned iBSS/kDFU mode for supported 32-bit devices
- Boot SSH Ramdisk for supported 32-bit and 64-bit devices
- Save onboard SHSH blobs using SSH Ramdisk for the supported 64-bit devices
- Install [TrollStore](https://github.com/opa334/TrollStore) using SSH Ramdisk for the supported 64-bit devices on iOS 14/15
- Clear NVRAM for 32-bit devices
- Device activation using ideviceactivation (useful for iOS 4 and lower)
- The latest baseband will be flashed for A5/A6 devices (for iPhone 4S, 5, 5C, iPad 4, mini 1)
- Dumping and stitching baseband to IPSW (requires `--disable-bbupdate`)
- Dumping and stitching activation records to IPSW (requires `--activation-records`)

## Supported devices
- [Identify your device here](https://ipsw.me/device-finder)
- **iPhone 5C and iPad mini 3 devices are NOT supported by OTA downgrades**
    - These devices still support restoring to other iOS versions with SHSH blobs, see below
- See the table below for OTA downgrading support:

<table>
    <thead>
        <tr>
            <th>Target Version</th>
            <th>Supported Devices</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=4>iOS 10.3.3</td>
            <td><b>A7 devices:</b></td>
        </tr>
        <tr><td>iPhone 5S</td></tr>
        <tr><td>iPad Air 1</td></tr>
        <tr><td>iPad mini 2 (except iPad4,6)</td></tr>
        <tr>
            <td rowspan=6>iOS 8.4.1</td>
            <td><b>32-bit devices:</b></td>
        </tr>
        <tr><td>iPhone 4S</td></tr>
        <tr><td>iPhone 5</td></tr>
        <tr><td>iPad 2, iPad 3, iPad 4</td></tr>
        <tr><td>iPad mini 1</td></tr>
        <tr><td>iPod touch 5</td></tr>
        <tr>
            <td rowspan=2>iOS 6.1.3</td>
            <td>iPhone 4S</td>
        </tr>
        <tr><td>iPad 2 (except iPad2,4)</td></tr>
    </tbody>
</table>

- Restoring with SHSH blobs, jailbreaking, and using SSH Ramdisks are supported on the following devices:
    - iPhone 3GS, 4, 4S, 5, 5C
    - iPad 1, 2, 3, 4, mini 1
    - iPod touch 2, 3, 4, 5
- Restoring with SHSH blobs and using SSH Ramdisks are also supported on some 64-bit devices:
    - See [SEP/BB Compatibility Chart](https://docs.google.com/spreadsheets/d/1Mb1UNm6g3yvdQD67M413GYSaJ4uoNhLgpkc7YKi3LBs/edit#gid=1191207636) for iOS versions that can be restored to
    - iPhone 5S, 6, 6S, SE 2016, 7 (including Plus variants)
    - iPad Air 1, 2
    - iPad mini 2, 3, 4
    - iPod touch 6, 7
- Restoring with powdersn0w is supported on the following devices and target version range:
    - iPhone 4 GSM - iOS 4.0 to 7.1.1 (all versions except 4.2.1)
    - iPhone 4 CDMA - iOS 5.0 to 7.1.1
    - iPhone 4S, 5, 5C, iPad 2 Rev A, iPod touch 5 - iOS 5.0 to 9.3.5
    - iPad 1 - iOS 4.3 to 5.1
    - iPod touch 3 - iOS 4.0 to 5.1
    - Using powdersn0w requires iOS 7.1.x blobs for your device
        - No blob requirement for iPhone 4, iPad 1, iPod touch 3 (7.1.2 and 5.1.1 are signed)
        - For iPhone 5 and 5C, both 7.0.x and 7.1.x blobs can be used
- Restoring and jailbreaking to other unsigned versions without blobs is supported on the following devices and target version range:
    - iPhone 3GS - iOS 3.0 to 6.1.3 (all versions)
    - iPod touch 2 - iOS 2.1.1 to 4.1 (all versions)
    - iPhone 2G, 3G, iPod touch 1 - all versions
- Note that for 2G, 3G, and touch 1, supported jailbreak versions are only 3.1.3, as well as 4.1 and 4.2.1 for the 3G
- Lowest downgradable version is 2.0. Going to 1.x does not work
- For 3GS and touch 2, 2.x and 3.0.x are not supported for jailbreaking. 3.1 and newer only

## Supported OS versions/distros

#### Supported architectures: x86_64, arm64, armhf

- [**Ubuntu**](https://ubuntu.com/) 22.04 and newer, and Ubuntu-based distros like [Linux Mint](https://www.linuxmint.com/)
- [**Arch Linux**](https://www.archlinux.org/) and Arch-based distros like [EndeavourOS](https://endeavouros.com/)
- [**Fedora**](https://getfedora.org/) 37 and newer
- [**Debian**](https://www.debian.org/) 12 Bookworm and newer, Sid, and Debian-based distros
- [**openSUSE**](https://www.opensuse.org/) Tumbleweed
- [**Gentoo**](https://www.gentoo.org/) and Gentoo-based distros
- [**Kali**](https://kali.org/) - Support was added in April 2024!
- **macOS** 10.13 and newer (10.15 and newer recommended)

## Tools and other stuff used
- curl
- bspatch
- [powdersn0w_pub](https://github.com/dora2-iOS/powdersn0w_pub) - dora2ios; [LukeZGD fork](https://github.com/LukeZGD/powdersn0w_pub)
    - [Most of the exploit ramdisks used are from kok3shidoll's repo](https://github.com/kok3shidoll/untitled)
    - [iPhone 5C 7.0.x exploit ramdisk is from m1zole](https://github.com/m1zole/untitled_pub)
    - [Other iPhone 5/5C ramdisks are from Ralph0045's iloader repo](https://github.com/Ralph0045/iloader)
    - [iPad 1 exploit ramdisk is from Ralph0045](https://github.com/Ralph0045/iBoot-5-Stuff)
- [ipwndfu](https://github.com/LukeZGD/ipwndfu) - axi0mX, Linus Henze, synackuk; LukeZGD fork
- [ipwnder_lite](https://github.com/dora2-iOS/ipwnder_lite/tree/7265a06d184e433989db640d5e83ea58d5862609) - dora2ios (used on macOS)
- [iPwnder32](https://github.com/dora2-iOS/iPwnder32/tree/243ea5c6d1bd15f8bdd0b3a1ff4a7729bc14bac4) - dora2ios (old version with libusb used on Linux)
- [gaster](https://github.com/0x7ff/gaster/) - 0x7ff
- [daibutsuCFW](https://github.com/dora2-iOS/daibutsuCFW) - dora2ios; [LukeZGD fork](https://github.com/LukeZGD/daibutsuCFW)
- [daibutsu](https://github.com/kok3shidoll/daibutsu) - dora/kok3shidoll, Clarity
- [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice) - libimobiledevice
- [libirecovery](https://github.com/libimobiledevice/libirecovery) - libimobiledevice
- [libideviceactivation](https://github.com/libimobiledevice/libideviceactivation) - libimobiledevice
- [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller) - libimobiledevice
- [anisette-server](https://github.com/Dadoum/Provision) from Provision - Dadoum (used for sideloading on Linux)
- [AltServer-Linux](https://github.com/NyaMisty/AltServer-Linux) - NyaMisty (used for sideloading on Linux)
- [tsschecker](https://github.com/tihmstar/tsschecker) - tihmstar; [1Conan fork](https://github.com/1Conan/tsschecker) v413
- [futurerestore](https://github.com/tihmstar/futurerestore) - tihmstar
    - [LukeZGD fork](https://github.com/LukeZGD/futurerestore) used for restoring 32-bit devices
    - [LukeeGD fork](https://github.com/LukeeGD/futurerestore) used for restoring A7/A8 devices that support iOS 12.5.x
    - [futurerestore nightly](https://github.com/futurerestore/futurerestore/) used for restoring A8/A9/A10 devices that support iOS 15.8.x
- [iBoot32Patcher](https://github.com/dora2-iOS/iBoot32Patcher/) - dora2ios fork
- [idevicerestore](https://github.com/libimobiledevice/idevicerestore) - libimobiledevice; [LukeZGD fork](https://github.com/LukeZGD/idevicerestore)
- [kloader from Odysseus](https://www.youtube.com/watch?v=fh0tB6fp0Sc)
- [kloader from axi0mX](https://github.com/axi0mX/ios-kexec-utils/blob/master/kloader) (used on iOS 4/5 only)
- [kloader for iOS 5](https://www.pmbonneau.com/cydia/com.pmbonneau.kloader5_1.2_iphoneos-arm.deb)
- [kloader_hgsp from nyan_satan](https://twitter.com/nyan_satan/status/945203180522045440) (used on h3lix only)
- [jq](https://github.com/jqlang/jq)
- [partialZipBrowser](https://github.com/tihmstar/partialZipBrowser)
- [zenity](https://github.com/GNOME/zenity); [macOS build](https://github.com/ncruces/zenity)
- 32-bit bundles from [OdysseusOTA](https://www.youtube.com/watch?v=Wo7mGdMcjxw), [OdysseusOTA2](https://www.youtube.com/watch?v=fh0tB6fp0Sc), [alitek12](https://www.mediafire.com/folder/b1z64roy512wd/FirmwareBundles), [gjest](https://www.reddit.com/r/jailbreak/comments/6yrzzj/release_firmware_bundles_for_ios_841_ipad21234567/) (modified bundles for daibutsuCFW)
- A7 patches from [MatthewPierson](https://github.com/MatthewPierson/iPhone-5s-OTA-Downgrade-Patches)
- iPad 2 iOS 4.3.x bundles from [selfisht, Ralph0045](https://www.reddit.com/r/LegacyJailbreak/comments/1172ulo/release_ios_4_ipad_2_odysseus_firmware_bundles/)
- [datautils0](https://github.com/comex/datautils0) - comex (used for iPad 2 4.3.x kernel diffs)
- [sshpass](https://sourceforge.net/project/sshpass)
- Bootstrap tar from [SpiritNET](https://invoxiplaygames.uk/projects/spiritnet/)
- [Cydia HTTPatch](https://cydia.invoxiplaygames.uk/package/cydiahttpatch) for 3.1.3 downgrades/jailbreaks
- [Pangu](https://www.theapplewiki.com/wiki/Pangu)
- [p0sixspwn](https://www.theapplewiki.com/wiki/p0sixspwn)
- [evasi0n](https://www.theapplewiki.com/wiki/Evasi0n)
- [g1lbertJB](https://github.com/g1lbertJB/g1lbertJB)
- [UntetherHomeDepot](https://www.theapplewiki.com/wiki/UntetherHomeDepot)
- [greenpois0n](https://github.com/OpenJailbreak/greenpois0n/tree/0f1eac8e748abb200fc36969e616aaad009f7ebf)
- Some patches from [PwnageTool](https://www.theapplewiki.com/wiki/PwnageTool), [sn0wbreeze](https://www.theapplewiki.com/wiki/sn0wbreeze), [redsn0w](https://www.theapplewiki.com/wiki/redsn0w)
- Some patches made using patchers from [Bundle-Creation](https://github.com/Merculous/Bundle-Creation)
- SSH Ramdisk tars from [SSH-Ramdisk-Maker-and-Loader](https://github.com/Ralph0045/SSH-Ramdisk-Maker-and-Loader) and [msftguy's ssh-rd](https://github.com/msftguy/ssh-rd)
- 64-bit SSH Ramdisk stuff is based on [SSHRD_Script](https://github.com/verygenericname/SSHRD_Script) (iOS 12+) and [iarchive.app](https://ios7.iarchive.app/downgrade/making-ramdisk.html) (iOS 8)
    - [img4lib](https://github.com/xerub/img4lib) - xerub
    - [img4tool](https://github.com/tihmstar/img4tool) - tihmstar
