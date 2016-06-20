/* CREA CREDENCIAL Y BACKUP TSQL2012 al Blob*/
/* http://www.mundosql.es/ */

/* Creacion de Credencial SQLServer */
CREATE CREDENTIAL TSQL2012_Backup WITH IDENTITY = 'almacbbdd',   
    SECRET = 'nJ4VKqwuUoTmxFxYoqJYXu4swGzzNCKGxLazlFBtSSuLasy0kqHIzxkACVbQ/2w+pmgvxWM9nFcHLrv384SZyg=='; 

/* Backup BBDD TSQL2012 */
BACKUP DATABASE TSQL2012
	TO URL = 'https://almacbbdd.blob.core.windows.net/datos/201606202100TSQL2012.bak'
	WITH CREDENTIAL = 'TSQL2012_Backup'