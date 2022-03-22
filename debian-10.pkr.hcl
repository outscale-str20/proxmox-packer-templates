template_name  = "debian-10-template"
iso_file       = "debian-10.10.0-amd64-netinst.iso"
iso_url        = "https://cdimage.debian.org/mirror/cdimage/archive/10.10.0/amd64/iso-cd/debian-10.10.0-amd64-netinst.iso"
iso_checksum   = "c433254a7c5b5b9e6a05f9e1379a0bd6ab3323f89b56537b684b6d1bd1f8b6ad"
http_directory = "./http/debian-10"
boot_command = [
  "<esc><wait>",
  "install ",
  " preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg ",
  "auto ", "locale=en_US.UTF-8 ",
  "kbd-chooser/method=us ",
  "keyboard-configuration/xkb-keymap=us ",
  "netcfg/get_hostname=debian ",
  "netcfg/get_domain=local ",
  "fb=false ",
  "debconf/frontend=noninteractive ",
  "console-setup/ask_detect=false ",
  "console-keymaps-at/keymap=us ",
  "grub-installer/bootdev=/dev/sda ",
  "passwd/username=packer ",
  "passwd/user-fullname=packer ",
  "passwd/user-password=packer ",
  "passwd/user-password-again=packer ",
  "<enter>"
]
provisioner = [
  "userdel --remove --force packer"
]