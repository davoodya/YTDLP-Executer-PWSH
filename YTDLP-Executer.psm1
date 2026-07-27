# ===============================================
# YTDLP-Executer PowerShell Module
# Main Loader
# ===============================================


$ModuleRoot = $PSScriptRoot



# Load Core Components

$coreFiles = @(
    
    "Core\UI.ps1",
    "Core\Input.ps1",
    "Core\Validator.ps1",
    "Core\Executor.ps1"

)



foreach($file in $coreFiles){

    $path = Join-Path $ModuleRoot $file


    if(Test-Path $path){

        . $path

    }

    else{

        Write-Warning "Missing module file: $path"

    }

}



# Load Command Database

$commandsFile = Join-Path `
    $ModuleRoot `
    "Data\Commands.ps1"



if(Test-Path $commandsFile){

    . $commandsFile

}

else{

    Write-Warning "Commands database missing"

}



# Load Menu System

$menuFiles = @(

    "Menus\MainMenu.ps1",
    "Menus\CommandMenu.ps1"

)



foreach($file in $menuFiles){


    $path = Join-Path $ModuleRoot $file


    if(Test-Path $path){

        . $path

    }

    else{

        Write-Warning "Missing menu file: $path"

    }

}





# Main Public Function

function ytexec {


    Clear-Host



    if(Get-Command Test-YTDLPEnvironment -ErrorAction SilentlyContinue){

        Test-YTDLPEnvironment

    }



    Start-YTDLPMainMenu


}



Export-ModuleMember -Function ytexec