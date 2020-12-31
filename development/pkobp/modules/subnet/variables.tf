variable "subnet_name" {
    description = "Nazwa subnetu"
    type        = string
    default     = ""
}

variable "rg_name" {
    description = "Nazwa RG"
    type        = string
    default     = ""
}

variable "vnet_name" {
    description = "Nazwa Virtual Network"
    type        = string
    default     = ""
}

variable "address_space" {
    description = "Adresacja dla subnet"
    type        = list
    default     = []
}

variable "private_link_endpoint_network_policies" {
    description = "Ustawienie wymuszenia NSG na Private Link Endpoint, jezeli wartosc wynosi false to w subnet nie mozna utworzyc Private Link Endpoint"
    type        = bool
    default     = true
}

variable "private_link_service_network_policies" {
    description = "Ustawienie wymuszenia NSG na Private Link Service, jezeli wartosc wynosi false to w subnet nie mozna utworzyc Private Link Service"
    type        = bool
    default     = false
}

# NOTE: Lista service endpoints wlaczonych w danym subnet. Na liscie moga znajdowac sie:
#   - Microsoft.AzureActiveDirectory - Azure Data Lake Store Gen 1, AAD nie supportuje Service Endpoint, tylko generacje tokenow
#   - Microsoft.AzureCosmosDB - dla Azure Cosmos DB
#   - Microsoft.CognitiveServices - dla Azure Cognitive Services
#   - Microsoft.ContainerRegistry - dla Azure Container Registry
#   - Microsoft.EventHub - dla Azure Event Hubs
#   - Microsoft.KeyVault - dla Azure Key Vault
#   - Microsoft.ServiceBus - dla Azure Service Bus
#   - Microsoft.Sql - dla: Azure SQL Database, Azure Synapse Analytics, Azure Database for PostgreSQL server, Azure Database for MySQL server, Azure Database for MariaDB
#   - Microsoft.Storage - dla: Azure Storage
#   - Microsoft.Web - dla Azure App Service


variable "service_endpoints" {
    description = "Lista Service Endpoints dla subnetu. Ustawiana tylko na zadanie osoby wdrazajacej projekt. Mozliwe wartosci: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage and Microsoft.Web"
    type        = list
    default     = []
}


variable "service_endpoint_policy_ids" {
    description = "Lista polityk dla Service Endpoints w subnet."
    type        = list
    default     = []

}

# NOTE: W ponizszej zmiennej name moze przyjmowac wartosci: 
#   - Microsoft.ApiManagement/service
#   - Microsoft.AzureCosmosDB/clusters 
#   - Microsoft.BareMetal/AzureVMware
#   - Microsoft.BareMetal/CrayServers 
#   - Microsoft.Batch/batchAccounts 
#   - Microsoft.ContainerInstance/containerGroups 
#   - Microsoft.Databricks/workspaces 
#   - Microsoft.DBforMySQL/flexibleServers 
#   - Microsoft.DBforMySQL/serversv2
#   - Microsoft.DBforPostgreSQL/flexibleServers
#   - Microsoft.DBforPostgreSQL/serversv2
#   - Microsoft.DBforPostgreSQL/singleServers
#   - Microsoft.HardwareSecurityModules/dedicatedHSMs
#   - Microsoft.Kusto/clusters
#   - Microsoft.Logic/integrationServiceEnvironments
#   - Microsoft.MachineLearningServices/workspaces
#   - Microsoft.Netapp/volumes
#   - Microsoft.Network/managedResolvers
#   - Microsoft.PowerPlatform/vnetaccesslinks
#   - Microsoft.ServiceFabricMesh/networks
#   - Microsoft.Sql/managedInstances
#   - Microsoft.Sql/servers
#   - Microsoft.StreamAnalytics/streamingJobs
#   - Microsoft.Synapse/workspaces
#   - Microsoft.Web/hostingEnvironments
#   - Microsoft.Web/serverFarms

# NOTE: W ponizszej zmiennej wartosc actions moze wynosic:
#   - Microsoft.Network/networkinterfaces/*
#   - Microsoft.Network/virtualNetworks/subnets/action
#   - Microsoft.Network/virtualNetworks/subnets/join/action
#   - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
#   - Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action

# NOTE: Dokladna lista delegacji wraz a odpowiednimi akcjami jest zalezna od regionu. 
# Dlatego przed konfiguracja nalezy wykonac jedna z ponizszych komend
# dostepna lista uslug do delegacji wraz z actions per RG
# az network vnet subnet list-available-delegations --resource-group nazwa-resource-group
# dostepna lista uslug do delegacji wraz z actions per lokalizacja
# az network vnet subnet list-available-delegations --location west-europe
# dostepna lista uslug do delegacji
# az network vnet subnet list-available-delegations --location west-europe --query [].serviceName 
# dostepna lista actions dla konkretnej delegacji
# az network vnet subnet list-available-delegations --location west-europe --query "[?serviceName=='Microsoft.DBforMySQL/flexibleServers'].actions"
# lub 
# az network vnet subnet list-available-delegations --location west-europe --query "[?serviceName=='Microsoft.ContainerService/managedClusters'].actions"
# lub aby wyswietlic caly element
# az network vnet subnet list-available-delegations --location west-europe --query "[?serviceName=='Microsoft.DBforMySQL/flexibleServers']"

variable "subnet_delegation" {
    description = <<EOF
Lista obiektow do zdefiniowania delegacji subnetu do uslugi
object({
    name = object({
        name = string,
        actions = list(string)
    })
})
EOF

    type        = map(list(any))
    default     = {}
}

variable "route_table_id" {
    description = "Route Table ID, ktora ma zostac nalozona na subnet"
    type        = string
    default     = null
}

variable "nsg_id" {
    description = "Network Security Group ID, ktora ma zostac nalozona na subnet"
    type        = string
    default     = null
}