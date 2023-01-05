# MicroG Unofficial OTA Zip
[MicroG](https://github.com/microg/GmsCore) requires GmsCore to be installed into the `/system/priv-app` folder in order for location to function through MicroG. It is not, however, possible to install an app into `/system/priv-app` through the OS like one would normaly do. It has to be installed through recovery or with root privilages. Since not everyone wants to root their phone or has the knowledge to do so, installing through recovery is the way to go. Further more, with every ROM OTA update, the sideloaded apps would get wiped. This OTA zip therefore also includes a script that backs up the sideloaded apps before an update and restores them after the update. It also includes [F-Droid](https://f-droid.org/) and the [F-Droid Privileged Extension](https://f-droid.org/packages/org.fdroid.fdroid.privileged.ota/).
# Installation
### Prerequisites
* Properly flashed custom ROM with signature spoofing support. More info can be found at: https://github.com/microg/GmsCore/wiki/Signature-Spoofing
* **No previous installs of F-Droid or MicroG present on the device installed by other means than this OTA zip. Ignoring this could lead to data loss!** I do not take any responisbility for data loss or bricked devices!
* No previous installs of Google Play Services. Again, could lead to data loss!
* Platform-tools installed on PC and working adb
### Installation
1) [Download](https://github.com/elastic-rock/microg-unofficial-ota-zip/releases) the lastest version of the OTA zip.
2) Boot into your recovery of choise and get into sideload mode.
3) In the terminal get into the directory in which you downloaded the OTA zip and enter the command ```adb sideload <file_name>.zip```.
4) Voilà. You have flashed F-Droid and MicroG on your phone. You may now reboot into the system and configure MicroG.
# Thanks to
This repo would have not been able without:
* [MicroG](https://github.com/microg/GmsCore) for making a de-googled experience possible
* [Lineage for MicroG](https://github.com/lineageos4microg/android_vendor_partner_gms) for their amazing repo that helped me build my OTA zip.
If you can, please support these projects.
