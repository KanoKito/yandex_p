virtual_machines = {
    "vm-1" = {
      vm_name      = "vm1" # Имя ВМ
      name         = "vm1"
      vm_desc      = "Яндекс практикум" # Описание
      vm_cpu       = 2 # Кол-во ядер процессора
      core_fraction = 5 # Гарантированная доля vCPU
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "deb-1-disk" # Название диска
      template     = "fd801rku4j14mv7fs703" # ID образа ОС для использования
      ip_address = "10.10.0.5"      
    },
    "vm-2" = {
      vm_name      = "vm2" # Имя ВМ
      name         = "vm2"
      vm_desc      = "Яндекс практикум"
      vm_cpu       = 2 # Кол-во ядер процессора
      core_fraction = 5 # Гарантированная доля vCPU
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "deb-2-disk" # Название диска
      template     = "fd801rku4j14mv7fs703" # ID образа ОС для использования
      ip_address = "10.10.0.3"
    },
    "vm-3" = {
      vm_name      = "vm3" # Имя ВМ
      name         = "vm3"
      vm_desc      = "Яндекс практикум"
      vm_cpu       = 2 # Кол-во ядер процессора
      core_fraction = 5 # Гарантированная доля vCPU
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "deb-3-disk" # Название диска
      template     = "fd801rku4j14mv7fs703" # ID образа ОС для использования
      ip_address = "10.10.0.4"
    }
}
