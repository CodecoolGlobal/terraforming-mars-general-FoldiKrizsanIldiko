output "db_pw" {
    value = random_password.pw.result  
    sensitive = true
}