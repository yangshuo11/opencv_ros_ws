#include <ros/ros.h>
#include <iostream>
#include <math.h>
#include <vector>
#include <string>
#include "std_msgs/String.h"
#include <sstream>
// OpenCv
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>

// socket

#include<stdio.h> 
#include<string.h>    
#include<string>  
#include<sys/socket.h>    
#include<arpa/inet.h> 
#include<netdb.h>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <vector> 

using namespace std;
using namespace cv;

int main(int argc, char *argv[]) {
	int socket_desc;
	char sorted[2000];

	socket_desc = socket(AF_INET, SOCK_STREAM, 0);
	if (socket_desc == -1) {
		printf("Could not create socket");
	}

	struct sockaddr_in server;

	server.sin_addr.s_addr = inet_addr("127.0.0.1");
	server.sin_family = AF_INET;
	server.sin_port = htons(8989);
	if (connect(socket_desc, (struct sockaddr*)&server, sizeof(server)) < 0) {
		cout << "connect error";
		return 1;
	}
	cout << "Connected" << endl;
    int count = 0;
    char buf[1024];
    strcpy(buf, "received image");
    int n = strlen(buf);
    while(count == 0) {
        if( send(socket_desc , buf , n, 0) < 0) {
        	perror("Send failed : ");
        	return false;
        }
        cout<<"Data send\n";
        n =recv( socket_desc ,buf, sizeof(buf) , 0);
        buf[n] = 0;
        printf("Got: %s \n", buf);
        count = count + 1;
    }
    return 0;
}






typedef struct color 
{
	int hl;
	int sl;
	int vl;
	int hh;
	int sh;
	int vh;
} Color;

void chatterCallback(const sensor_msgs::ImageConstPtr& msg) {

	vector<Color> color_dist;
	Color ml00, ml01, ml10, ml11, mh00, box1, box2, box3, red;
	ml00.hl = 110; ml00.hh = 120;
	ml01.hl = 25; ml01.hh = 35;
	ml10.hl = 85; ml10.hh = 95;
	ml11.hl = 100; ml11.hh = 104;
	mh00.hl = 40; mh00.hh = 50;
	box1.hl = 5; box1.hh = 15;
	box2.hl = 135; box2.hh = 145;
	box3.hl = 105; box3.hh = 108;
	red.hl = 165; red.hh = 175;
	ml00.sl = ml01.sl = ml10.sl = ml11.sl = mh00.sl = box1.sl = box2.sl = box3.sl = red.sl = 43;
	ml00.vl = ml01.vl = ml10.vl = ml11.vl = mh00.vl = box1.vl = box2.vl = box3.vl = red.vl = 46;
	ml00.sh = ml01.sh = ml10.sh = ml11.sh = mh00.sh = box1.sh = box2.sh = box3.sh = red.sh = 255;
	ml00.vh = ml01.vh = ml10.vh = ml11.vh = mh00.vh = box1.vh = box2.vh = box3.vh = red.vh = 255;
	color_dist.push_back(ml00);
	color_dist.push_back(ml01);
	color_dist.push_back(ml10);
	color_dist.push_back(ml11);
	color_dist.push_back(mh00);
	color_dist.push_back(box1);
	color_dist.push_back(box2);
	color_dist.push_back(box3);

	try {
		Mat colorImg;
		Mat orgFrame;
		Mat gs_frame;
		Mat hsv;
		Mat mask;
		Mat erode_mask;
		Mat dilate_mask;
		vector<vector<Point> > contours;
		vector<Vec4i> hierarchy;
		cv_bridge::CvImagePtr cv_ptr;

		cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
		colorImg = cv_ptr->image;
		imshow("view",colorImg);
		cv::resize(colorImg, orgFrame, cv::Size(320, 240));
		int img_h = orgFrame.rows; // 240
		int img_w = orgFrame.cols; //320
		cout << "img_h = " << img_h << "; img_w = " << img_w << endl;
		int img_center_x = img_h/2;
		int img_center_y = img_w/2;
		cv::GaussianBlur(orgFrame, gs_frame, cv::Size(5,5), 0.0, 0.0); //(src, dst,cv::Size(ksize1,ksize2), sigma1, sigma2)
		// imshow("gs", gs_frame);
		cv::cvtColor(gs_frame, hsv, cv::COLOR_BGR2HSV); // cvtColor(InputArray src, OutputArray dst, int code, int dstCn=0 )
		for (vector<Color>::const_iterator iter = color_dist.begin(); iter != color_dist.end(); ++iter) {
			cv::inRange(gs_frame, Scalar(iter->hl, iter->sl, iter->vl), Scalar(iter->hh, iter->sh, iter->vh), mask);
			imshow("mask", mask);
			Mat element = getStructuringElement(MORPH_RECT, Size(3,3));
			cv::erode(mask, erode_mask, element);
			imshow("erode", erode_mask);
			cv::dilate(erode_mask, dilate_mask, cv::Mat());
			imshow("dilate", dilate_mask);
			cv::findContours(dilate_mask, contours, hierarchy, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE, Point());
			// vector<RotatedRect> minRect(contours.size());
  	// 		vector<RotatedRect> minEllipse(contours.size());
			if (contours.size() > 0) {
				for (int i=0; i < contours.size(); i++) {
					RotatedRect rect = minAreaRect(Mat(contours[i]));
					cv::drawContours(orgFrame, Mat(contours[i]), -1, Scalar(255, 0, 255));
					// Point2f P[4];
					// rect.points(P);
					// for(int j = 0; j <= 3; j++) {
					// 	line(orgFrame, P[j], P[(j+1)%4], cv::Scalar(255), 2);

					// }
					imshow("rect", orgFrame);
				}
			}
		}









		cv::waitKey(1);
		// cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
		// cv_bridge::CvImagePtr cv_ptr;
		// Mat colorImg;
		// Mat hsvImg;
		// cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
		// colorImg = cv_ptr->image;
		// cvtColor(colorImg, hsvImg, CV_BGR2HSV);

		// vector<Mat>hsvSplit;
		// hsvSplit.resize(3);
		// equalizeHist(hsvSplit[2], hsvSplit[2]);
		// merge(hsvSplit, hsvImg);
		// cv::imshow("hsvImg", hsvImg);
	}
	catch (cv_bridge::Exception& e) {
		ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
	}
}

// int main(int argc, char **argv) {
// 	ros::init(argc, argv, "listener");
// 	ros::NodeHandle n;
// 	cv::namedWindow("view",CV_WINDOW_NORMAL);
//   	cv::startWindowThread();
//   	image_transport::ImageTransport it(n);
//   	image_transport::Subscriber sub = it.subscribe("/camera/rgb/image_raw", 1, chatterCallback);
// 	// ros::Subscriber sub = n.subscribe("/camera/rgb/image_raw", 1000, chatterCallback);
// 	ros::spin();
// 	cv::destroyWindow("view");
// 	return 0;
// }
