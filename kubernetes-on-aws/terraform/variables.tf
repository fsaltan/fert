variable control_cidr {
  description = "CIDR"
}

variable default_keypair_public_key {
  description = "Keypair-Public Key"
}

variable default_keypair_name {
  description = "KeyPair name"
  default = "new-key-pair"
}


variable vpc_name {
  description = "VPC Name"
  default = "kubernetes"
}

variable elb_name {
  description = "Kubernetes API ELB Name"
  default = "kubernetes"
}

variable owner {
  default = "ec2-user"
}

variable ansibleFilter {
  description = "`ansibleFilter` tag value added to all instances, to enable instance filtering in Ansible dynamic inventory"
  default = "Kubernetes01" 
}

# Networking setup
variable region {
  default = "us-east-2"
}

variable zone {
  default = "us-east-2b"
}

variable vpc_cidr {
  default = "10.43.0.0/16"
}

variable kubernetes_pod_cidr {
  default = "10.200.0.0/16"
}


# Instances Setup
variable amis {
  description = "Default AMI"
  type = "map"
  default = {
    us-east-2 = "ami-0ac047846c6ae3de9"
}
}
variable default_instance_user {
  default = "ec2-user"
}

variable etcd_instance_type {
  default = "t2.micro"
}
variable controller_instance_type {
  default = "t2.micro"
}
variable worker_instance_type {
  default = "t2.micro"
}


variable kubernetes_cluster_dns {
  default = "10.31.0.1"
}
