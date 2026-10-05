qgisltr)
    name="QGIS-LTR"
    type="dmg"
    qgisJson=$(curl -fs "https://raw.githubusercontent.com/qgis/QGIS-Website/refs/heads/main/data/conf.json")
    downloadURL=$(getJSONValue "$qgisJson" "ltr_dmg")
    appNewVersion=$(getJSONValue "$qgisJson" "ltrrelease")
    expectedTeamID="4F7N4UDA22"
    # DYNAMISCHER FIX: 
    # Wenn die DMG gemountet ist, sucht dieser Befehl live nach der .app-Datei.
    # Es findet "QGIS.app" genauso wie "QGIS-final-3_44_15.app".
    appName=$(find "/Volumes/QGIS Installer" -maxdepth 1 -name "*.app" -exec basename {} \;)
    ;;
    ;;
