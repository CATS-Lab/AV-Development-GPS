GNSS ROS Documentation
===================================

Introduction
--------------------
This repository catches data from GNSS sensor and publish it on a Ros Topic for autoware to read from it.

Installation
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
Rostopic list:
.. image:: 

Rostopic echo /gps/gps:

.. image:: 

Publish
---------------------
Instructions to publish gps data to /nmea_sentence :
1. Create a custom config file for example nmea.yaml.

2. Write the following code in the config file:
receiver_ext_init_commands: 
- "LOG GPGGA ONTIME 1"
- "LOG GPGSA ONTIME 1"
- "LOG GPGSV ONTIME 1"
- "LOG GPRMC ONTIME 1"

NMEA_Sentence: {topic: /gps/nmea_sentence,    frame_id: gps}
3. Load nmea.yaml file in the custom launch file.

Connecting GPS data and publishing to nmea_sentence
Autoware (nmea2ftpose) uses /nmea_sentence topic for GPS data. 
.. image:: 

Convert to Lat Lng coordinate
---------------------
It is in ddmm.mmmm format for latitude and in dddmm.mmmm for longitude

- dd + mm.mmmm/60 for latitude
- ddd + mm.mmmm/60 for longitude

Here:
- Lat: 28+03.4178/60 = 28.0569 N
- Lng: 082+24.9503/60 = 82.4158 W

.. image:: 

And publishes to /gnss/pose:

.. image:: 

After building the nodes run:
roslaunch gnss_localizer nmea2tfpose.launch 
Topic: GNSS_POSE 

.. image:: 


