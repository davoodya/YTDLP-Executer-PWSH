# ==================================================
# YTDLP-Executer
# Environment Validator
# ==================================================



function Test-ExecutableExists {


    param(

        [string]$Name

    )



    $command = Get-Command $Name `
        -ErrorAction SilentlyContinue



    return ($null -ne $command)



}





function Get-ExecutableVersion {


    param(
        [string]$Name
    )


    try {


        $version = & $Name --version 2>&1 | Select-Object -First 1


        return $version


    }

    catch {


        return "Unknown"


    }

}





function Test-YTDLPEnvironment {


    Write-Host ""

    Write-Host "======================================" `
        -ForegroundColor Cyan


    Write-Host "Checking Environment..." `
        -ForegroundColor Cyan


    Write-Host "======================================" `
        -ForegroundColor Cyan



    Write-Host ""




    # Check yt-dlp


    if(Test-ExecutableExists "yt-dlp"){



        $version = Get-ExecutableVersion "yt-dlp"



        Write-Host "[OK] yt-dlp detected" `
            -ForegroundColor Green



        Write-Host "     Version: $version" `
            -ForegroundColor DarkGray



    }

    else {



        Write-Host "[ERROR] yt-dlp not found!" `
            -ForegroundColor Red



        Write-Host `
        "Install yt-dlp first." `
        -ForegroundColor Yellow



        return $false



    }






    # Check ffmpeg


    if(Test-ExecutableExists "ffmpeg"){



        $version = Get-ExecutableVersion "ffmpeg"



        Write-Host ""

        Write-Host "[OK] ffmpeg detected" `
            -ForegroundColor Green



        Write-Host "     Version: $version" `
            -ForegroundColor DarkGray



    }

    else {



        Write-Host ""

        Write-Host "[WARNING] ffmpeg not found!" `
            -ForegroundColor Yellow



        Write-Host `
        "Some merge/conversion features may fail." `
        -ForegroundColor DarkGray



    }




    Write-Host ""

    Write-Host "Environment Ready." `
        -ForegroundColor Green


    Write-Host ""



    return $true



}