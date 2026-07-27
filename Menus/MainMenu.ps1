# ==================================================
# YTDLP-Executer
# Main Menu System
# ==================================================



function Start-YTDLPMainMenu {


    while($true){



        Clear-Host



        Show-YTDLPHeader



        Write-Host ""



        Write-Host "Available Categories" `
            -ForegroundColor Green


        Write-Host "====================" `
            -ForegroundColor DarkGray



        Write-Host ""



        # Get unique categories dynamically

        $categories = $YTDLPCommands |
            Select-Object -ExpandProperty Category -Unique




        $index = 1



        $categoryMap = @{}




        foreach($category in $categories){


            Write-Host "[$index] " `
                -ForegroundColor Yellow `
                -NoNewline


            Write-Host $category `
                -ForegroundColor White



            $categoryMap[$index] = $category



            $index++


        }





        Write-Host ""

        Write-Host "[R] Refresh" `
            -ForegroundColor Cyan


        Write-Host "[0] Exit" `
            -ForegroundColor Red



        Write-Host ""



        $choice = Read-Host "Select Category"



        if($choice -eq "0"){


            Write-Host ""

            Write-Host "Goodbye!" `
                -ForegroundColor Green


            break


        }




        elseif($choice -eq "r" -or $choice -eq "R"){


            continue


        }




        elseif($categoryMap.ContainsKey([int]$choice)){



            $selectedCategory = $categoryMap[[int]$choice]



            Start-YTDLPCommandMenu `
                -Category $selectedCategory



        }




        else{


            Write-Host ""

            Write-Host "Invalid Selection!" `
                -ForegroundColor Red


            Start-Sleep -Seconds 1


        }



    }



}