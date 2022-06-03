Add-PSSnapin Microsoft.Sharepoint.Powershell
## 
##### Sitecollection mit Custom Template in der Shell: Alexander Schwarz
##### Websitesammlung anlegen
##### wichtig!
##### line13 Url eintragen
##### line19 Languagecode und Account eintragen (1031=de-de ; 1033=en-us)       
##### line32 Pfad zum Template eintragen
##### line56/74 Templatename eintragen
##### line87 Languagecode eintragen
##### line112 Template-ID eintragen  

 $mainurl = “http://shp16/sites/customtemplate1”


         Write-Host -ForegroundColor White ” – Creating Site Collection  $mainurl…” -NoNewline


         New-SPSite $mainurl -OwnerAlias sample\administrator  -Name “Mein Custom Template funtioniert” -Language 1031


         Write-Host -ForegroundColor GREEN “Done.” 


         Write-Host

##### Template von einem Pfad in den Solutionkatalog hochladen bzw. installieren und aktivieren

         Write-Host -ForegroundColor White ” – Adding and Installing Your Custom Template…” –NoNewline]


              Add-SPUserSolution -LiteralPath C:\templates\testtemplate.wsp -Site $mainurl


             $ErrorActionPreference = “silentlycontinue”


                do


                {


Write-Host “.” -NoNewline -ForeGroundColor White;


                                Start-Sleep -Seconds 5;                                 


                                try


                                {


                                $testsolution = Get-SPUserSolution -Identity testtemplate.wsp -Site $mainurl


                                }


                                catch


                                {}


                } while(!$testsolution);


          $ErrorActionPreference = “stop”


          Install-SPUserSolution -Identity testtemplate.wsp -Site $mainurl


          Write-Host -ForegroundColor GREEN “Done.” 


           Write-Host   

##### ID des Templates ausfindig machen          

           $site= new-Object Microsoft.SharePoint.SPSite($mainurl )


$loc= [System.Int32]::Parse(1031)


$templates= $site.GetWebTemplates($loc)


foreach ($child in $templates)


{


    write-host $child.Name ”  ” $child.Title


}


$site.Dispose()

##### ID wie in line105 eintragen (die ID ist hardcoded, also auch übertragbar!)

$web = GET-SPWeb $mainurl 


$web.ApplyWebTemplate(“{32C8B557-4AB4-4FC7-A45D-67FE3F7645BA}#testtemplate”)



