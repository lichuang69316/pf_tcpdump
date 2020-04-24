#!/bin/bash
systemctl stop ya_wx_dpi.service 
echo"dpi服务已停止"
sh /root/program/dpdk/setup_dpdk_env.sh -x enp5s0f 
echo "网卡解绑成功"
cd /root/tools/pf_tcpdump_centos_7_1708/
ifconfig enp5s0f0 promisc
  987  ll
  988  rm -rf ji.pcap*
  989  ifconfig enp5s0f0 promisc
  990  cd ..
  991  ./netspeed_bits.sh enp5s0f0
  992  cd pf_tcpdump_centos_7_1708/
  993  ./pf_tcpdump -i enp5s0f0 -C 500 -w ji_2020_3_5.pcap
  994  ll
  995  cd /root/program/dpdk/
  996  ./setup_dpdk_env.sh -b enp5s0f0 
  997  systemctl start ya_wx_dpi
