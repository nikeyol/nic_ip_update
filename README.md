# nic_ip_update
1. Make sure the executable for the script
sudo chmod +x /etc/init.d/auto_start.sh

2. Create a symbolic link to the script in the path /etc/rc.d
sudo ln -s /etc/init.d/auto_start.sh /etc/rc.d/

3. Enable the script to run at startup:
sudo update-rc.d auto_start.sh defaults

Now, the script will automatically start when the system boots up.

