resource "aws_s3_bucket" "bucket1" {
    bucket = "mybucket180615"
    
    tags = {
        name = "mybucket1"
    }
  
}