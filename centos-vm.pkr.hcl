source "virtualbox-iso" "vm" {
    vm_name = "CentOS"
    guest_os_type = "RedHat_64"

    iso_url = "CentOS-7-x86_64-Everything-2009.iso"
    iso_checksum = "file:sha256sum.txt"
    guest_additions_mode = "disable"

    vboxmanage = [
        ["modifyvm", "{{.Name}}", "--memory", "2000"]
        ["modifyvm", "{{.Name}}", "--cpus", "2"]
    ]
    disk_size = "30000"

    http_directory = "http"
    boot_wait = "10s"
    boot
    
}