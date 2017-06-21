# Intro

This repo hosts the material that I used for my presentation at AnsibleFest 2017
in London. Slides are also available at the root of the repo.


# LAB big-picture

![alt text](https://github.com/xens/ansiblefest2k17/raw/master/diagrams/lab_bigpicture.png "LAB bigpicture")

# Vagrantbox

The lab run by connecting CumulusLinux VMs that represent network switches, vagrant is the mechanism 
that starts the VMs and wire them properly.

The vagrant_libvirt_box.sh`script contains almost all the dependencies to have something working.

I'm personally using it inside a big VM on OpenStack with libvirt/kvm (KVM nested virtualization) but it will
of course also work on baremetal. With nested virtualization I'm having load issue when I have more than 8VMs
running simultaneously.

The lab topology is written in the `.dot` format and can be converted using CumulusLinux topology converter.
The your environment is almost ready to get deployed using `vagrant up.
