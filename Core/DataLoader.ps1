# ==========================================================
# YTDLP-Executer v2.0
# Core - Data Loader
# ==========================================================


function Import-YTDLPData {


    param(
        [string]$RootPath
    )


    Write-Host ""
    Write-Host "======================================" -ForegroundColor Cyan
    Write-Host " Loading YTDLP Data Layer"
    Write-Host "======================================"
    Write-Host ""



    # ------------------------------------------------------
    # Detect Project Root
    # ------------------------------------------------------

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
"

    }



    # ------------------------------------------------------
    # Data Registry Files
    # ------------------------------------------------------

    $DataFiles = @(

        "Enums.ps1"
        "Qualities.ps1"
        "Containers.ps1"
        "AudioFormats.ps1"
        "SubtitleLanguages.ps1"
        "Tasks.ps1"

    )



    foreach ($file in $DataFiles) {


        $FilePath = Join-Path `
            $DataPath `
            $file



        if (-not (Test-Path $FilePath)) {


            throw "
Missing Data File:

$FilePath
"

        }



        . $FilePath


    }



    # ------------------------------------------------------
    # Create Context
    # ------------------------------------------------------

    $script:YTDLPContext = [ordered]@{


        Tasks = $script:YTDLPTasks

        Qualities = $script:YTDLPQualities

        Containers = $script:YTDLPContainers

        AudioFormats = $script:YTDLPAudioFormats

        SubtitleLanguages = $script:YTDLPSubtitleLanguages


    }



    # ------------------------------------------------------
    # Validate Context
    # ------------------------------------------------------

    Test-YTDLPDataIntegrity



    Write-Host ""
    Write-Host "======================================" -ForegroundColor Green
    Write-Host " YTDLP Context Initialized"
    Write-Host "======================================"
    Write-Host ""



    Write-Host (
        "[OK] Tasks              : {0}" `
        -f $YTDLPContext.Tasks.Count
    )

    Write-Host (
        "[OK] Qualities          : {0}" `
        -f $YTDLPContext.Qualities.Count
    )

    Write-Host (
        "[OK] Containers         : {0}" `
        -f $YTDLPContext.Containers.Count
    )

    Write-Host (
        "[OK] Audio Formats      : {0}" `
        -f $YTDLPContext.AudioFormats.Count
    )

    Write-Host (
        "[OK] Subtitle Languages : {0}" `
        -f $YTDLPContext.SubtitleLanguages.Count
    )


    Write-Host ""

}



# ==========================================================
# Data Validation
# ==========================================================


function Test-YTDLPRegistryIntegrity {


    param(
        [hashtable]$Registry,
        [string]$RegistryName
    )



    foreach($item in $Registry.GetEnumerator()) {


        if($item.Key -ne $item.Value.ID) {


            throw "
Registry Validation Failed

Registry : $RegistryName

Key : $($item.Key)

ID  : $($item.Value.ID)

"

        }


    }


}



function Test-YTDLPDataIntegrity {



    Test-YTDLPRegistryIntegrity `
        -Registry $script:YTDLPTasks `
        -RegistryName "Tasks"



    Test-YTDLPRegistryIntegrity `
        -Registry $script:YTDLPQualities `
        -RegistryName "Qualities"



    Test-YTDLPRegistryIntegrity `
        -Registry $script:YTDLPContainers `
        -RegistryName "Containers"



    Test-YTDLPRegistryIntegrity `
        -Registry $script:YTDLPAudioFormats `
        -RegistryName "AudioFormats"



    Test-YTDLPRegistryIntegrity `
        -Registry $script:YTDLPSubtitleLanguages `
        -RegistryName "SubtitleLanguages"


    Write-Host "[OK] Data Validation Passed" -ForegroundColor Green

}