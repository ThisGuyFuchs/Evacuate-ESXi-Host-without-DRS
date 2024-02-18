# Connect to vCenter Server
Connect-VIServer -Server Your-vCenter-Server -User Your-Username -Password Your-Password

# Specify the ESXi host to evacuate
$esxiHost = "ESXi-Host-Name"

# Get all virtual machines running on the specified ESXi host
$vmList = Get-VM -Location $esxiHost

# Migrate all VMs to other hosts in the cluster
foreach ($vm in $vmList) {
    Write-Host "Migrating $($vm.Name)..."
    Move-VM -VM $vm -Destination (Get-VMHost -State Connected | Where-Object { $_.Name -ne $esxiHost } | Get-Random)
}