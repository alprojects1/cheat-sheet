#!/bin/bash

#Clear PageCache, dentries, & inodes
echo "Clearing PageCache, dentries, and inodes..."
sync; echo 3 > /proc/sys/vm/drop_caches

# Free up swap space
echo "Freeing up swap space..."
swapoff -a && swapon -a

# Clear systemd journal logs
echo "Clearing systemd journal logs..."
journalctl --vacuum-time=1d

# Remove unused apt packages
echo "Removing unused packages..."
apt-get autoremove -y
apt-get autoclean -y

# Clear the APT cache
echo "Clearing APT cache..."
apt-get clean

# Clear system logs
echo "Clearing old logs..."
find /var/log -type f -name "*.log" -delete

# Clear thumbnail cache
echo "Clearing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*

# Clear temporary files
echo "Clearing temporary files..."
rm -rf /tmp/*
rm -rf /var/tmp/*

# Trim SSD (testing)
#if command -v fstrim &> /dev/null; then
#  echo "Trimming SSDs..."
#  fstrim -v /
#else
#  echo "fstrim command not found, skipping SSD trimming."
#fi

# Clear bash history
echo "Clearing bash history..."
history -c
echo > ~/.bash_history


echo "Memory Has Been Moefed & All System's Heffed You Ape"
