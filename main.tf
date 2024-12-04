
module "payroll_london" {
  region        = "eu-west-2"
  source        = "./modules/payroll"
  ami_id        = "ami-0ae9642bc1885d7b5"
  instance_type = "t2.micro"
  bucket_name   = "gre-bucket-2"
}

module "payroll_oregon" {
  region        = "us-west-2"
  source        = "./modules/payroll"
  ami_id        = "ami-04dd23e62ed049936"
  instance_type = "t2.micro"
  bucket_name   = "gre-bucket-3"
}


/* provider "aws" {
  region = "us-east-1"
}
module "payroll_us" {
  source             = "./modules"
  region             = "us-east-1"
  ami_image_id       = "ami-002408ae0d46247d2"
  instance_type      = "t2.micro"
  environment        = "us"
  s3_bucket_name     = "payroll-docs"
  dynamodb_table_name = "payroll-table"
}
module "payroll_eu" {
  source             = "./modules"
  region             = "eu-north-1"
  ami_image_id       = "ami-03df4867f2f7abe1d"
  instance_type      = "t3.micro"
  environment        = "eu"
  s3_bucket_name     = "payroll-docs"
  dynamodb_table_name = "payroll-table"
}
*/