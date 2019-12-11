#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image
import numpy as np

import sys
# sys.path.remove('/opt/ros/kinetic/lib/python2.7/dist-packages')
import cv2
# sys.path.append('/opt/ros/kinetic/lib/python2.7/dist-packages')
from cv_bridge import CvBridge, CvBridgeError

# ml00 {R:0.34, G:0.42, B:0.83} -> (115.10204081632654, 150.54216867469876, 211.64999999999998) 
# ml01 {R:0.85, G:0.85, B:0.44} -> (30.0, 123.0, 216.75)
# ml10 {R:0.22, G:0.70, B:0.71} -> (90.61224489795919, 175.98591549295773, 181.04999999999998)
# ml11 {R:0.43, G:0.51, B:0.58} -> (104.0, 65.94827586206895, 147.89999999999998)
# mh00 {R:0.39, G:0.79, B:0.06} -> (46.43835616438356, 235.63291139240505, 201.45000000000002)
# box1-left <{R:0.84, G:0.21, B:0.42}> -> (170.0, 191.25, 214.2) # red
# box1-right <{R:1.00, G:0.36, B:0.06}> -> (9.574468085106384, 239.7, 255.0) # orange
# box2-left <{R:0.84, G:0.21, B:0.42}> -> (170.0, 191.25, 214.2)
# box2-right <{R:0.88, G:0.64, B:1.00}> -> (140.0, 91.8, 255.0)
# box3-left <{R:0.84, G:0.21, B:0.42} -> (170.0, 191.25, 214.2)
# box3-right <{R:0.41, G:0.64, B:1.00}> -> (108.30508474576271, 150.45000000000002, 255.0)


def callback(data):

    # color_dist = {'red': {'Lower': np.array([0, 60, 60]), 'Upper': np.array([6, 255, 255])},
    #           'blue': {'Lower': np.array([100, 80, 46]), 'Upper': np.array([124, 255, 255])},
    #           'green': {'Lower': np.array([35, 43, 35]), 'Upper': np.array([90, 255, 255])},
    #           }

    color_dist = {'ml00': {'Lower': np.array([110, 43, 46]), 'Upper': np.array([120, 255, 255])}, # deep blue
                  'ml01': {'Lower': np.array([25, 43, 46]), 'Upper': np.array([35, 255, 255])}, # yellow
                  'ml10': {'Lower': np.array([85, 43, 46]), 'Upper': np.array([95, 255, 255])}, # light blue
                  'ml11': {'Lower': np.array([100, 43, 46]), 'Upper': np.array([104, 255, 255])}, # gray
                  'mh00': {'Lower': np.array([40, 43, 46]), 'Upper': np.array([50, 255, 255])}, # green
                  'box1': {'Lower': np.array([5, 43, 46]), 'Upper': np.array([15, 255, 255])}, # orange
                  'box2': {'Lower': np.array([135, 43, 46]), 'Upper': np.array([145, 255, 255])}, # pink
                  'box3': {'Lower': np.array([105, 43, 46]), 'Upper': np.array([108, 255, 255])}, # sky
                  'red': {'Lower': np.array([165, 43, 46]), 'Upper': np.array([175, 255, 255])}, # red
                }          

    position_color_list = []
    cv_blocks_ok = False
    cv_count = 0
    last_blocks = []
    last_x = 0
    stable = False
    storage_blocks = []

    # rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    scaling_factor = 0.5
    global count, bridge
    count = count + 1
    if count == 1:
        count = 0
        cv_img = bridge.imgmsg_to_cv2(data, "bgr8")
        t1 = cv2.getTickCount()
        cv2.imshow("frame", cv_img)
        orgFrame = cv2.resize(cv_img, (320,240), interpolation = cv2.INTER_CUBIC)
        img_h, img_w = orgFrame.shape[:2]
        img_center_x = img_w / 2
        img_center_y = img_h / 2
        print(int(img_h))
        print(int(img_w))
        if cv_blocks_ok is False:
            gs_frame = cv2.GaussianBlur(orgFrame, (5, 5), 0)
            hsv = cv2.cvtColor(gs_frame, cv2.COLOR_BGR2HSV)
            for i in color_dist:
                mask = cv2.inRange(hsv, color_dist[i]['Lower'], color_dist[i]['Upper'])
                mask = cv2.erode(mask, None, iterations=2)
                kernel = np.ones((5, 5), np.uint8)
                mask = cv2.dilate(mask, kernel, iterations=2)
                # cv2.imshow('mask', mask)
                cnts = cv2.findContours(mask.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[-2]

                if len(cnts) > 0:
                    for j in cnts:
                        rect_j = cv2.minAreaRect(j)
                        box_j = cv2.boxPoints(rect_j)
                        cv2.drawContours(orgFrame, [np.int0(box_j)], -1, (0, 255, 255), 2)
                        area_j = cv2.contourArea(j)
                        j_x, j_y = rect_j[0]
                        res = str(i) + ": area = " + str(int(area_j)) + "; positon = (" + str(int(j_x)) + "," + str(int(j_y)) + ")"
                        print(res)

                    print("-----------------------------")
                    c = max(cnts, key=cv2.contourArea)
                    rect = cv2.minAreaRect(c)
                    box = cv2.boxPoints(rect)
                    # cv2.drawContours(orgFrame, [np.int0(box)], -1, (0, 255, 255), 2)
                    c_x, c_y = rect[0]
                    h, w = rect[1]
                    c_angle = rect[2]
                    if h * w >= 1350:
                        cv2.circle(orgFrame, (int(c_x), int(c_y)), 3, (216, 0, 255), -1)
                        cv2.putText(orgFrame, "(" + str(int(c_x)) + ", " + str(int(c_y)) + ")",(int(c_x), int(c_y)), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (0, 0, 255), 2)
                        last_blocks.append([int(c_x), i])
                        if stable:
                            storage_blocks.append((int(c_y), int(c_x), i, int(c_angle)))

            stable = False
            if len(last_blocks) > 0:
                if -10 <= int(last_blocks[len(last_blocks)-1][0] - last_x) <= 10:
                    print(cv_count)
                    cv_count += 1
                else:
                    cv_count = 0
                last_x = int(last_blocks[len(last_blocks) - 1][0])
                last_blocks = []
                if cv_count >= 5:
                    cv_count = 0
                    stable = True

                if len(storage_blocks) > 0:
                    max_y = storage_blocks.index(max(storage_blocks)) 
                    position_color_list.append((storage_blocks[max_y][2], storage_blocks[max_y][1], storage_blocks[max_y][0], storage_blocks[max_y][3]))
                    storage_blocks = []
        cv2.line(orgFrame, (int(img_w / 2) - 20, int(img_h / 2)), (int(img_w / 2) + 20, int(img_h / 2)), (0, 0, 255), 1)
        cv2.line(orgFrame, (int(img_w / 2), int(img_h / 2) - 20), (int(img_w / 2), int(img_h / 2) + 20), (0, 0, 255), 1)
        t2 = cv2.getTickCount()
        time_r = (t2 - t1) / cv2.getTickFrequency() 
        fps = 1.0/time_r
        cv2.putText(orgFrame, "fps:" + str(int(fps)), (10, orgFrame.shape[0] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (0, 0, 255), 2)#(0, 0, 255)BGR
        cv2.imshow("orgFrame", orgFrame)

        cv2.waitKey(3)
    else:
        pass
   

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()



def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    global count, bridge
    count = 0
    bridge = CvBridge()
    rospy.Subscriber("/camera/rgb/image_raw", Image, callback)
    rospy.spin()


if __name__ == '__main__':
    listener()