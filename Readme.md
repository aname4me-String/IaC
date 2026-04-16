# EK1031 Virtualisierung "Cloud Dienste überwachen, automatisch deployen und skalieren"

Autor: **Benjamin Popescu, Sebastian Profous**
Datum: **16-04-26**

## Aufgabenstellung

Verwende Terraform um in einem Cloud-Provider deiner Wahl 2 Webserver zu erstellen und hinter einen Load-Balancer zu stellen.

## Dokumentation der durchgeführten Arbeitsschritte

### VM

Aufsetzen einer neuen Ubuntu Server VM

Installation von Terraform

### Aufsetzen auf Azure

Install AzureCli

```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

az login

az account show  
```

Install Terraform

```bash
cd /tmp
curl -O https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip
unzip terraform_1.7.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform -v
```

Terraform aufsetzen

```bash
terraform init        # azurerm-Provider herunterladen

terraform plan \
  -var="subscription_id=<DEINE-SUBSCRIPTION-ID>"

terraform apply \
  -var="subscription_id=<DEINE-SUBSCRIPTION-ID>"
```

## Quellen