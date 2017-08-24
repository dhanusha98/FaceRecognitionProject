

I=imread('i281ve-fn.jpg');
IK=rgb2gray(I);

features=extractLBPFeatures(IK);