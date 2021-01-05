# Raspberry pi

## Setup

1. Disk format

```
$ diskutil eraseDisk MS-DOS RPI ${disk}
```

2. OS install https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi

3. Add authorized key

4. Run script
```
$ ssh -i ${key} ${user}@${ip} 'sh' < setup.sh
```