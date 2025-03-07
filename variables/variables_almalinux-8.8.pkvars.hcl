iso_url = "https://ftp.psnc.pl/linux/almalinux/8.8/isos/x86_64/AlmaLinux-8.8-x86_64-dvd.iso"
iso_checksum_type = "sha256"
iso_checksum = "635b30b967b509a32a1a3d81401db9861922acb396d065922b39405a43a04a31"
vm_name = "packer-almalinux88-g2"
disk_size = "70000"
disk_additional_size = ["150000"]
switch_name = "vSwitch"
output_directory = "output-almalinux88"
output_vagrant = "./vbox/packer-almalinux88-g2.box"
vlan_id = ""
memory = "4096"
cpus = "4"
vagrantfile_template = "./vagrant/hv_almalinux88_g2.template"
ssh_password = "password"
provision_script_options = "-z false"
boot_command = "c  setparams 'kickstart' <enter> linuxefi /images/pxeboot/vmlinuz inst.stage2=hd:LABEL=AlmaLinux-8-8-x86_64-dvd inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/almalinux/8/hyperv/ks.cfg<enter> initrdefi /images/pxeboot/initrd.img<enter> boot<enter>"
ansible_override = "variables/ansible/almalinux8.yml"
ansible_playbook = "extra/playbooks/provision_rhel.yaml"
ansible_variables= "extra/playbooks/provision_alma8_variables.yml"
neofetch_file="extra/files/gen2-linux/prepare_neofetch.sh"
uefi_file="extra/files/almalinux/8/uefi.sh"
