environment = "prod"

# EC2 — sizing for the fresh prod box (arm64/Graviton). The existing
# skill-tree-keypair is reused (key pairs outlive instances), so the .pem you
# already have keeps working.
instance_type    = "t4g.medium"
key_pair_name    = "skill-tree-keypair"
root_volume_size = 30

# Networking — account 463932052589, region us-east-2, default VPC, AZ us-east-2c.
vpc_id    = "vpc-0ad2ea8f5365da13a"
subnet_id = "subnet-0c431379f8a684731"

# SSH is the only inbound port (app traffic is via Cloudflare Tunnel).
# TODO before/after go-live: restrict to known IPs, e.g. ["1.2.3.4/32"].
ssh_allowed_cidrs = ["0.0.0.0/0"]
