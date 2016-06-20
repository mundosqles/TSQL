#
# SQLAzure - Montar 1 srv con almceamiento/bbdd.ps1
# Montar un Servidor de SQL Azure
# http://www.mundosql.es/
#

Clear 

# Datos GR
$rgName                = "SRV-SQLAzure"
$location              = "West Europe"
$NombreServidor        = "SRVsqlazure"
$bbdd                 = "bbddsqlazure"

Write-Host("Desplegando Grupo de Recursos ... SQLAzure- SRV") 

# Inicio despliegue
$ini = get-date

# Crea GR
Write-Host("Creacion GR") -ForegroundColor Yellow
New-AzureRmResourceGroup -Name $rgName -Location $location

# Servidor 
Write-Host("Creacion Servidor SQL Azure") -ForegroundColor Yellow
New-AzureRmSqlServer -ResourceGroupName $rgName -ServerName $rgName  -Location $location -ServerVersion "12.0" -Verbose

# Crea almacenmiento
Write-Host("Configuracion de Almacenamiento") -ForegroundColor Yellow
$stdStorageAccount = New-AzureRmStorageAccount -Name $bbdd `
    -ResourceGroupName $rgName -Type Standard_LRS -Location $location

# Base Datos 
#Write-Host("Base de datos") -ForegroundColor Yellow
#New-AzureRmSqlDatabase -ResourceGroupName $rgName  -ServerName $rgName  -Edition Standard -DatabaseName $bbdd -RequestedServiceObjectiveName 'S0'

# Control tiempo despliegue - Inicio
$fin = get-date
Write-Host("Inicio Despliegue SQLAzure-SRV: ",$ini) -ForegroundColor Magenta
Write-Host("Fin Despliegue SQLAzure-SRV:    ",$fin) -ForegroundColor Magenta

Write-Host("Grupo de Recursos SQLAzure-SRV .... Listo") 

Write-Host("Reglas de FW desde Portal Nuevo")