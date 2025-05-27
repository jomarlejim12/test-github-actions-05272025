variable "subnet_names" {
  type        = list(string)
  default     = ["subnet-1", "subnet-2", "subnet-3"]
  description = "Subnet names"
}

variable "vpcId" {
  type        = string
  default     = "vpc-02956854bec860462"
  description = "VPC ID"
}






















# variable "subnet_names2" {
#   type        = map(string)
#   default     = {
#     "subnet-1": "172.31.80.0/20"
#     "subnet-2": "172.31.64.0/20" 
#     "subnet-3": "172.31.48.0/20"
#   }
#   description = "description"
# }