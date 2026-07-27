# ==================================================
# YTDLP-Executer
# Command Menu System
# ==================================================



function Start-YTDLPCommandMenu {


    param(

        [string]$Category

    )



    while($true){



        Clear-Host



        Show-YTDLPHeader



        Write-Host ""

        Write-Host "[ $Category ]" `
            -ForegroundColor Green


        Write-Host "======================================" `
            -ForegroundColor DarkGray


        Write-Host ""




        # Get commands in selected category


        $commands = $YTDLPCommands |
            Where-Object {
                $_.Category -eq $Category
            } |
            Sort-Object ID





        if($commands.Count -eq 0){


            Write-Host "No commands available." `
                -ForegroundColor Red


            Start-Sleep -Seconds 2

            return


        }




        foreach($command in $commands){


            Show-CommandItem `
                -ID $command.ID `
                -Name $command.Name


        }




        Write-Host ""

        Write-Host "[B] Back" `
            -ForegroundColor Cyan


        Write-Host "[M] Main Menu" `
            -ForegroundColor Cyan


        Write-Host "[0] Exit" `
            -ForegroundColor Red



        Write-Host ""



        $choice = Read-Host "Select Command"




        if($choice -eq "0"){


            exit


        }



        elseif($choice -eq "b" -or $choice -eq "B"){


            return


        }



        elseif($choice -eq "m" -or $choice -eq "M"){


            Start-YTDLPMainMenu

            return


        }




        elseif($choice -match "^\d+$"){



            $commandID = [int]$choice



            $selectedCommand = $commands |
                Where-Object {
                    $_.ID -eq $commandID
                }



            if($null -ne $selectedCommand){



                Invoke-YTDLPCommandByID `
                    -CommandID $commandID



                Write-Host ""

                Write-Host "Press Enter to continue..." `
                    -ForegroundColor DarkGray


                Read-Host



            }

            else {



                Write-Host ""

                Write-Host "Invalid Command!" `
                    -ForegroundColor Red


                Start-Sleep -Seconds 1


            }



        }



        else {



            Write-Host ""

            Write-Host "Invalid Selection!" `
                -ForegroundColor Red


            Start-Sleep -Seconds 1


        }



    }



}