# OVS-BW-Limit-Through-PHP-Request


Note: There are two ways how to connect virtual switch to multiple controllers:

    by using ovs-vsctl set-controller

    by script

ovs-vsctl set-controller

    Start mininet with desired topology, e.g.:

        sudo mn --topo single,1 --controller 'remote,ip=10.1.2.3:6653' --switch ovsk,protocols=OpenFlow13 

    Set new controllers for given switch, e.g.:

        sudo ovs-vsctl set-controller s1 tcp:10.1.2.3:6653 tcp:10.1.2.4:6653 ... 

        NOTE: This operation causes the switch to reset its connection


https://wiki.opendaylight.org/view/OpenDaylight_OpenFlow_Plugin::Mininet_with_multiple_controllers
