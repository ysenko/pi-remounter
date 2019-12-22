# pi-remounter
systemd service that automatically re-mount shares that were not mounted on boot

Configuration
-------------
Edit `MONITORED_FS` variable in ``./remount.sh`` to make sure you have all mountpoints that you want to be monitored. 


Installation
------------
```
sudo mkdir -p /opt/remounter/bin
sudo cp remount.sh /opt/remounter/bin/remount/sh
sudo cp remounter.service /etc/systemd/system/remounter.service
sudo systemctl daemon-reload
sudo systemctl enable remounter
```
