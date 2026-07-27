# ==========================================================
# YTDLP-Executer v2.0
# Audio Formats Registry
# ==========================================================

$script:YTDLPAudioFormats = @(

    @{
        ID          = 1
        Name        = "Best"
        Label       = "Best Audio"
        Description = "Download the best available audio stream"
        Value       = "ba"
        Extension   = ""
        Lossless    = $false
        Convert     = $false
        Default     = $true
        Enabled     = $true
    }

    @{
        ID          = 2
        Name        = "Original"
        Label       = "Original Audio"
        Description = "Keep original audio codec without conversion"
        Value       = ""
        Extension   = ""
        Lossless    = $false
        Convert     = $false
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 3
        Name        = "MP3"
        Label       = "MP3"
        Description = "MPEG Layer III"
        Value       = "mp3"
        Extension   = ".mp3"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 4
        Name        = "FLAC"
        Label       = "FLAC (Lossless)"
        Description = "Free Lossless Audio Codec"
        Value       = "flac"
        Extension   = ".flac"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 5
        Name        = "WAV"
        Label       = "WAV"
        Description = "Waveform Audio"
        Value       = "wav"
        Extension   = ".wav"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 6
        Name        = "AAC"
        Label       = "AAC"
        Description = "Advanced Audio Coding"
        Value       = "aac"
        Extension   = ".aac"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 7
        Name        = "M4A"
        Label       = "M4A"
        Description = "Apple MPEG-4 Audio"
        Value       = "m4a"
        Extension   = ".m4a"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 8
        Name        = "OPUS"
        Label       = "Opus"
        Description = "Opus Audio Codec"
        Value       = "opus"
        Extension   = ".opus"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 9
        Name        = "VORBIS"
        Label       = "Vorbis"
        Description = "Ogg Vorbis"
        Value       = "vorbis"
        Extension   = ".ogg"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 10
        Name        = "ALAC"
        Label       = "ALAC (Lossless)"
        Description = "Apple Lossless Audio Codec"
        Value       = "alac"
        Extension   = ".m4a"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

    @{
        ID          = 11
        Name        = "AIFF"
        Label       = "AIFF"
        Description = "Audio Interchange File Format"
        Value       = "aiff"
        Extension   = ".aiff"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }

)