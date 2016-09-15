resource "aws_security_group" "ssh_sg" {
    name = "${var.namespace}_ssh_sg"
    description = "Default SSH port"
    vpc_id = "${var.vpc_id}"

    # SSH
    ingress {
        from_port = "${var.ssh_port}"
        to_port = "${var.ssh_port}"
        protocol = "tcp"
        cidr_blocks = ["${var.ssh_cidr_block}"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
