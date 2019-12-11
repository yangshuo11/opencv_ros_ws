#!/usr/bin/env python

import rospy
import numpy as np
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2

def callback(data):
	global cv_bridge
	img_pub = rospy.Publisher('image_raw', Image, queue_size = 1)
	cv_img = bridge.imgmsg_to_cv2(data, desired_encoding = "passthrough")
	cv_img = cv_img - 1 
	cv_img90 = np.rot90(cv_img, -1)
	data90 = bridge.cv2_to_imgmsg(cv_img90, encoding = "bgr8")
	img_pub.publish(data90)
	rospy.loginfo(cv_img90[0][0])

def displayWebcam():
	rospy.init_node('webcam_display', anonymous = True)
	global bridge
	bridge = CvBridge()
	rospy.Subscriber('/camera/rgb/image_raw', Image, callback)
	rospy.spin()

if __name__ == '__main__':
	displayWebcam()