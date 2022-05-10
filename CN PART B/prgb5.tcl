# This script is created by NSG2 beta1
# <http://wushoupong.googlepages.com/nsg>

#===================================
#     Simulation parameters setup
#===================================
set val(stop)   10.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Open the NS trace file
set tracefile [open out.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open out.nam w]
$ns namtrace-all $namfile

#===================================
#        Nodes Definition        
#===================================
#Create 4 nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]

#===================================
#        Links Definition        
#===================================
#Createlinks between nodes
$ns duplex-link $n0 $n2 1000kb 10ms DropTail
$ns queue-limit $n0 $n2 50
$ns duplex-link $n1 $n2 1000kb 10ms DropTail
$ns queue-limit $n1 $n2 50
$ns duplex-link $n3 $n2 1000kb 10ms DropTail
$ns queue-limit $n3 $n2 50

#Give node position (for NAM)
$ns duplex-link-op $n0 $n2 orient right-down
$ns duplex-link-op $n1 $n2 orient left-down
$ns duplex-link-op $n3 $n2 orient right-up

#===================================
#        Agents Definition        
#===================================
set tcp0 [ new Agent/TCP ]
$ns attach-agent $n0 $tcp0

set tcp2 [ new Agent/TCP ]
$ns attach-agent $n1 $tcp2




set sink1 [new Agent/TCPSink]
$ns attach-agent $n3 $sink1
$ns connect $tcp0 $sink1

set sink [new Agent/TCPSink]
$ns attach-agent $n3 $sink
$ns connect $tcp2 $sink

$tcp0 set class_ 1
$ns color 1 Blue

$tcp2 set class_ 2
$ns color 2 Red
#===================================
#        Applications Definition        
#===================================
#Setup a FTP Application over TCP connection
set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp0

set telnet0 [new Application/Telnet]
$telnet0 set interval_ 0.005
$telnet0 attach-agent $tcp2

$ns at 1.0 "$ftp0 start"
$ns at 2.0 "$ftp0 stop"
$ns at 1.0 "$telnet0 start"
$ns at 3.0 "$telnet0 stop"

#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam out.nam &
    exit 0
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
