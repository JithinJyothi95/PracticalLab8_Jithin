resource "aws_db_instance" "postgres" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "15.12"
  instance_class       = "db.t3.micro"
  db_name              = "lab8db"
  username             = "dbadmin"
  password             = var.db_password
  parameter_group_name = "default.postgres15"
  publicly_accessible  = true
  skip_final_snapshot  = true
  tags = { Name = "Lab8_RDS_Jithin" }
}

output "endpoint" {
  value = aws_db_instance.postgres.endpoint
}

variable "db_password" {}