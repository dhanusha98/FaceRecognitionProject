

facedetection=vision.CascadeObjectDetector();
I=imread('28-12.jpg');
bbox=step(facedetection, I);
out=insertObjectAnnotation(I, 'rectangle', bbox, 'detection');
imshow(out);

%MouthDetection=vision.CascadeObjectDetector('');
%I=imread('28-12.jpg');
%bbox=step(MouthDetection, I);
%out=insertObjectAnnotation(I, 'rectangle', bbox, 'detection');
%imshow(out);

ABo1=vision.CascadeObjectDetector();
I=imread('Abo.jpg');
bbox=step(facedetection, I);
out=insertObjectAnnotation(I, 'rectangle', bbox, 'detection');
imshow(out);

IGray=rgb2gray(I);
Ibinarize=imbinarize(IGray);
Area=bwarea(Ibinarize);

%I=imread('28-12.jpg');
%I=imresize(I, 0.3);
%Igray=rgb2gray(I);
%imshow(Igray);

%MouthDetection=vision.CascadeObjectDetector('LeftEye');
%MouthDetection.MergeThreshold = 30;
%bbox=step(MouthDetection, Igray);
%out=insertObjectAnnotation(Igray, 'rectangle', bbox, 'detection'); 
%imshow(out);

%IK=imread('06.jpg');
%IK=imresize(IK, 0.3);
%imshow(IK);
%IKGray=rgb2gray(IK);
%Ibinarize=imbinarize(IKGray);
%Area2=bwarea(Ibinarize);

%I=imread('28-12.jpg');
%I=imresize(I, 0.3);
%Igray=rgb2gray(I);
%IGbinary=imbinarize(Igray);
%stats=regionprops(IGbinary, properties);

facedetect5=vision.CascadeObjectDetector('EyePairSmall');
facedetect5.MergeThreshold=10;
sideimg=imread('1-02.jpg');
sideimg=imresize(sideimg, 0.3);
bbox=step(facedetect5, sideimg);
outbox=insertObjectAnnotation(sideimg, 'rectangle', bbox, 'detection');
imshow(outbox);

iofn=imread('io-fn.jpg');
iofn=imresize(iofn, 0.3);
imshow(iofn)

