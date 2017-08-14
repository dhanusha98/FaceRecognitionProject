
%facedetector=vision.CascadeObjectDetector();
%I=imread('28-08.jpg');
%bbox=step(facedetector, I);
%out=insertObjectAnnotation(I, 'rectangle', bbox, 'detection');
%imshow(out)

%fdetectortwo=vision.CascadeObjectDetector();
%K=imread('28-08.jpg');
%bbox=step(fdetectortwo,K);
%soutput=insertObjectAnnotation(K, 'rectangle', bbox, 'Face');
%imshow(soutput)

%facedetection1=vision.CascadeObjectDetector();
%img=imread('2-08.jpg');
%bbox=step(facedetection1,img);
%output=insertObjectAnnotation(img, 'rectangle', bbox, 'Face');
%imshow(output)

%facedetection2=vision.CascadeObjectDetector();
%img2=imread('2-11.jpg');
%bbox=step(facedetection2,img2);
%output=insertObjectAnnotation(img2, 'rectangle', bbox, 'Face');
%imshow(output)


%facedetection3=vision.CascadeObjectDetector();
%facedetection3.MinSize= [60 60];
%facedetection3.MergeThreshold=10;
%img=imread('2-08.jpg');
%bbox=step(facedetection1,img);
%output=insertObjectAnnotation(img, 'rectangle', bbox, 'Face');
%imshow(output)

%facedetection4=vision.CascadeObjectDetector();
%facedetection4.MinSize=[60 60];
%facedetection4.MergeThreshold=10;
%img4=imread('2-11.jpg');
%bbox=step(facedetection4, img4);
%output4=insertObjectAnnotation(img4, 'rectangle', bbox, 'Face');

%imshow(output4)

%img=imread('2-11.jpg');
%imggray=rgb2gray(img);
%imgbinary=imbinarize(imggray);

%imshow(imgbinary)

%img2=imread('2-08.jpg');
%img2gray=rgb2gray(img2);
%imgbinary=imbinarize(img2gray);

%imshow(imgbinary);

%Area=bwarea(imgbinary);

%img3=imread('2-12.jpg');
%img3gray=rgb2gray(img3);
%img3binary=imbinarize(img3gray);

%Area3=bwarea(imgbinary);

%img4=imread('28-12.jpg');
%img4gray=rgb2gray(img4);
%img4binary=imbinarize(img4gray);

%Area4=bwarea(imgbinary);



