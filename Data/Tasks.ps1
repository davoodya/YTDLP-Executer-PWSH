# ==========================================================
# YTDLP-Executer v2.0
# Tasks Registry
# Ordered Dictionary Version
# ==========================================================


$script:YTDLPTasks = [ordered]@{


    # ======================================================
    # Video Tasks
    # ======================================================

    1 = @{
        ID          = 1
        Category    = "Video"
        Name        = "BestVideoAudio"
        Label       = "Download Best Video + Best Audio"
        Description = "Download highest available video quality with best audio"

        Builder    = "Video"

        PlaylistMode = "Single"

        Inputs = @(
            "URL"
        )

        Options = @{
            Quality   = $true
            Container = $true
            Audio     = $false
            Subtitle  = $false
        }

        Enabled = $true
    }



    2 = @{
        ID          = 2
        Category    = "Video"
        Name        = "BestMP4"
        Label       = "Download Best MP4"
        Description = "Download best quality and force MP4 container"

        Builder = "Video"

        PlaylistMode = "Single"

        Inputs = @(
            "URL"
        )

        Options = @{
            Quality   = $true
            Container = $false
            Audio     = $false
            Subtitle  = $false
        }

        Container = "mp4"

        Enabled = $true
    }



    3 = @{
        ID          = 3
        Category    = "Video"
        Name        = "SpecificQuality"
        Label       = "Download Specific Quality"
        Description = "Download video with selected quality"

        Builder = "Video"

        PlaylistMode = "Single"

        Inputs = @(
            "URL",
            "Quality"
        )

        Options = @{
            Quality   = $true
            Container = $true
            Audio     = $false
            Subtitle  = $false
        }

        Enabled = $true
    }



    # ======================================================
    # Audio Tasks
    # ======================================================


    10 = @{
        ID          = 10
        Category    = "Audio"
        Name        = "BestAudio"
        Label       = "Download Best Audio"
        Description = "Download best available audio stream"

        Builder = "Audio"

        PlaylistMode = "Single"

        Inputs = @(
            "URL"
        )

        Options = @{
            AudioFormat = $true
            Quality     = $false
            Subtitle    = $false
        }

        Enabled = $true
    }



    11 = @{
        ID          = 11
        Category    = "Audio"
        Name        = "MP3"
        Label       = "Download MP3"
        Description = "Extract audio and convert to MP3"

        Builder = "Audio"

        PlaylistMode = "Single"

        Inputs = @(
            "URL"
        )

        Options = @{
            AudioFormat = $false
            Quality     = $false
            Subtitle    = $false
        }

        Format = "mp3"

        Enabled = $true
    }



    12 = @{
        ID          = 12
        Category    = "Audio"
        Name        = "FLAC"
        Label       = "Download FLAC"
        Description = "Extract audio and convert to FLAC lossless format"

        Builder = "Audio"

        PlaylistMode = "Single"

        Inputs = @(
            "URL"
        )

        Options = @{
            AudioFormat = $false
            Quality     = $false
            Subtitle    = $false
        }

        Format = "flac"

        Enabled = $true
    }




    # ======================================================
    # Subtitle Tasks
    # ======================================================


    20 = @{
        ID          = 20
        Category    = "Subtitle"
        Name        = "AutoSubtitle"
        Label       = "Download Auto Generated Subtitle"
        Description = "Download automatic generated subtitles"

        Builder = "Subtitle"

        PlaylistMode = "Single"

        Inputs = @(
            "URL",
            "Language"
        )

        Options = @{
            Language = $true
            Convert  = $true
            Subtitle = $true
        }

        Auto = $true

        Enabled = $true
    }



    21 = @{
        ID          = 21
        Category    = "Subtitle"
        Name        = "ManualSubtitle"
        Label       = "Download Manual Subtitle"
        Description = "Download original uploaded subtitle"

        Builder = "Subtitle"

        PlaylistMode = "Single"

        Inputs = @(
            "URL",
            "Language"
        )

        Options = @{
            Language = $true
            Convert  = $true
            Subtitle = $true
        }

        Auto = $false

        Enabled = $true
    }




    # ======================================================
    # Playlist Tasks
    # ======================================================


    30 = @{
        ID          = 30
        Category    = "Playlist"
        Name        = "PlaylistVideo"
        Label       = "Download Full Playlist Videos"
        Description = "Download playlist videos with selected quality"

        Builder = "Playlist"

        PlaylistMode = "Full"

        Inputs = @(
            "URL",
            "Limit",
            "Quality"
        )

        Options = @{
            Quality = $true
            Limit   = $true
        }

        Enabled = $true
    }



    31 = @{
        ID          = 31
        Category    = "Playlist"
        Name        = "PlaylistMP3"
        Label       = "Download Playlist MP3"
        Description = "Download playlist and convert all items to MP3"

        Builder = "Playlist"

        PlaylistMode = "Full"

        Inputs = @(
            "URL",
            "Limit"
        )

        Options = @{
            Limit = $true
        }

        Format = "mp3"

        Enabled = $true
    }



    32 = @{
        ID          = 32
        Category    = "Playlist"
        Name        = "PlaylistSubtitle"
        Label       = "Download Playlist Auto Subtitle"
        Description = "Download automatic subtitles from playlist"

        Builder = "Playlist"

        PlaylistMode = "Full"

        Inputs = @(
            "URL",
            "Limit",
            "Language"
        )

        Options = @{
            Limit    = $true
            Language = $true
        }

        Enabled = $true
    }



    33 = @{
        ID          = 33
        Category    = "Playlist"
        Name        = "PlaylistFLAC"
        Label       = "Download Playlist FLAC"
        Description = "Download playlist audio as FLAC"

        Builder = "Playlist"

        PlaylistMode = "Full"

        Inputs = @(
            "URL",
            "Limit"
        )

        Options = @{
            Limit = $true
        }

        Format = "flac"

        Enabled = $true
    }

}