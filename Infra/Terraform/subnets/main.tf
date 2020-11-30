resource "aws_subnet" "VPCSub" {
  vpc_id                  = var.vpc_id
  map_public_ip_on_launch = "true"

  iterator = cidr
  for_each = var.cidrblock
  cidr_block              = cidr.value

  for_each = var.az
  availability_zone = each.value.az

  tags = {
    Name = "FP - Subnet"
    "kubernetes.io/cluster/project_cluster" = "shared"
  }

// }
// resource "aws_subnet" "rdsSubnet2" {
//   vpc_id                  = var.vpc_id
//   cidr_block              = "10.0.3.0/24"
//   map_public_ip_on_launch = "true"
//   availability_zone = "eu-west-1b"

//   tags = {
//     Name = "RDS-Pub-Sub-2"
//     "kubernetes.io/cluster/project_cluster" = "shared"
//   }
// }
// resource "aws_subnet" "rdsSubnet3" {
//   vpc_id                  = var.vpc_id
//   cidr_block              = "10.0.4.0/24"
//   map_public_ip_on_launch = "true"
//   availability_zone = "eu-west-1c"

//   tags = {
//     Name = "RDS-Pub-Sub-3"
//     "kubernetes.io/cluster/project_cluster" = "shared"
//   }
  
}

resource "aws_db_subnet_group" "rds_groups" {
  name = "rds_groups"
  subnet_ids = [aws_subnet.VPCSub.0.id, aws_subnet.VPCSub.1.id, aws_subnet.VPCSub.2.id]
}