#!/usr/bin/env python
import socket
import pickle
import sys
import re
import thread

from std_msgs.msg import String
from sensor_msgs.msg import Image
import numpy as np
import random

import sys
# sys.path.remove('/opt/ros/kinetic/lib/python2.7/dist-packages')
import cv2
# sys.path.append('/opt/ros/kinetic/lib/python2.7/dist-packages')

def random_pick(some_list,probabilities):
    x = random.uniform(0,1)
    cumulative_probability=0.0
    for item,item_probability in zip(some_list,probabilities):
        cumulative_probability+=item_probability
        if x < cumulative_probability:
            break
    return item


def object_segment(cs, addr):
    # color_dist = {'ml00': {'Lower': np.array([110, 43, 46]), 'Upper': np.array([120, 255, 255])}, # deep blue
    #               'ml01': {'Lower': np.array([25, 43, 46]), 'Upper': np.array([35, 255, 255])}, # yellow
    #               'ml10': {'Lower': np.array([85, 43, 46]), 'Upper': np.array([95, 255, 255])}, # light blue
    #               'ml11': {'Lower': np.array([100, 43, 46]), 'Upper': np.array([104, 255, 255])}, # gray
    #               'mh00': {'Lower': np.array([40, 43, 46]), 'Upper': np.array([50, 255, 255])}, # green
    #               'box1': {'Lower': np.array([5, 43, 46]), 'Upper': np.array([15, 255, 255])}, # orange
    #               'box2': {'Lower': np.array([135, 43, 46]), 'Upper': np.array([145, 255, 255])}, # pink
    #               'box3': {'Lower': np.array([105, 43, 46]), 'Upper': np.array([108, 255, 255])}, # sky
    #               'red': {'Lower': np.array([165, 43, 46]), 'Upper': np.array([175, 255, 255])}, # red
    #             }

    color_dist = {'orange': {'Lower': np.array([5, 43, 46]), 'Upper': np.array([15, 255, 255])}, # orange
                  'pink': {'Lower': np.array([135, 43, 46]), 'Upper': np.array([145, 255, 255])}, 
                  'blue': {'Lower': np.array([107, 43, 46]), 'Upper': np.array([108, 255, 255])}, # sky
                }  

    position_color_list = []
    cv_blocks_ok = False
    cv_count = 0
    last_blocks = []
    last_x = 0
    stable = False
    storage_blocks = []
    block_areas = []
    
    # data = cs.recv(1024)

    cv_img = cv2.imread("/home/ys/MyGitRepository/despot_ws_project/src/despot_manip_project/examples/vis_manip_8objects/objects/target.jpg")
    t1 = cv2.getTickCount()
    # cv2.imshow("frame", cv_img)
    orgFrame = cv2.resize(cv_img, (320, 240), interpolation = cv2.INTER_CUBIC)
    img_h, img_w = orgFrame.shape[:2]
    img_center_x = img_w / 2
    img_center_y = img_h / 2

    gs_frame = cv2.GaussianBlur(orgFrame, (5,5), 0)
    hsv = cv2.cvtColor(gs_frame, cv2.COLOR_BGR2HSV)
    for i in color_dist:
        mask = cv2.inRange(hsv, color_dist[i]['Lower'], color_dist[i]['Upper'])
        mask = cv2.erode(mask, None, iterations = 2)
        kernel = np.ones((5, 5), np.uint8)
        mask = cv2.dilate(mask, kernel, iterations = 2)
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
                block_areas.append([i, int(area_j), int(j_x), int(j_y)])

    box1_type_recog = False
    box2_type_recog = False
    box3_type_recog = False
    box1_type = box2_type = box3_type = 0
    for item in block_areas:
        if 185 < item[2] < 190: # box1_position(189,115)
            box1_type_recog = True
            box1_type = item[0]
        if 108 < item[2] < 113: # box2_position(110,114)
            box2_type_recog = True
            box2_type = item[0]
        if 215 < item[2] < 220: # box3_position(218,114)
            box3_type_recog = True
            box3_type = item[0]

    if box1_type_recog == False:
            # print(random_pick(['pink','orange','blue'],[0.33333,0.33334,0.33333]))
        print("None obvious features of box1 can be observed \n")
        box1_type = random_pick(['pink','orange','blue'],[0.33333,0.33334,0.33333])
            # print("box1_type = " + box1_type)
    if box2_type_recog == False:
            # print(np.random.choice(['pink','orange','blue'], p = p.ravel()))
        print("None obvious features of box2 can be observed \n")
        box2_type = random_pick(['pink','orange','blue'],[0.33333,0.33334,0.33333])
            # print("box2_type = " + box2_type)
    if box3_type_recog == False:
            # print(np.random.choice(['pink','orange','blue'], p = p.ravel()))
        print("None obvious features of box3 can be observed \n")
        box3_type = random_pick(['pink','orange','blue'],[0.33333,0.33334,0.33333])
            # print("box3_type = " + box3_type)
    object_types = []
    object_types.append(box1_type)
    object_types.append(box2_type)
    object_types.append(box3_type)
    print(object_types)


    cs.send(bytes(object_types))
    # cs.send( bytes("clientRecv: %s," % recv_str,encoding="ascii"))
    # cs.send("Process finished".encode("utf8"))

    # cv2.line(orgFrame, (int(img_w / 2) - 20, int(img_h / 2)), (int(img_w / 2) + 20, int(img_h / 2)), (0, 0, 255), 1)
    # cv2.line(orgFrame, (int(img_w / 2), int(img_h / 2) - 20), (int(img_w / 2), int(img_h / 2) + 20), (0, 0, 255), 1)
    t2 = cv2.getTickCount()
    time_r = (t2 - t1)/cv2.getTickFrequency()
    fps = 1.0/time_r
    cv2.putText(orgFrame, "fps:" + str(int(fps)), (10, orgFrame.shape[0] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.65, (0, 0, 255), 2)
    cv2.imshow("orgFrame", orgFrame)
    cv2.waitKey(0)
    # cv2.destroyAllWindows()

    cs.close()


def read_image():
    host='127.0.0.1'
    port=8989
    try :
        s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    except socket.error,msg :
        print 'Failed to create socket. Error code: ' + str(msg[0])
        sys.exit();
    s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    s.bind((host,port))
    print "waiting for connection : "
    x=0
    s.listen(20)
    while True:
        c,addr=s.accept()
        print "connection from :" +str(addr)
        # object_segment(c, addr)
        thread.start_new_thread(object_segment,(c,addr))
        x=x+1
    s.close();

if __name__=='__main__':
    read_image()
