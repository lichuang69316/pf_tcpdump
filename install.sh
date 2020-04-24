#! /usr/bin/sh

# 卸载可能有的 pf_ring 模块
rmmod pf_ring

# insmod pf_ring.ko [min_num_slots=x] [enable_tx_capture=1|0] [ enable_ip_defrag=1|0] [quick_mode=1|0]
# min_num_slots:      ring slots 最小值; 默认为 4096
# enable_tx_capture:  为 1 抓取从网口出去的包，否则不抓；默认 tx,rx 都抓取 
# enable_ip_defrag=1: 是否对 rx ip 分片进行重组
# quick_mode:         为1时工作在全速模式，但是每个接口只能有一个 socket
insmod pf_ring.ko min_num_slots=8192 quick_mode=1

# 显示 pf_ring 模块信息
cat /proc/net/pf_ring/info
