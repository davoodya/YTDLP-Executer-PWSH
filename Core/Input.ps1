# ==================================================
# YTDLP-Executer
# Input Handler
# ==================================================



function Get-YTDLPCommandInput {


    param(
        [hashtable]$Command
    )



    $InputObject = @{}



    if($null -eq $Command.Inputs -or $Command.Inputs.Count -eq 0){

        return $InputObject

    }



    foreach($inputDefinition in $Command.Inputs){



        $name = $inputDefinition.Name

        $type = $inputDefinition.Type



        Write-Host ""

        Write-Host "Input Required:" -ForegroundColor Cyan



        switch($type){



            "URL" {


                $value = Read-Host "$name"


                while([string]::IsNullOrWhiteSpace($value)){


                    Write-Host "Value cannot be empty!" -ForegroundColor Red


                    $value = Read-Host "$name"


                }



                $InputObject[$name] = $value



            }



            "Text" {


                $value = Read-Host "$name"


                $InputObject[$name] = $value


            }



            "Number" {


                $value = Read-Host "$name"


                while(-not ($value -match "^\d+$")){


                    Write-Host "Please enter a number!" -ForegroundColor Red


                    $value = Read-Host "$name"


                }


                $InputObject[$name] = $value



            }



            default {


                $value = Read-Host "$name"


                $InputObject[$name] = $value


            }


        }



    }



    return $InputObject


}