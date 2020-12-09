echo Killing the snmp daemon...
sudo service snmpd stop

# Stabilize the system

echo Set CPU frequency
sudo cpupower frequency-set -f 2600000
echo Disabled THP
sudo sh -c "echo never > /sys/kernel/mm/transparent_hugepage/enabled"
sudo sh -c "echo never > /sys/kernel/mm/transparent_hugepage/defrag"
echo Disabled NUMA balancing
sudo sh -c "echo 0 > /proc/sys/kernel/numa_balancing"


