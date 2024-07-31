resource "aws_s3_bucket" "mybucket" {
bucket = "moniseeta-rps-terraform-bucket11"
tags = {
Name = "myfirstbucket"
}
}

resource "local_file" "welcome" {
  filename = "index.html"
  content = "Welcome. Good morning"
}

resource "aws_s3_bucket_object" "myobject" {
bucket = aws_s3_bucket.mybucket.id
key = "myprojectpage"
acl = "private"
source = "index.html"
# etag = filemd5 ("index.html")
}