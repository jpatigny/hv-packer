set PACKER_LOG=0
packer validate .\templates\hv_centos76_g2.json
packer build .\templates\hv_centos76_g2.json
