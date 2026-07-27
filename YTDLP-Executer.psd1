@{

    # Module Information
    RootModule = 'YTDLP-Executer.psm1'

    ModuleVersion = '1.0.0'

    GUID = '8d5a9d6c-3c8b-4b8a-9c77-7e8a2f6b9f11'

    Author = 'Davood-Yahay'

    CompanyName = 'Personal PowerShell Module'

    Copyright = '(c) 2026'

    Description = 'Interactive yt-dlp terminal assistant with command execution support'


    # PowerShell Compatibility
    PowerShellVersion = '5.1'


    # Functions exposed by module
    FunctionsToExport = @(
        'ytexec'
    )


    # Cmdlets
    CmdletsToExport = @()


    # Variables
    VariablesToExport = @()


    # Aliases
    AliasesToExport = @()


    # Private files
    PrivateData = @{
        
        PSData = @{
            
            Tags = @(
                'yt-dlp',
                'youtube',
                'downloader',
                'powershell',
                'cli'
            )

            ProjectUri = ''

        }

    }

}