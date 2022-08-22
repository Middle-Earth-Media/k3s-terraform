variable "proxmox_api_url" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token_id" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}

variable "server_ids" {
  type    = list(string)
  default = [201, 202, 203]
}

variable "agent_ids" {
  type    = list(string)
  default = [204, 205, 206, 207, 208, 209]
}

variable "server_ips" {
  type    = list(string)
  default = ["192.168.0.201", "192.168.0.202", "192.168.0.203"]
}

variable "agent_ips" {
  type    = list(string)
  default = ["192.168.0.204", "192.168.0.205", "192.168.0.206", "192.168.0.207", "192.168.0.208", "192.168.0.209"]
}
