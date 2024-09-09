## fio (flexible I/O Tester)


- ***what this test is not doing: testing a single read/write cycle for the size of the file***   
- ***what this test is doing: reads/writes for 60 seconds and then outputting the amount of data read/wrote***



## Benchmark: 

| Command                                                                                                                      | Description                       |
| ---------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| `fio --name=rand_read --directory=/mnt --ioengine=libaio --rw=randread --bs=4k --direct=1 --size=1G --numjobs=4 --time_based --runtime=60 --group_reporting` | 4K Random Read                    |
| `fio --name=rand_write --directory=/mnt --ioengine=libaio --rw=randwrite --bs=4k --direct=1 --size=1G --numjobs=4 --time_based --runtime=60 --group_reporting` | 4K Random Write                   |
| `fio --name=concurrent_read --directory=/mnt --ioengine=libaio --rw=read --bs=4k --direct=1 --size=1G --numjobs=4 --iodepth=32 --time_based --runtime=60 --group_reporting` | Concurrent I/O Depth Read         |
| `fio --name=concurrent_write --directory=/mnt --ioengine=libaio --rw=write --bs=4k --direct=1 --size=1G --numjobs=4 --iodepth=32 --time_based --runtime=60 --group_reporting` | Concurrent I/O Depth Write        |
| `fio --name=seq_read --directory=/mnt --ioengine=libaio --rw=read --bs=128k --direct=1 --size=1G --numjobs=1 --time_based --runtime=60 --group_reporting` | Sequential Read (128KB Block)     |
| `fio --name=seq_write --directory=/mnt --ioengine=libaio --rw=write --bs=128k --direct=1 --size=1G --numjobs=1 --time_based --runtime=60 --group_reporting` | Sequential Write (128KB Block)    |
| `fio --name=seq_read_write --ioengine=libaio --rw=readwrite --bs=1m --direct=1 --size=10G --numjobs=1 --time_based --runtime=60 --group_reporting` | Large Sequential Read/Write (1M)  |
| `fio --name=rand_read_write --ioengine=libaio --rw=randrw --bs=4k --direct=1 --size=10G --numjobs=4 --time_based --runtime=60 --group_reporting` | Large Random Read/Write (4K)      |
| `fio --name=vm_clone_sim --ioengine=libaio --rw=write --bs=4k --direct=1 --size=10G --numjobs=4 --time_based --runtime=60 --group_reporting` | Proxmox VM Clone (10GB)           |
| `fio --name=random_rw --ioengine=libaio --rw=randrw --bs=4k --direct=1 --size=1G --numjobs=4 --runtime=60 --group_reporting --directory=/mnt/nfs` | VM Simulation Random Read/Write   |
| `fio --name=seq_read --ioengine=libaio --rw=read --bs=1M --direct=1 --size=2G --numjobs=4 --runtime=60 --group_reporting --directory=/mnt/nfs` | VM Simulation Large Sequential Read|
| `fio --name=seq_write --ioengine=libaio --rw=write --bs=1M --direct=1 --size=2G --numjobs=4 --runtime=60 --group_reporting --directory=/mnt/nfs` | VM Simulation Large Sequential Write |


