#!/system/bin/sh

#ifconfig eth0 192.168.1.100 netmask 255.255.255.0 up
#route add default gw 192.168.1.1 dev eth0
netcfg eth0 up
netcfg eth0 dhcp

# disable boot animation for a faster boot sequence when needed
boot_anim=`getprop ro.kernel.android.bootanim`
case "$boot_anim" in
    0)  setprop debug.sf.nobootanimation 1
    ;;
esac
