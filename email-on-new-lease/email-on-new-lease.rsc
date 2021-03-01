:log info "Lease script started";

:if ($leaseBound = "1") do={
	
	:foreach newleasedevice  in=[/ip dhcp-server lease find where dynamic=yes and address=$leaseActIP] do={

		:log info "New DHCP client on the network IP: $leaseActIP, MAC: $leaseActMAC, Host: $"lease-hostname""

		:tool e-mail send to=xxxxxxxxx subject="New DHCP client on the network" body="MAC: $leaseActMAC,
		IP: $leaseActIP,
		Host: $"lease-hostname",
		$leaseBound"
	};
}
:log info "Lease script ended";
