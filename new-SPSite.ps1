Add-PSSnapin *share*

#get-command *spsite*

#get-help New-SPSite -Detailed

New-SPSite -Url http://hv-sharepoint1/websites/intranet-modern -Template sts#3 -Name Intranet-Modern -ContentDatabase wss_content -OwnerAlias sp-training\administrator

#Get-SPWebTemplate

New-SPSite -Url http://hv-sharepoint1/websites/POA -Template SITEPAGEPUBLISHING#0 -Name POA -ContentDatabase wss_content -OwnerAlias sp-training\administrator
	