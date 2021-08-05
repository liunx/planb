"""robot_controller controller."""

# You may need to import some classes of the controller module. Ex:
#  from controller import Robot, Motor, DistanceSensor
from controller import Robot
from math import pi

Servos = ['ServoFrontL', 'ServoFrontR', 'ServoMiddleL', 'ServoMiddleR', 'ServoTailL', 'ServoTailR']
Wheels = ['WheelFrontL', 'WheelFrontR', 'WheelMiddleL', 'WheelMiddleR', 'WheelTailL', 'WheelTailR']

# create the Robot instance.
robot = Robot()

# get the time step of the current world.
timestep = int(robot.getBasicTimeStep())

# You should insert a getDevice-like function in order to get the
# instance of a device of the robot. Something like:
#  motor = robot.getDevice('motorname')
#  ds = robot.getDevice('dsname')
#  ds.enable(timestep)
servos = []
for dev in Servos:
    servos.append(robot.getDevice(dev))

wheels = []
for dev in Wheels:
    wheels.append(robot.getDevice(dev))
F = 2.0   # frequency 2 Hz
t = 0.0   # elapsed simulation time
# Main loop:
# - perform simulation steps until Webots is stopping the controller
while robot.step(timestep) != -1:
    # Read the sensors:
    # Enter here functions to read sensor data, like:
    #  val = ds.getValue()
    position = t * 1.0 * pi
    for dev in wheels:
        dev.setPosition(position)
    t += timestep / 1000.0

    # Process sensor data here.

    # Enter here functions to send actuator commands, like:
    #  motor.setPosition(10.0)
    pass

# Enter here exit cleanup code.
