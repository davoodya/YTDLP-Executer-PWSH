# ==================================================
# YTDLP-Executer
# Command Registry
# ==================================================


$YTDLPCommands = @(



# ==================================================
# VIDEO DOWNLOAD
# ==================================================


@{

    ID = 1

    Category = "Video Download"

    Name = "Download Best Video + Best Audio"

    Description = "Download highest quality video and audio"

    Inputs = @(
        @{
            Name = "URL"
            Type = "URL"
        }
    )


    Builder = {

        param($Data)

        @(
            "-f",
            "bv*+ba",
            $Data.URL
        )

    }

}



@{

    ID = 2

    Category = "Video Download"

    Name = "Download Best MP4"

    Description = "Download best quality and merge as MP4"


    Inputs = @(
        @{
            Name = "URL"
            Type = "URL"
        }
    )


    Builder = {

        param($Data)

        @(
            "-f",
            "bv*+ba",
            "--merge-output-format",
            "mp4",
            $Data.URL
        )

    }

}



@{

    ID = 3

    Category = "Video Download"

    Name = "Download 1080p Video"


    Inputs = @(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder = {

        param($Data)

        @(
            "-f",
            "bv*[height=1080]+ba",
            $Data.URL
        )

    }

}



@{

    ID = 4

    Category = "Video Download"

    Name = "Download 720p Video"


    Inputs = @(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder = {

        param($Data)

        @(
            "-f",
            "bv*[height=720]+ba",
            $Data.URL
        )

    }

}



@{

    ID = 5

    Category = "Video Download"

    Name = "Show Available Formats"


    Inputs = @(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder = {

        param($Data)

        @(
            "-F",
            $Data.URL
        )

    }

}




# ==================================================
# AUDIO
# ==================================================



@{

    ID = 6

    Category = "Audio"

    Name = "Download MP3 Best Quality"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "-x",
            "--audio-format",
            "mp3",
            "--audio-quality",
            "0",
            $Data.URL
        )


    }

}




@{

    ID = 7

    Category = "Audio"

    Name = "Download Best Audio Only"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "-f",
            "ba",
            $Data.URL
        )

    }

}





# ==================================================
# SUBTITLE
# ==================================================



@{

    ID = 8

    Category = "Subtitle"

    Name = "List Available Subtitles"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)

        @(
            "--list-subs",
            $Data.URL
        )

    }

}




@{

    ID = 9

    Category = "Subtitle"

    Name = "Download Persian Auto Subtitle"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "--write-auto-subs",
            "--sub-lang",
            "fa",
            "--skip-download",
            $Data.URL
        )

    }

}




@{

    ID = 10

    Category = "Subtitle"

    Name = "Download Persian Subtitle as SRT"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "--write-auto-subs",
            "--sub-lang",
            "fa",
            "--convert-subs",
            "srt",
            "--skip-download",
            $Data.URL
        )

    }

}




# ==================================================
# PLAYLIST
# ==================================================



@{

    ID = 11

    Category = "Playlist"

    Name = "Download Playlist"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            $Data.URL
        )

    }

}




@{

    ID = 12

    Category = "Playlist"

    Name = "Download First 10 Playlist Videos"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "--playlist-end",
            "10",
            $Data.URL
        )

    }

}




# ==================================================
# ADVANCED
# ==================================================



@{

    ID = 13

    Category = "Advanced"

    Name = "Use Chrome Cookies"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "--cookies-from-browser",
            "chrome",
            $Data.URL
        )

    }

}




@{

    ID = 14

    Category = "Advanced"

    Name = "Resume Download"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "-c",
            $Data.URL
        )

    }

}




@{

    ID = 15

    Category = "Advanced"

    Name = "Use aria2 Downloader"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "--external-downloader",
            "aria2c",
            $Data.URL
        )

    }

}




# ==================================================
# MAINTENANCE
# ==================================================



@{

    ID = 16

    Category = "Maintenance"

    Name = "Update yt-dlp"


    Inputs=@()


    Builder={


        param($Data)


        @(
            "-U"
        )


    }

}



@{

    ID = 17

    Category = "Maintenance"

    Name = "Show Debug Information"


    Inputs=@(
        @{
            Name="URL"
            Type="URL"
        }
    )


    Builder={

        param($Data)


        @(
            "-v",
            $Data.URL
        )


    }

}



)