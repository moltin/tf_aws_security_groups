resource "aws_security_group" "dockercloud_sg" {
    name = "${var.namespace}_dockercloud_sg"
    description = "Dockercloud ports"
    vpc_id = "${var.vpc_id}"

    # Docker cloud
    ingress {
        from_port = 6783
        to_port = 6783
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Docker cloud
    ingress {
        from_port = 6783
        to_port = 6783
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
