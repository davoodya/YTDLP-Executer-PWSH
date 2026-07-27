# ==================================================
# YTDLP-Executer
# User Interface Functions
# ==================================================


function Show-YTDLPHeader {


    Write-Host ""

    Write-Host "================================================" `
        -ForegroundColor DarkGray


    Write-Host "              YTDLP EXECUTER" `
        -ForegroundColor Green


    Write-Host "        Interactive yt-dlp Terminal Tool" `
        -ForegroundColor Cyan


    Write-Host "================================================" `
        -ForegroundColor DarkGray


    Write-Host ""

}



function Show-SectionTitle {


    param(
        [string]$Title
    )


    Write-Host ""

    Write-Host "[ $Title ]" `
        -ForegroundColor Green


    Write-Host ""

}



function Show-CommandItem {


    param(

        [int]$ID,

        [string]$Name

    )


    Write-Host "[$ID] " `
        -ForegroundColor Yellow `
        -NoNewline


    Write-Host $Name `
        -ForegroundColor White


}



function Show-Separator {


    Write-Host ""

    Write-Host "================================================" `
        -ForegroundColor DarkGray

}