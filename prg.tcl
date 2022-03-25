set val(stop) 10.0 ;#time of simulation end
#Create a ns simulator 
set ns [new Simulator]
#Open the NS trace file
set tracefile [open p1.tr w]
$ns trace-all $tracefile
#Open the NAM trace file 
set namfile [open p1.nam w]
$ns namtrace-all $namfile
#Define a 'finish' procedure 
proc finish {} {
global ns tracefile namfile
$ns flush-trace 
close $tracefile 
close $namfile 
exec nam p1.nam &
exec awk -f prg1.awk p1.tr&
exit 0
}
# creates 3 nodes 
set n0 [$ns node] 
set n1 [$ns node] 
set n2 [$ns node]
$ns duplex-link $n0 $n1 200Mb 10ms DropTail # establishing links
$ns duplex-link $n1 $n2 20Mb 1000ms DropTail
$ns queue-limit $n0 $n1 10


#Setup a UDP connection 
set udp1 [new Agent/UDP]
$ns attach-agent $n0 $udp1 
set null2 [new Agent/Null]
$ns attach-agent $n2 $null2
$ns connect $udp1 $null2
$udp1 set packetSize_ 1000


set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
$cbr1 set packetSize_ 500
$cbr1 set rate_ 2.0Mb
$cbr1 set interval_ 0.005

$ns at 0.1 "$cbr1 start"
$ns at 9.0 "$cbr1 stop"
$ns at 1.0 "finish" 
$ns run
