---
layout: post
title: Raspberry Pi Setup for NAS
date: 2015-03-15 16:40:16
description: march & april, looking forward to summer
tags:
  - "#RPI"
  - "#NAS"
  - "#docker"
  - "#Linux"
categories: personal
---
## Raspberry Pi Setup
- Board: Raspberry Pi 5
- OS: Raspberry Pi OS Lite (64-bit)

When you install the OS, you must connect the monitor for setup. 
Even if we install the lite version (CLI).

After that, we enter the command to open ssh:
```bash
sudo raspi-config
```
Then you can find the  `Interfacing Options`
Enter the `Interfacing Options` and find `ssh`.
In this section, we can enable `ssh` for remote access.

To check the IP address of RPI, we use this command:
```bash
ifconfig
```
In my case, I use the iptime for wifi.
Thus, the RPI address is 192.168.0.xxx
To connect with my laptop, I open the terminal.
```bash
ssh pi@192.168.0.xxx
```
Then, you can see the "enter the password":
```bash
pi@192.168.0.xxx's password:
```
After entering the password, you can easily access it from now on with this command:
```bash
pi@user:~$
```

Before installing or doing something, we extend the swap memory of RPI




## Install docker
For NAS setup, we have many options, but I use the docker.
To install the docker, we use this command:
```bash
curl -sSL https://get.docker.com | sh
```
After install the docker, I added the user to the docker group for using commands without `sudo`:
```bash
sudo usermod -aG docker $USER
```

Additionally, I use a few HDDs for backup.
However, if all the HDDs are separated, it is hard to handle.
Thus, we use the MergerFS

## Install MergerFS








