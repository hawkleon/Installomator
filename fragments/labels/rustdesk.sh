rustdesk)
    name="RustDesk"
    type="dmg"
    # Wir holen erst die Version, um daraus die URLs zu bauen
    appNewVersion=$(curl -sfL "https://api.github.com" | grep "tag_name" | cut -d '"' -f 4 | tr -d 'v')
    
    # Architektur-Prüfung und direkter URL-Bau (GitHub URLs sind bei RustDesk konsistent)
    if [[ $(arch) == "arm64" ]]; then
        # Apple Silicon
        downloadURL="https://github.com{appNewVersion}/rustdesk-${appNewVersion}-aarch64.dmg"
    else
        # Intel
        downloadURL="https://github.com{appNewVersion}/rustdesk-${appNewVersion}-x86_64.dmg"
    fi
    
    archiveName="rustdesk-$appNewVersion.dmg"
    expectedTeamID="HZF9JMC8YN"
    ;;



