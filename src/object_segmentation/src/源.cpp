
#include <iostream>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <opencv2/core/core.hpp>  
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

Mat imgOriginal,imgHSV;
Mat w_imgThresholded, y_imgThresholded, p_imgThresholded;//��ֵ�����ͼ������
Mat element = getStructuringElement(MORPH_RECT, Size(5, 5));
Mat dstImage;

int main(int argc, char** argv)
{

	namedWindow("imgOriginal", WINDOW_NORMAL);
	namedWindow("dstImage", WINDOW_NORMAL);
	namedWindow("imgHSV", WINDOW_NORMAL);
	//VideoCapture capture("1.mp4");
	//while (1)
	//{
		imgOriginal = imread("4.jpg"); // read a new frame from video
		//capture >> imgOriginal;
		cvtColor(imgOriginal, imgHSV, CV_BGR2HSV);

		vector<Mat>hsvSplit;
		hsvSplit.resize(3);
		split(imgHSV, hsvSplit);//����ͨ��
		equalizeHist(hsvSplit[2], hsvSplit[2]);//ֱ��ͼ���⻯
		merge(hsvSplit, imgHSV);//��������ͨ�����ºϳ�һ����ͨ��
		imshow("imgHSV", imgHSV);

		//��ɫ
		inRange(imgHSV, Scalar(0, 0, 221), Scalar(180, 30, 255), w_imgThresholded);
		//medianBlur(w_imgThresholded, w_imgThresholded, (3, 3));
		//Canny(w_imgThresholded, w_imgThresholded, 0, 255);
		GaussianBlur(w_imgThresholded, w_imgThresholded, Size(13, 13), 2, 2);
		//erode(w_imgThresholded, w_imgThresholded,10);
		imshow("dstImage", w_imgThresholded);

		vector<Vec3f> w_circles;
		HoughCircles(w_imgThresholded, w_circles, CV_HOUGH_GRADIENT, 1.5, 20, 210, 60, 70, 135);
		for (size_t i = 0; i < w_circles.size(); i++)//�ѻ���任������Բ������
		{
			Point center(cvRound(w_circles[i][0]), cvRound(w_circles[i][1]));
			int radius = cvRound(w_circles[i][2]);

			circle(imgOriginal, center, radius, Scalar(255, 255, 0), -1, 8, 0);
			//cout << cvRound(w_circles[i][0]) << "\t" << cvRound(w_circles[i][1]) << "\t"
			//	<< cvRound(w_circles[i][2]) << endl;//�ڿ���̨���Բ������Ͱ뾶
			cout << "01" << endl;
		}


		//��ɫ
		inRange(imgHSV, Scalar(11, 43, 46), Scalar(25, 255, 255), y_imgThresholded);
		GaussianBlur(y_imgThresholded, y_imgThresholded, Size(13, 13), 2, 2);
		//Canny(y_imgThresholded, y_imgThresholded, 0, 255);

		vector<Vec3f> y_circles;
		HoughCircles(y_imgThresholded, y_circles, CV_HOUGH_GRADIENT, 1.5, 20, 210, 60, 70, 135);
		for (size_t i = 0; i < y_circles.size(); i++)//�ѻ���任������Բ������
		{
			Point center(cvRound(y_circles[i][0]), cvRound(y_circles[i][1]));
			int radius = cvRound(y_circles[i][2]);

			circle(imgOriginal, center, radius, Scalar(255, 255, 0), -1, 8, 0);
			//cout << cvRound(y_circles[i][0]) << "\t" << cvRound(y_circles[i][1]) << "\t"
			//	<< cvRound(y_circles[i][2]) << endl;//�ڿ���̨���Բ������Ͱ뾶
			cout << "10" << endl;
		}

		//��ɫ
		inRange(imgHSV, Scalar(100, 43, 46), Scalar(155, 255, 255), p_imgThresholded);
		GaussianBlur(p_imgThresholded, p_imgThresholded, Size(13, 13), 2, 2);

		vector<Vec3f> p_circles;
		HoughCircles(p_imgThresholded, p_circles, CV_HOUGH_GRADIENT, 1.5, 20, 210, 60, 70, 135);
		for (size_t i = 0; i < p_circles.size(); i++)//�ѻ���任������Բ������
		{
			Point center(cvRound(p_circles[i][0]), cvRound(p_circles[i][1]));
			int radius = cvRound(p_circles[i][2]);

			circle(imgOriginal, center, radius, Scalar(255, 255, 0), -1, 8, 0);
			//cout << cvRound(p_circles[i][0]) << "\t" << cvRound(p_circles[i][1]) << "\t"
			//	<< cvRound(p_circles[i][2]) << endl;//�ڿ���̨���Բ������Ͱ뾶
			cout << "11" << endl;
		}

		imshow("imgOriginal", imgOriginal);//Ѱ�ұ���

		char key = waitKey(0);
	//}
	return 0;

}