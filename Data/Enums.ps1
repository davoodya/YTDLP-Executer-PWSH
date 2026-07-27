# ==========================================================
# YTDLP-Executer v2.0
# Enumerations / Constants
# ==========================================================

# ---------------------------
# Playlist Modes
# ---------------------------

$script:PlaylistModes = @{
    None      = "None"
    Single    = "Single"
    Playlist  = "Playlist"
}

# ---------------------------
# Builders
# ---------------------------

$script:Builders = @{
    Video       = "Video"
    Audio       = "Audio"
    Subtitle    = "Subtitle"
    Playlist    = "Playlist"
    Information = "Information"
    Maintenance = "Maintenance"
}

# ---------------------------
# Subtitle Types
# ---------------------------

$script:SubtitleTypes = @{
    Manual = "Manual"
    Auto   = "Auto"
}

# ---------------------------
# Container Types
# ---------------------------

$script:ContainerTypes = @{
    Auto = "Auto"
    MP4  = "mp4"
    MKV  = "mkv"
    WEBM = "webm"
}

# ---------------------------
# Audio Types
# ---------------------------

$script:AudioTypes = @{
    Best = "Best"
    MP3  = "mp3"
    FLAC = "flac"
    WAV  = "wav"
    AAC  = "aac"
    OPUS = "opus"
    M4A  = "m4a"
}

# ---------------------------
# Subtitle Output Formats
# ---------------------------

$script:SubtitleFormats = @{
    VTT = "vtt"
    SRT = "srt"
    ASS = "ass"
    LRC = "lrc"
}