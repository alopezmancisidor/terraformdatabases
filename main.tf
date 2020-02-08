


resource "ibm_database" "databases-for-mongodb" {
  name              = "databasefromterraform"
  plan              = "standard"
  location          = "eu-de"
  service           = "databases-for-mongodb"
  resource_group_id = "28f6a8857220498198236ee5af6bb31d"
  tags              = ["demo:terraform", "demo:databases"]

  adminpassword                = "password12"
  members_memory_allocation_mb = 3072
  members_disk_allocation_mb   = 61440
  service_endpoints = "private"
  users {
    name     = "user123"
    password = "password12"
  }
  whitelist {
    address     = "172.168.1.1/32"
    description = "desc"
  }
}


