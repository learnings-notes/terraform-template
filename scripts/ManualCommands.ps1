# To run the scripts on installed resources.

# Create Resource Group
az group create -n tfstatefile-rg -l eastus2
 
# Create Storage Account
az storage account create -n ghtfstatefilesa -g tfstatefile-rg -l eastus2 --sku Standard_LRS
 
# Create Storage Account Container
az storage container create -n rgtfstatecontainer --connection-string "DefaultEndpointsProtocol=https;AccountName=ghtfstatefilesa;AccountKey=4xXUxgRqQjT96OMpnb10JBfZb74U2P7dN4Y8TAew1dGti7g7Ylf9oIwIBV38OojTcImGIx+ziJHqIwymecleNw==;EndpointSuffix=core.windows.net"


#Terraform service Principles
az ad sp create-for-rbac --name azure1-terraform-sp

<#
{
    "appId": "39542937-6641-4bd9-99e4-e7fca4fbdc5a",
    "displayName": "azure1-terraform-sp",
    "password": "Mx_w_iRL28E3JicTAPPx7KpkpdUszGorSH",
    "tenant": "4fd1514d-311a-4354-8623-4d895779124e"
  } #>