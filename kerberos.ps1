#für SQL-Server
setspn -s MSSQLSvc/sp19sub1:1433 sample\sqlservice				
setspn -s MSSQLSvc/sp19sub1.sample.de:1433 sample\sqlservice

#für Webanwendung
setspn -s HTTP/sp19sub1 sample\spservice 			
setspn -s HTTP/sp19sub1.sample.de sample\spservice

#für ZentralAdministration
setspn -s HTTP/shp19-1:5331 sample\spfarm 				
setspn -s HTTP/shp19-1.sample.de:5331 sample\spfarm

#für MysiteHost
#setspn -s HTTP/mysite svc-spmyapppool
#setspn -s HTTP/mysite.sample.de svc-spmyapppool

#In der ZA bei den Webanwendungen die Auth. auf "Kerberos" umstellen
#Danach prüfen, ob im IIS die Auth bei Windowsauth.-> Anbieter auf "Negotiate" steht!
#Mit klist prüfen ob Ticket ausgestellt wurde
#Mit klist purge Tickets löschen

#Eventlog IDs mit 4624 prüfen!