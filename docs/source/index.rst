GNSS ROS Documentation
===================================

Introduction
--------------------
This repository catches data from GNSS sensor and publish it on a Ros Topic for autoware to read from it.

Implementation
---------------------
- Set your Ethernet static IP ADDRESS as below:
 192.168.88.10  -  255.255.255  -  192.168.88.1

- Install OEM7 driver using this link <http://wiki.ros.org/novatel_oem7_driver>.

- Modify the  oem7_net.launch fileto set IP address and Port # as below: 

 sudo nano /opt/ros/$ROS_DISTRO/share/novatel_oem7_driver/launch/oem7_net.launch

IP and Port: 
- GNSS Receiver IP Address is: 192.168.88.29
- GNSS Receiver Port # is: 2000

Run
---------------------
- $ roslaunch novatel_oem7_driver oem7_net.launch

Or use below to set IP and Port in the command:

- $ roslaunch novatel_oem7_driver oem7_net.launch oem7_ip_addr:=192.168.88.29 oem_port:=2000
