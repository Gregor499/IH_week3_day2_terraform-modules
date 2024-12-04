provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
    ami = var.ami_id
    instance_type = var.instance_type

    tags = {
        Name = "PayrollAppServer"
    }
}

resource "aws_dynamodb_table" "employees" {
  name           = "Employees"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "EmployeeID"

  attribute {
    name = "EmployeeID"
    type = "S"
  }

  tags = {
    Name = "EmployeesTable"
  }
}

resource "aws_s3_bucket" "documents" {
  bucket = var.bucket_name

  tags = {
    Name = "DocumentsBucket" 
  }
}