1 virtualbox 与宿主机时间同步问题
调阿里云oss 时发现virtual 开发机发送的请求总是超时，
查看date 发现时间差了三天，
1进入安装目录在virtualbox 安装目录运行
VBoxManage.exe list vms
该命令查看所有虚拟机列表
2设置指定虚拟机与宿主机时间同步
vboxmanage guestproperty set <虚拟机名/虚拟机UUID> --timesync-set-start
3停用时间同步
vboxmanage guestproperty set <虚拟机名/虚拟机UUID> --timesync-set-stop
