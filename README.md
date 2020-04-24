# 使用说明
+ pf_tcpdump 是使用 pf_ring 增强后的 tcpdump 版本，可以减少高速抓包时的丢包率，使用上与 tcpdump 完全一致。
+ 使用前需要先执行：
```shell
chmod +x *
./install.sh
```
+ 之后可以像tcpdump一样使用
```shell
./pf_tcpdump -i eth0 -C 500 -w /root/info.pcap 
```
* -i 指定网口
* -C 指定单个包的大小为多少M
* -w 指定包的存放路径
* info.pcap 包名，必须以.pcap结尾
