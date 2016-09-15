resource "aws_security_group" "rancher_sg" {
    name = "${var.namespace}_rancher_sg"
    description = "Rancher ports"
    vpc_id = "${var.vpc_id}"

    # Docker cloud
    ingress {
        from_port = 4500
        to_port = 4500
        protocol = "udp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Docker cloud
    ingress {
        from_port = 500
        to_port = 500
        protocol = "udp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
