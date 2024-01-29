# Static IP configuration
IP_ADDRESS="192.168.1.50"
NETMASK="255.255.255.0"
GATEWAY="192.168.1.1"
DNS="8.8.8.8 192.168.1.1"

case "$1" in
    start)
        echo "Setting static IP: $IP_ADDRESS/$NETMASK"
        echo "
        auto eth0
        iface eth0 inet static
              address $IP_ADDRESS
              netmask $NETMASK
              gateway $GATEWAY
              dns-nameservers $DNS" | sudo tee /etc/interface
        ;;
    stop)
        # Add any cleanup commands here if needed
        ;;
    *)
        echo "Usage: /etc/init.d/auto_start.sh {start|stop}"
        exit 1
        ;;
esac
