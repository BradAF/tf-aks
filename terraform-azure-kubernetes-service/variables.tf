variable "projectname"  {
description = "set the name of the project"
type = "string"
}

variable "location"  {
description = "set Azure Location e.g. eastus or westeurope"
type = "string"
}

variable "tf_aks_sa_replication_type"  {
description = "set replication type for the Storage Account"
type = "string"
default = "LRS"
}

variable "tf_aks_sa_tier"  {
description = "Set the Storage Tier e.g. to Standard or Premium"
type = "string"
default = "Standard"
}

variable "k8s_cluster_version" {
    type = "string"
    description = "select the version of Kubernetes you want to use. Depends on Azure availability"
}

variable "k8s_node_size" {
    type = "string"
    description = "select the Azure Node Size"
    default = "DS2_V2"
}

variable "dns_prefix" {
    type = "string"
    description = "dns_prefix will be used as part of an Azure assigned FQDN"
}


variable "resource_tags" {
type = "map"
default = {
    Name = "aks_state"
    }
}