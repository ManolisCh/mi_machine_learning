# mi_machine_learning
Containing all the files to experiment with machine learning and data from the MI and HI experiments

This readme will serve as a documentation for now:

# Topics in the ros bags

| Topic | type | comments |
| ------ | ------ | ----- |
| /cmd_vel | geometry_msgs/Twist | This is velocity that the robot is commanded to move. Linear and angular with ref frame base_link (center of robot). This velocity can be given either from teleop or autonomy |
| /teleop/cmd_vel | geometry_msgs/Twist | This is the velocity that the robot is commanded to move from the operator via the joystick (teleoperation). |
| /joy | sensor_msgs/Joy | Raw readings from joystick/joystick ROS drivers. Reports the state of a joysticks axes and buttons. This is from the joystick used by the operator to control the robot.|
| /joy2 | sensor_msgs/Joy | Raw readings from joystick. This is from the joystick used by the experimenter to control the experiment, e.g. experiment start/stop stamp, seconary task timestamps, noise reset etc|

