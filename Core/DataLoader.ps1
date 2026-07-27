# ==========================================================
# YTDLP-Executer v2.0
# Data Loader
# ==========================================================


function Import-YTDLPData {


    param(
        [string]$RootPath
    )


    if (-not $RootPath) {

        $RootPath = Split-Path `
            -Parent `
            $PSScriptRoot

    }


    $DataPath = Join-Path `
        $RootPath `
        "Data"



    if (-not (Test-Path $DataPath)) {

        throw "
Data directory not found:

$DataPath

Project structure is invalid.
"

    }



    $DataFiles = @(

        "Enums.ps1"

        "Qualities.ps1"

        "Containers.ps1"

        "AudioFormats.ps1"

        "SubtitleLanguages.ps1"

        "Tasks.ps1"

    )



    foreach ($file in $DataFiles) {


        $FullPath = Join-Path `
            $DataPath `
            $file



        if (-not (Test-Path $FullPath)) {


            throw "
Missing Data File:

$FullPath
"

        }



        . $FullPath


    }



    Write-Host ""
    Write-Host "======================================"
    Write-Host " YTDLP Data Loaded Successfully"
    Write-Host "======================================"
    Write-Host ""


    Write-Host "[OK] Tasks:" `
        $script:YTDLPTasks.Count


    Write-Host "[OK] Qualities:" `
        $script:YTDLPQualities.Count


    Write-Host "[OK] Containers:" `
        $script:YTDLPContainers.Count


    Write-Host "[OK] Audio Formats:" `
        $script:YTDLPAudioFormats.Count


    Write-Host "[OK] Subtitle Languages:" `
        $script:YTDLPSubtitleLanguages.Count


    Write-Host ""

}