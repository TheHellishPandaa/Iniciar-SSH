# Nombre del servicio SSH
$serviceName = "sshd"

# Establece el tipo de inicio en automático
Set-Service -Name $serviceName -StartupType Automatic

# Inicia el servicio si no está corriendo
if ((Get-Service -Name $serviceName).Status -ne 'Running') {
    Start-Service -Name $serviceName
    Write-Host "El servicio SSH se ha iniciado correctamente."
} else {
    Write-Host "El servicio SSH ya está en ejecución."
}
