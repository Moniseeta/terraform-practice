resource "null_resource"  "operation1" {             
provisioner "local-exec" {                                      
command = "echo 'Hello all' >> file1.txt"
}
}

resource "null_resource"  "operation2" {
provisioner "local-exec" {
command = "echo 'HEllo all again from operation2' >> file1.txt"
}
}