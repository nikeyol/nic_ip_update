# Static IP configuration
IP_ADDRESS="192.168.1.50"
NETMASK="24"
GATEWAY="192.168.1.1"

case "$1" in
    start)
        echo "Setting static IP: $IP_ADDRESS/$NETMASK"
        ip addr add $IP_ADDRESS/$NETMASK dev eth0
        ip route add default via $GATEWAY
        ifup eth0
        ;;
    stop)
        # Add any cleanup commands here if needed
        ;;
    *)
        echo "Usage: /etc/init.d/auto_start.sh {start|stop}"
        exit 1
        ;;
esac
