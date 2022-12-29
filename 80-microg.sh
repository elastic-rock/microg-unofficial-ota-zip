#!/sbin/sh
#
# ADDOND_VERSION=2
#
# /system/addon.d/80-fdroid.sh
# During a system upgrade, this script backs up F-Droid client and privext,
# /system is formatted and reinstalled, then the files are restored.
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/NominatimGeocoderBackend.apk
app/NominatimGeocoderBackend/NominatimGeocoderBackend.apk
app/IchnaeaNlpBackend.apk
app/IchnaeaNlpBackend/IchnaeaNlpBackend.apk
app/GsfProxy.apk
app/GsfProxy/GsfProxy.apk
etc/permissions/permissions_com.google.android.gms.xml
etc/sysconfig/sysconfig_com.google.android.gms.xml
priv-app/GmsCore.apk
priv-app/GmsCore/GmsCore.apk
priv-app/FakeStore.apk
priv-app/FakeStore/FakeStore.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
