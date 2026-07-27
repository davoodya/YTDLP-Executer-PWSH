# ==========================================================
# YTDLP-Executer v2.0
# Video Qualities Registry
# ==========================================================

$script:YTDLPQualities = @(

    @{
        ID = 1

        Name = "Best"

        Label = "Best Available"

        Height = 0

        Format = "bv*+ba"

        Default = $true
    }

    @{
        ID = 2

        Name = "4320"

        Label = "8K (4320p)"

        Height = 4320

        Format = "bv*[height<=4320]+ba"

        Default = $false
    }

    @{
        ID = 3

        Name = "2160"

        Label = "4K (2160p)"

        Height = 2160

        Format = "bv*[height<=2160]+ba"

        Default = $false
    }

    @{
        ID = 4

        Name = "1440"

        Label = "1440p"

        Height = 1440

        Format = "bv*[height<=1440]+ba"

        Default = $false
    }

    @{
        ID = 5

        Name = "1080"

        Label = "1080p"

        Height = 1080

        Format = "bv*[height<=1080]+ba"

        Default = $false
    }

    @{
        ID = 6

        Name = "720"

        Label = "720p"

        Height = 720

        Format = "bv*[height<=720]+ba"

        Default = $false
    }

    @{
        ID = 7

        Name = "480"

        Label = "480p"

        Height = 480

        Format = "bv*[height<=480]+ba"

        Default = $false
    }

    @{
        ID = 8

        Name = "360"

        Label = "360p"

        Height = 360

        Format = "bv*[height<=360]+ba"

        Default = $false
    }

    @{
        ID = 9

        Name = "240"

        Label = "240p"

        Height = 240

        Format = "bv*[height<=240]+ba"

        Default = $false
    }

    @{
        ID = 10

        Name = "144"

        Label = "144p"

        Height = 144

        Format = "bv*[height<=144]+ba"

        Default = $false
    }

)