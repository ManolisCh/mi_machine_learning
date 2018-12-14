# mi_machine_learning
Containing all the files to experiment with machine learning and data from the MI and HI experiments

This readme will serve as a documentation for now:

# Data transformation (bag -> csv) 
First we need to decide what topics are useful for the machine learing algorithm that we are going to develop.

With a simple shell script we can create txt files with topics/msgs info for all files in a directory.
>rosbaginfo_to_txt.sh

In order to use rosbaginfo_to_txt.sh you need:
 - To put the script inside the directory with the bag files.
 - Make it executable from properties and before running the script (./rosbaginfo_to_txt.sh) and run the command chmod -x rosbaginfo_to_txt.sh
 
 The .txt files will be created with info about the topics that are used in each bag file

A list of all the topics was made in order to decide what topics/data is going to be used. The topics are presented the following worksheet.
>topic_list.docx

After selecting the topics/data we transform the .bag to .scv files 

# To transform .bag files to .csv 
follow the link
> https://github.com/AtsushiSakai/rosbag_to_csv

# Topics in the ros bags

| Topic | type | comments |
| ------ | ------ | ----- |
| /cmd_vel | geometry_msgs/Twist | This is velocity that the robot is commanded to move. Linear and angular with ref frame base_link (center of robot). This velocity can be given either from teleop or autonomy.|
| /teleop/cmd_vel | geometry_msgs/Twist | This is the velocity that the robot is commanded to move from the operator via the joystick (teleoperation).|
| /odom | nav_msgs/Odometry | This represents an estimate of a position and velocity in free space.| 
| /joy | sensor_msgs/Joy | Raw readings from joystick/joystick ROS drivers. Reports the state of a joysticks axes and buttons. This is from the joystick used by the operator to control the robot.|
| /joy2 | sensor_msgs/Joy | Raw readings from joystick. This is from the joystick used by the experimenter to control the experiment, e.g. experiment start/stop stamp, seconary task timestamps, noise reset etc.|
| /trajectory | nav_msgs/Path | An array of poses that represents a Path for a robot to follow. |

