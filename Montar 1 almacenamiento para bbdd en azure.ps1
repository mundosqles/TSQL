#
# SQLAzure - Montar 1 srv con almceamiento de bbdd.ps1
# Montar un Servidor de SQL Azure
# http://www.mundosql.es/
#

Clear 

# Datos GR
$rgName                = "SRV-BBDD"
$location              = "West Europe"
$bbdd                  = "almacbbdd"

Write-Host("Desplegando Grupo de Recursos ... SRV-BBDD") 

# Inicio despliegue
$ini = get-date

# Crea GR
Write-Host("Creacion GR") -ForegroundColor Yellow
New-AzureRmResourceGroup -Name $rgName -Location $location


# Crea almacenmiento
Write-Host("Configuracion de Almacenamiento") -ForegroundColor Yellow
$stdStorageAccount = New-AzureRmStorageAccount -Name $bbdd `
    -ResourceGroupName $rgName -Type Standard_LRS -Location $location

# Control tiempo despliegue - Inicio
$fin = get-date
Write-Host("Inicio Despliegue SRV-BBDD: ",$ini) -ForegroundColor Magenta
Write-Host("Fin Despliegue SRV-BBDD:    ",$fin) -ForegroundColor Magenta

Write-Host("Grupo de Recursos SRV-BBDD .... Listo") 

