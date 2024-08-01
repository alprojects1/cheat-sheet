***Get QM commands*** 
echo 'export PATH=$PATH:/usr/sbin' >> ~/.bashrc  
source ~/.bashrc 

***Disable clustering*** 
systemctl stop pve-cluster 
systemctl stop corosync 
pmxcfs -l 
rm /etc/pve/corosync.conf 
rm /etc/corosync/* 
killall pmxcfs 
systemctl start pve-cluster 
Detailed lxc and QEMU inf  
pvesh get /cluster/resources --type vm 
pvesh get /pools 

***HA/Qdevice*** 
cp /etc/corosync/corosync.conf /etc/corosync/corosync.conf.backup 
ls -l /etc/corosync/qdevice/net/  
rm -rf /etc/corosync/qdevice/net/nssdb 
pvecm qdevice setup 0.0.0.0 -f 
pvecm qdevice forget 0.0.0.0 
systemctl restart corosync  
systemctl restart pve-cluster 
Q-device removal 
rm /etc/corosync/qdevice/net/nssdb/qdevice-net-node.p12 **both nodes** 
rm -rf /etc/corosync/qdevice/net/nssdb/ **on both**  
pvecm qdevice remove
