variable "region"{
    default = "us-east-1"

}

variable "instance_type"{
    default = "t2.micro"
}

variable "key_name"{
    description = "EC2 key pair name "
}