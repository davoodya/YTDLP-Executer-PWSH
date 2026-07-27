# ==========================================================
# YTDLP-Executer v2.0
# Output Containers Registry
# Ordered Dictionary Version
# ==========================================================

$script:YTDLPContainers = [ordered]@{


    1 = @{
        ID          = 1
        Name        = "Auto"
        Label       = "Automatic"
        Description = "Keep automatic container selection"
        Value       = ""
        Default     = $true
        Enabled     = $true
    }


    2 = @{
        ID          = 2
        Name        = "MP4"
        Label       = "MP4"
        Description = "Force MP4 output container"
        Value       = "mp4"
        Default     = $false
        Enabled     = $true
    }


    3 = @{
        ID          = 3
        Name        = "MKV"
        Label       = "MKV"
        Description = "Force MKV output container"
        Value       = "mkv"
        Default     = $false
        Enabled     = $true
    }


    4 = @{
        ID          = 4
        Name        = "WEBM"
        Label       = "WEBM"
        Description = "Force WEBM output container"
        Value       = "webm"
        Default     = $false
        Enabled     = $true
    }

}