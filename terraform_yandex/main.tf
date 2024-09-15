resource "yandex_compute_disk" "boot-disk" {
  for_each = var.virtual_machines
  name     = each.value["disk_name"]
  type     = "network-hdd"
  zone     = "ru-central1-b"
  size     = each.value["disk"]
  image_id = each.value["template"]
}

resource "yandex_vpc_network" "network-1" {
  name = "yp-network2"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "yp-subnet2"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["10.10.0.0/24"]
}

resource "yandex_compute_instance" "virtual_machine" {
  for_each        = var.virtual_machines
  name = each.value["vm_name"]
  hostname = each.value["vm_name"]  
  resources {
    core_fraction = each.value["core_fraction"]
    cores  = each.value["vm_cpu"]
    memory = each.value["ram"]
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    ip_address =each.value["ip_address"] 
    nat       = true
  }
  metadata = {
    user-data = "${file("~/yandex_p/terraform_yandex/meta.txt")}"
  }
  scheduling_policy {
    preemptible = true
  }
}
