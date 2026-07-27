# ==========================================================
# YTDLP-Executer v2.0
# Output Containers Registry
# ==========================================================

$script:YTDLPContainers = @(

    @{
        ID = 1

        Name = "Auto"

        Label = "Automatic"

        Description = "Use original container"

        Value = ""

        Default = $true

        Enabled = $true
    }

    @{
        ID = 2

        Name = "MP4"

        Label = "MP4"

        Description = "Force MP4 output"

        Value = "mp4"

        Default = $false

        Enabled = $true
    }

    @{
        ID = 3

        Name = "MKV"

        Label = "MKV"

        Description = "Force MKV output"

        Value = "mkv"

        Default = $false

        Enabled = $true
    }

    @{
        ID = 4

        Name = "WEBM"

        Label = "WEBM"

        Description = "Force WEBM output"

        Value = "webm"

        Default = $false

        Enabled = $true
    }

)