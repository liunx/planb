# Copyright 1996-2021 Cyberbotics Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""ROS2 PlanB driver."""

import math
import rclpy
from geometry_msgs.msg import Twist
from webots_ros2_core.webots_node import WebotsNode


class PlanBDriver(WebotsNode):
    D1 = 10.0
    D2 = 20.0
    D3 = 20.0
    D4 = 10.0
    def __init__(self, args):
        super().__init__('planb_driver', args)
        self.__servos = {}
        self.__wheels = {}
        # Servos
        self.__servos['fl'] = self.robot.getDevice('ServoFrontL')
        self.__servos['fr'] = self.robot.getDevice('ServoFrontR')
        self.__servos['ml'] = self.robot.getDevice('ServoMiddleL')
        self.__servos['mr'] = self.robot.getDevice('ServoMiddleR')
        self.__servos['tl'] = self.robot.getDevice('ServoTailL')
        self.__servos['tr'] = self.robot.getDevice('ServoTailR')
        # Wheels
        self.__wheels['fl'] = self.robot.getDevice('WheelFrontL')
        self.__wheels['fr'] = self.robot.getDevice('WheelFrontR')
        self.__wheels['ml'] = self.robot.getDevice('WheelMiddleL')
        self.__wheels['mr'] = self.robot.getDevice('WheelMiddleR')
        self.__wheels['tl'] = self.robot.getDevice('WheelTailL')
        self.__wheels['tr'] = self.robot.getDevice('WheelTailR')

        # State
        self.__target_twist = Twist()
        self.__timer = 0.0

        # ROS interface
        self.create_subscription(Twist, 'cmd_vel', self.__cmd_vel_callback, 1)

    def __cmd_vel_callback(self, twist):
        self.__target_twist = twist

    def log(self, *args):
        self.get_logger().warn(' '.join([str(arg) for arg in args]))

    def servos_steering(self, radius):
        # left
        a1 = math.atan(self.D3 / (self.D1 + radius))
        a2 = 0
        a3 = -math.atan(self.D2 / (self.D1 + radius))
        # right
        a4 = math.atan(self.D3 / (radius - self.D1))
        a5 = 0
        a6 = -math.atan(self.D3 / (radius - self.D1))

        self.__servos['fl'].setPosition(a1)
        self.__servos['ml'].setPosition(a2)
        self.__servos['tl'].setPosition(a3)
        self.__servos['fr'].setPosition(a4)
        self.__servos['mr'].setPosition(a5)
        self.__servos['tr'].setPosition(a6)

    def motors_driving(self, accel, radius):
        # left
        v1 = accel * math.sqrt(self.D3**2 + (self.D1 + radius)**2) / (radius + self.D4)
        v2 = accel
        v3 = accel * math.sqrt(self.D2**2 + (self.D1 + radius)**2) / (radius + self.D4)
        # right
        v4 = accel * math.sqrt(self.D3**2 + (radius - self.D1)**2) / (radius + self.D4)
        v5 = accel * (radius - self.D4) / (radius + self.D4)
        v6 = accel * math.sqrt(self.D2**2 + (radius - self.D1)**2) / (radius + self.D4)

        self.__wheels['fl'].setPosition(self.__timer * (v1/accel) * math.pi)
        self.__wheels['ml'].setPosition(self.__timer * (v2/accel) * math.pi)
        self.__wheels['tl'].setPosition(self.__timer * (v3/accel) * math.pi)
        self.__wheels['fr'].setPosition(self.__timer * (v4/accel) * math.pi)
        self.__wheels['mr'].setPosition(self.__timer * (v5/accel) * math.pi)
        self.__wheels['tr'].setPosition(self.__timer * (v6/accel) * math.pi)


    def step(self, ms):
        super().step(ms)
        linear_x = self.__target_twist.linear.x
        angular_z = self.__target_twist.angular.z
        radius = 0
        if angular_z != 0:
            self.log("angular z: {}".format(angular_z))
            radius = self.D1 + self.D3 / math.tan(math.radians(abs(angular_z * 30)))
            self.servos_steering(radius)
        if linear_x != 0:
            self.log("linear x: {}".format(linear_x))
            self.motors_driving(60*abs(linear_x), radius)
            self.__timer += ms / 1000.0
        else:
            self.__timer = 0.0



def main(args=None):
    rclpy.init(args=args)
    driver = PlanBDriver(args=args)
    rclpy.spin(driver)
    rclpy.shutdown()


if __name__ == '__main__':
    main()
