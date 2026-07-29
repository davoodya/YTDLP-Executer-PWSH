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
    Write-Host "======================================" -ForegroundColor Cyan
    Write-Host ""



    # ------------------------------------------------------
    # Detect Root
    # ------------------------------------------------------

    if (-not $RootPath) {

        $RootPath = Split-Path `
            -Parent `
            $PSScriptRoot

    }



    $DataPath = Join-Path `
        $RootPath `
        "Data"



    if (!(Test-Path $DataPath)) {

        throw "Data directory not found: $DataPath"

    }



    # ------------------------------------------------------
    # Clear Old Data
    # ------------------------------------------------------

    Remove-Variable YTDLPTasks -ErrorAction SilentlyContinue
    Remove-Variable YTDLPQualities -ErrorAction SilentlyContinue
    Remove-Variable YTDLPContainers -ErrorAction SilentlyContinue
    Remove-Variable YTDLPAudioFormats -ErrorAction SilentlyContinue
    Remove-Variable YTDLPSubtitleLanguages -ErrorAction SilentlyContinue

    Remove-Variable YTDLPContext -Global -ErrorAction SilentlyContinue



    # ------------------------------------------------------
    # Load Data Files
    # ------------------------------------------------------

    $DataFiles = @(

        "Enums.ps1"
        "Qualities.ps1"
        "Containers.ps1"
        "AudioFormats.ps1"
        "SubtitleLanguages.ps1"
        "Tasks.ps1"

    )



    foreach($file in $DataFiles) {


        $FilePath = Join-Path `
            $DataPath `
            $file



        if(!(Test-Path $FilePath)) {

            throw "Missing Data File: $FilePath"

        }



        . $FilePath


    }



    # ------------------------------------------------------
    # Build Context From Loaded Variables
    # ------------------------------------------------------

    $Context = [ordered]@{


        Tasks = $script:YTDLPTasks


        Qualities = $script:YTDLPQualities


        Containers = $script:YTDLPContainers


        AudioFormats = $script:YTDLPAudioFormats


        SubtitleLanguages = $script:YTDLPSubtitleLanguages


    }



    # ------------------------------------------------------
    # Validate Context
    # ------------------------------------------------------

    Test-YTDLPDataIntegrity `
        -Context $Context



    # ------------------------------------------------------
    # Export Context
    # ------------------------------------------------------

    $Global:YTDLPContext = $Context



    Write-Host ""
    Write-Host "======================================" -ForegroundColor Green
    Write-Host " YTDLP Context Initialized"
    Write-Host "======================================" -ForegroundColor Green
    Write-Host ""



    Write-Host "[OK] Tasks              : $($Context.Tasks.Count)"
    Write-Host "[OK] Qualities          : $($Context.Qualities.Count)"
    Write-Host "[OK] Containers         : $($Context.Containers.Count)"
    Write-Host "[OK] Audio Formats      : $($Context.AudioFormats.Count)"
    Write-Host "[OK] Subtitle Languages : $($Context.SubtitleLanguages.Count)"



}



# ==========================================================
# Validation
# ==========================================================


function Test-YTDLPRegistryIntegrity {


    param(

        [hashtable]$Registry,

        [string]$Name

    )



    foreach($item in $Registry.GetEnumerator()) {


        if($item.Key -ne $item.Value.ID) {


            throw @"

======================================
DATA VALIDATION FAILED
======================================

Registry : $Name

Key      : $($item.Key)

ID       : $($item.Value.ID)

Name     : $($item.Value.Name)

======================================

"@


        }


    }


}



function Test-YTDLPDataIntegrity {


    param(

        [hashtable]$Context

    )



    Test-YTDLPRegistryIntegrity `
        -Registry $Context.Tasks `
        -Name "Tasks"



    Test-YTDLPRegistryIntegrity `
        -Registry $Context.Qualities `
        -Name "Qualities"



    Test-YTDLPRegistryIntegrity `
        -Registry $Context.Containers `
        -Name "Containers"



    Test-YTDLPRegistryIntegrity `
        -Registry $Context.AudioFormats `
        -Name "AudioFormats"



    Test-YTDLPRegistryIntegrity `
        -Registry $Context.SubtitleLanguages `
        -Name "SubtitleLanguages"



    Write-Host "[OK] Data Validation Passed" -ForegroundColor Green


}