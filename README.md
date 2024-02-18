I asked ChatGPT to make a script that will evacuate virtual machines off of a host and onto any compatible host for the sake of maintenance. You will need to change the following:
**Connect-VIServer -Server Your-vCenter-Server** - Your-vCenter-Server should be the IP address or FQDN of your vCenter Server.
**$esxiHost = "ESXi-Host-Name"** - ESXi-Host-Name should be the object name of the host in vCenter, typically the IP address or FQDN.
