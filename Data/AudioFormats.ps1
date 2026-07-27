# ==========================================================
# YTDLP-Executer v2.0
# Audio Formats Registry
# Ordered Dictionary Version
# ==========================================================

$script:YTDLPAudioFormats = [ordered]@{


    1 = @{
        ID          = 1
        Name        = "Best"
        Label       = "Best Audio"
        Description = "Download highest available audio stream"
        Value       = "ba"
        Extension   = ""
        Lossless    = $false
        Convert     = $false
        Default     = $true
        Enabled     = $true
    }


    2 = @{
        ID          = 2
        Name        = "Original"
        Label       = "Original Audio"
        Description = "Keep original audio without conversion"
        Value       = "original"
        Extension   = ""
        Lossless    = $false
        Convert     = $false
        Default     = $false
        Enabled     = $true
    }


    3 = @{
        ID          = 3
        Name        = "MP3"
        Label       = "MP3"
        Description = "MPEG Layer III compressed audio"
        Value       = "mp3"
        Extension   = ".mp3"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    4 = @{
        ID          = 4
        Name        = "FLAC"
        Label       = "FLAC Lossless"
        Description = "Free Lossless Audio Codec"
        Value       = "flac"
        Extension   = ".flac"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    5 = @{
        ID          = 5
        Name        = "WAV"
        Label       = "WAV"
        Description = "Uncompressed waveform audio"
        Value       = "wav"
        Extension   = ".wav"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    6 = @{
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


    7 = @{
        ID          = 7
        Name        = "M4A"
        Label       = "M4A"
        Description = "MPEG-4 Audio"
        Value       = "m4a"
        Extension   = ".m4a"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    8 = @{
        ID          = 8
        Name        = "OPUS"
        Label       = "Opus"
        Description = "Opus audio codec"
        Value       = "opus"
        Extension   = ".opus"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    9 = @{
        ID          = 9
        Name        = "VORBIS"
        Label       = "Vorbis"
        Description = "Ogg Vorbis audio"
        Value       = "vorbis"
        Extension   = ".ogg"
        Lossless    = $false
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    10 = @{
        ID          = 10
        Name        = "ALAC"
        Label       = "ALAC Lossless"
        Description = "Apple Lossless Audio Codec"
        Value       = "alac"
        Extension   = ".m4a"
        Lossless    = $true
        Convert     = $true
        Default     = $false
        Enabled     = $true
    }


    11 = @{
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

}