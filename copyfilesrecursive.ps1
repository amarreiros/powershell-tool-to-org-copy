

      

     $sourceFolderPath = "c:\dell"
     $destinationFolderPath = "c:\example3"
     if (!(Test-Path -path $destinationFolderPath)) {New-Item $destinationFolderPath -Type Directory}
     foreach($file in (Get-ChildItem -path $sourceFolderPath -Recurse -File )){        
         $destinationSubFolderPath = $destinationFolderPath + "\" +[System.IO.Path]::GetFileNameWithoutExtension($file.Name)    
         if (!(Test-Path -path $destinationSubFolderPath)) {New-Item $destinationSubFolderPath -Type Directory}    
         Copy-Item $file.FullName -Destination  $destinationSubFolderPath   
     }

