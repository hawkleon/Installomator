microsoftoffice365_push)
    name="MicrosoftOffice365"
    type="pkg"
    # Wir prüfen die Licensing-Komponente, um sicherzustellen, dass Office da ist
    packageID="com.microsoft.pkg.licensing"
    downloadURL="https://go.microsoft.com"
    # Extrahiert die Version direkt aus dem Download-Link
    appNewVersion=$(curl -fsIL "$downloadURL" | grep -i location: | grep -o "/Microsoft_.*pkg" | cut -d "_" -f 5)
    expectedTeamID="UBF8T346G9"
    # WICHTIG: Kein updateTool definiert -> Installomator lädt das volle PKG
    blockingProcesses=( "Microsoft AutoUpdate" "Microsoft Word" "Microsoft PowerPoint" "Microsoft Excel" "Microsoft OneNote" "Microsoft Outlook" "OneDrive" "Teams" )
    ;;
