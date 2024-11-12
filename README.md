# proxmox
This is where I keep my Proxmox scripts

## Linux Templates Script

This script will crate linux templates in proxmox.

``` bash
curl -o createtemplates.sh -sSL https://raw.githubusercontent.com/bradmcdowell/proxmox/main/createtemplates.sh && chmod +x createtemplates.sh && ./createtemplates.sh
```

Each time the script is run, it will check for updates.