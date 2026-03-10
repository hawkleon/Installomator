rustdesk)
    name="RustDesk"
    type="dmg"
    appNewVersion="1.4.6"
    
    if [[ "$(arch)" == "arm64" ]]; then
        # Apple Silicon (M1/M2/M3/M4)
        downloadURL="https://github.com/rustdesk/rustdesk/releases/download/1.4.6/rustdesk-1.4.6-aarch64.dmg"
    else
        # Intel Mac (x86_64)
        downloadURL="https://github.com/rustdesk/rustdesk/releases/download/1.4.6/rustdesk-1.4.6-x86_64.dmg"
    fi
    
    # archiveName muss eindeutig sein
    archiveName="rustdesk-1.4.6-intel-fix.dmg"
    expectedTeamID="HZF9JMC8YN"
    ;;


