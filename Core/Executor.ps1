# ==================================================
# YTDLP-Executer
# Command Execution Engine
# ==================================================



function Invoke-YTDLPCommand {


    param(

        [hashtable]$Command,

        [hashtable]$InputData

    )



    Write-Host ""

    Write-Host "======================================" -ForegroundColor Green

    Write-Host "Executing:" -ForegroundColor Green

    Write-Host $Command.Name -ForegroundColor Yellow

    Write-Host "======================================" -ForegroundColor Green

    Write-Host ""




    try {



        # Build yt-dlp arguments

        $Arguments = & $Command.Builder $InputData



        if($null -eq $Arguments -or $Arguments.Count -eq 0){


            Write-Host "ERROR: No arguments generated!" -ForegroundColor Red

            return


        }




        Write-Host "Command:" -ForegroundColor Cyan


        Write-Host "yt-dlp $($Arguments -join ' ')" `
            -ForegroundColor DarkGray


        Write-Host ""

        Write-Host "Starting download..." `
            -ForegroundColor Green



        Write-Host ""





        # Execute yt-dlp

        & yt-dlp @Arguments




        $exitCode = $LASTEXITCODE




        Write-Host ""



        if($exitCode -eq 0){


            Write-Host "======================================" `
                -ForegroundColor Green


            Write-Host "Completed Successfully" `
                -ForegroundColor Green


            Write-Host "======================================" `
                -ForegroundColor Green



        }

        else{


            Write-Host "======================================" `
                -ForegroundColor Red


            Write-Host "yt-dlp exited with error code $exitCode" `
                -ForegroundColor Red


            Write-Host "======================================" `
                -ForegroundColor Red



        }



    }

    catch {



        Write-Host ""

        Write-Host "Execution Error:" `
            -ForegroundColor Red


        Write-Host $_.Exception.Message `
            -ForegroundColor Red



    }



}





function Invoke-YTDLPCommandByID {


    param(

        [int]$CommandID

    )



    $Command = $YTDLPCommands |
        Where-Object {
            $_.ID -eq $CommandID
        }



    if($null -eq $Command){


        Write-Host ""

        Write-Host "Command not found!" `
            -ForegroundColor Red


        return


    }




    $InputData = Get-YTDLPCommandInput $Command



    Invoke-YTDLPCommand `
        -Command $Command `
        -InputData $InputData



}