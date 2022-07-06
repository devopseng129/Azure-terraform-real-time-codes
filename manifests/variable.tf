variable "resourcegroup_name" {
  description = "name of resource group"
  type = string
}

variable "location" {
    description = "location of deployment"
    type = string
}

variable "mysql_db_name" {
  description = "Azure MySQL Database Name"
  type        = string
}


variable "mysql_db_username" {
  description = "Azure MySQL Database Administrator Username"
  type        = string
}

variable "mysql_db_password" {
  description = "Azure MySQL Database Administrator Password"
  type        = string
  sensitive   = true
}

variable "mysql_db_schema" {
    description = "Azure mysql database schema name"
    type        = string
}
