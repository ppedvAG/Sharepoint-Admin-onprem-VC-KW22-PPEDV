Add-PSSnapin *share*
$servername = "shp19-1"#,shp19-2" #FrontendServer
$WebSiteName="sharepoint - 80" #Web site name in IIS
Get-Counter -Counter "Webdienst($WebSiteName)\aktuelle verbindungen" -ComputerName $ServerName


$servername = "shp19-1"
Get-Counter -Counter 'web service(_total)\current connections' -ComputerName $servername
Get-Counter -Counter 'webdienst(_total)\Aktuelle Verbindungen' -ComputerName $servername


Add-PSSnapin *share*
$servername = "shp19-1,shp19-2" #FrontendServer
$WebSiteName="sharepoint - 80" #Web site name in IIS
Get-Counter -Counter "web service($WebSiteName)\current connections" -ComputerName $ServerName

