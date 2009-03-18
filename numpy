#! /bin/bash
DMG_NAME="numpy-1.3.0b1-py2.5-macosx10.5.dmg"
MPKG_NAME="numpy-1.3.0b1.mpkg"
test -f $DMG_NAME && rm $DMG_NAME
#./create-dmg --window-size 500 500 --background dmgbackground.png --icon-size 128 --icon "numpy 1.3.mpkg" 125 340 --volname "numpy" $DMG_NAME ./content
./create-dmg --window-size 500 500 --background art/dmgbackground.png --icon-size 128 --icon "$MPKG_NAME" 125 320 --icon "Documentation" 375 320 --volname "numpy" $DMG_NAME ./content

# # From jwz website: this does not automatically open the dmg nor does it open
# # the dmg in a new window
# hdiutil makehybrid -hfs -hfs-volume-name numpy -hfs-openfolder content content -o tmp.dmg
# hdiutil convert -format UDZO tmp.dmg -o $DMG_NAME

# test -f test2.dmg && rm test2.dmg
# DMG_PATH="numpy"
# DMG_DIRNAME="$(dirname "$DMG_PATH")"
# DMG_DIR="$(cd $DMG_DIRNAME > /dev/null; pwd)"
# DMG_NAME="$(basename "$DMG_PATH")"
# DMG_TEMP_NAME="$DMG_DIR/rw.${DMG_NAME}"
# SRC_FOLDER="$(cd "dmg/img-content" > /dev/null; pwd)"
# test -z "$VOLUME_NAME" && VOLUME_NAME="$(basename "$DMG_PATH" .dmg)"
# 
# # AUX_PATH="$(cd "$(dirname $0)"; pwd)/support"
# # 
# # test -d "$AUX_PATH" || {
# #   echo "Cannot find support directory: $AUX_PATH"
# #   exit 1
# # }
# 
# # Create the image
# echo "Creating disk image..."
# test -f "${DMG_TEMP_NAME}" && rm -f "${DMG_TEMP_NAME}"
# hdiutil create -srcfolder "$SRC_FOLDER" -volname "${VOLUME_NAME}" -fs HFS+ -fsargs "-c c=64,a=16,e=16" -format UDRW -size 20m "${DMG_TEMP_NAME}"
# 
