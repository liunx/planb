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

        # ROS interface
        self.create_subscription(Twist, 'cmd_vel', self.__cmd_vel_callback, 1)

    def __cmd_vel_callback(self, twist):
        self.__target_twist = twist

    def log(self, *args):
        self.get_logger().warn(' '.join([str(arg) for arg in args]))

    def step(self, ms):
        super().step(ms)
        linear_y = self.__target_twist.linear.y
        linear_x = self.__target_twist.linear.x
        if linear_y != 0:
            self.log("linear y: {}".format(linear_y))
        if linear_x != 0:
            self.log("linear x: {}".format(linear_x))


def main(args=None):
    rclpy.init(args=args)
    driver = PlanBDriver(args=args)
    rclpy.spin(driver)
    rclpy.shutdown()


if __name__ == '__main__':
    main()
