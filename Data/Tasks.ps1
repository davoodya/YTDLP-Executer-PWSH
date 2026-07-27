# ==========================================================
# YTDLP-Executer v2.0
# Tasks Registry
# ==========================================================

$script:YTDLPTasks = @(

    @{
        ID = 1

        Name = "Video Download"

        Description = "Download a single video"

        Builder = "Video"

        Supports = @(
            "Quality",
            "Container",
            "OutputDirectory"
        )

        PlaylistMode = "Single"
    }

    @{
        ID = 2

        Name = "Audio Download"

        Description = "Extract audio from a single video"

        Builder = "Audio"

        Supports = @(
            "AudioFormat",
            "OutputDirectory"
        )

        PlaylistMode = "Single"
    }

    @{
        ID = 3

        Name = "Subtitle Download"

        Description = "Download subtitles"

        Builder = "Subtitle"

        Supports = @(
            "SubtitleType",
            "SubtitleLanguage",
            "SubtitleFormat",
            "OutputDirectory"
        )

        PlaylistMode = "Single"
    }

    @{
        ID = 4

        Name = "Playlist Download"

        Description = "Download an entire playlist"

        Builder = "Playlist"

        Supports = @(
            "PlaylistMode",
            "PlaylistCount",
            "Quality",
            "AudioFormat",
            "SubtitleType",
            "SubtitleLanguage",
            "SubtitleFormat",
            "OutputDirectory"
        )

        PlaylistMode = "Playlist"
    }

    @{
        ID = 5

        Name = "Information"

        Description = "Show video information"

        Builder = "Information"

        Supports = @()

        PlaylistMode = "Single"
    }

    @{
        ID = 6

        Name = "Maintenance"

        Description = "Update yt-dlp and maintenance"

        Builder = "Maintenance"

        Supports = @()

        PlaylistMode = "None"
    }

)