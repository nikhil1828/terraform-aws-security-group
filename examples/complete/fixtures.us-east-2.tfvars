region = "ap-southeast-1"

namespace = "eg"

environment = "ap1"

stage = "test"

name = "sg"

rules = [
  {
    key         = null # "ssh all"
    type        = "ingress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH wide open"
  },
  {
    key         = "telnet all"
    type        = "ingress"
    from_port   = 23
    to_port     = 23
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Telnet wide open"
  }
]
