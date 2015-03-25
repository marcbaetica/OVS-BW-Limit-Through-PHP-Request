#run using sudo mn --custom customTopology.py --topo mytopo
#customTopology.py will be the name of the topology after running
#mytopo is for

from mininet.topo import Topo

class MyTopo( Topo ) :

   def __init__ (self):

	#initialize topology
	Topo.__init__(self)

	#adding hosts and switch
	firstHost = self.addHost("Jim's Laptop")
	secondHost = self.addHost("Admin Host")
	thirdHost = self.addHost("Jen's PC")
	fourthHost = self.addHost("XBox")
	ourSwitch = self.addSwitch('s1')

	#adding links
	self.addLink(firstHost, ourSwitch)
	self.addLink(secondHost, ourSwitch)
	self.addLink(thirdHost, ourSwitch)
	self.addLink(fourthHost, ourSwitch)

#leave this dictionary unless your topology changes. Use the string mytopo when running the topology 
topos = { 'mytopo': ( lambda: MyTopo() ) }
