rustdesk)
    name="RustDesk"
    type="dmg"
    # Architektur-Check für den richtigen Download
    if [[ $(arch) == "arm64" ]]; then
        # Apple Silicon (M1/M2/M3/M4)
        downloadURL=$(curl -sfL "https://api.github.com" | grep -i "browser_download_url" | grep "aarch64.dmg" | cut -d '"' -f 4)
    else
        # Intel (x86_64)
        downloadURL=$(curl -sfL "https://api.github.com" | grep -i "browser_download_url" | grep "x86_64.dmg" | cut -d '"' -f 4)
    fi
    # Version ohne das "v" extrahieren
    appNewVersion=$(curl -sfL "https://api.github.com" | grep "tag_name" | cut -d '"' -f 4 | tr -d 'v')
    archiveName="rustdesk-$appNewVersion.dmg"
    expectedTeamID="HZF9JMC8YN"
    ;;

