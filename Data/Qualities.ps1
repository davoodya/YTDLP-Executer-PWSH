# ==========================================================
# YTDLP-Executer v2.0
# Video Qualities Registry
# ==========================================================

$script:YTDLPQualities = [ordered]@{

    1 = @{
        ID          = 1
        Name        = "Best"
        Label       = "Best Available"
        Description = "Download highest available video quality"
        Value       = "bv*+ba"
        Height      = 0
        Default     = $true
        Enabled     = $true
    }

    2 = @{
        ID          = 2
        Name        = "4320"
        Label       = "8K (4320p)"
        Description = "Maximum video height 4320 pixels"
        Value       = "bv*[height<=4320]+ba"
        Height      = 4320
        Default     = $false
        Enabled     = $true
    }

    3 = @{
        ID          = 3
        Name        = "2160"
        Label       = "4K (2160p)"
        Description = "Maximum video height 2160 pixels"
        Value       = "bv*[height<=2160]+ba"
        Height      = 2160
        Default     = $false
        Enabled     = $true
    }

    4 = @{
        ID          = 4
        Name        = "1440"
        Label       = "1440p"
        Description = "Maximum video height 1440 pixels"
        Value       = "bv*[height<=1440]+ba"
        Height      = 1440
        Default     = $false
        Enabled     = $true
    }

    5 = @{
        ID          = 5
        Name        = "1080"
        Label       = "1080p Full HD"
        Description = "Maximum video height 1080 pixels"
        Value       = "bv*[height<=1080]+ba"
        Height      = 1080
        Default     = $false
        Enabled     = $true
    }

    6 = @{
        ID          = 6
        Name        = "720"
        Label       = "720p HD"
        Description = "Maximum video height 720 pixels"
        Value       = "bv*[height<=720]+ba"
        Height      = 720
        Default     = $false
        Enabled     = $true
    }

    7 = @{
        ID          = 7
        Name        = "480"
        Label       = "480p"
        Description = "Maximum video height 480 pixels"
        Value       = "bv*[height<=480]+ba"
        Height      = 480
        Default     = $false
        Enabled     = $true
    }

    8 = @{
        ID          = 8
        Name        = "360"
        Label       = "360p"
        Description = "Maximum video height 360 pixels"
        Value       = "bv*[height<=360]+ba"
        Height      = 360
        Default     = $false
        Enabled     = $true
    }

    9 = @{
        ID          = 9
        Name        = "240"
        Label       = "240p"
        Description = "Maximum video height 240 pixels"
        Value       = "bv*[height<=240]+ba"
        Height      = 240
        Default     = $false
        Enabled     = $true
    }

    10 = @{
        ID          = 10
        Name        = "144"
        Label       = "144p"
        Description = "Maximum video height 144 pixels"
        Value       = "bv*[height<=144]+ba"
        Height      = 144
        Default     = $false
        Enabled     = $true
    }

}