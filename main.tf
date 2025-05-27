data "aws_subnets" "names" {
   filter {
    name   = "tag:Name"
    values = var.subnet_names
  }
  
   filter {
    name   = "vpc-id"
    values = [var.vpcId]
  }
}

data "aws_subnet" "ids" {
  for_each = toset(data.aws_subnets.names.ids)

  id = each.value
}

output "subnet_ids" {
  value       = [for s in data.aws_subnet.ids: s.id]
  # value       = data.aws_subnets.names.ids[*]  
  description = "A list of IDs of the specified subnets"
}

output "vpc_id_name" {
  value       = var.vpcId
  description = "id of the vpc"
}