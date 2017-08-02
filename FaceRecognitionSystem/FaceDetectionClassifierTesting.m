
%load('FaceClass.mat', 'labelingSession');


%imDir=fullfile(matlabroot, 'toolbox', 'vision', 'visiondata', 'FaceClassifierImages');
%addpath(imDir);

%negativeFolder=fullfile(matlabroot,'toolbox', 'vision', 'visiondata', 'NonFaceImages');
%trainCascadeObjectDetector('FaceDetection.xml', data, negativeFolder, 'FalseAlarmRate', 0.2, 'NumCascadeStages',5);

%load('FaceClassifier.mat', 'labelingSession');

%positiveInstances=FaceClassifier(:,1:2);
%imgdirection=fullfile('C:\Users\ashen\Desktop\FaceRecognitionSystem\FaceClassifierImages');
%addpath(imgdirection);
%negativeImgfolder=fullfile(matlabroot, 'toolbox', 'vision', 'visiondata','C:\Users\ashen\Desktop\FaceRecognitionSystem\NonFaceImages');
%trainCascadeObjectDetector('FaceClassifier.xml',positiveInstances, negativeImgfolder, 'FalseAlarmRate',0.3,'NumCascadeStages',2);


%load('FaceClassifier.mat');
%positiveInstances=labelingSession(:,1:1);
%imgdirect=fullfile(matlabroot, 'toolbox', 'vision', 'visiondata', 'FaceClassifierImages');
%addpath(imgdirect);
%negativeImagefolder=fullfile(matlabroot, 'toolbox', 'vision', 'visiondata', 'NonFaceImages');
%trainCascadeObjectDetector('FaceDetector.xml', data, positiveInstances, negativeImagefolder, 'FalseAlarmRate',0.2, 'NumCascadeStages', 10);



%mydata= struct('imageFilename', 'Just a random string', 'objectBoundingBoxes', 'Just a random string');
%for i=0:36
% mydata(i+1).imageFilename = strcat('trainImagesPos/pos-', num2str(i), '.jpg');
% mydata(i+1).objectBoundingBoxes =[1, 1, 100, 40];
%end
%negativeImagefolder=fullfile(matlabroot, 'toolbox', 'vision', 'visiondata', 'NonFaceImages');
%trainCascadeObjectDetector('FaceDetectionClassifier.xml', mydata, negativeImagefolder);

%load('FaceClassifier.mat');
%positiveInstances = Face(:,1:4);
%negativeFolder = fullfile(matlabroot,'toolbox','vision','visiondata', 'NonFaceImages');
%trainCascadeObjectDetector('stopSignDetector.xml',positiveInstances, negativeFolder);

%MouthDetector=vision.CascadeObjectDetector('Mouth');
%MouthDetector.MergeThreshold=25;
%img=imread('28-08.jpg');
%bbox=step(MouthDetector, img);
%output=insertObjectAnnotation(img, 'rectangle', bbox, 'Mouth');
%imshow(output);

%xCentroid = bbox(1) + bbox(3)/2;
%yCentroid = bbox(2) + bbox(4)/2;

NoseDetector=vision.CascadeObjectDetector('EyePairBig');
img2=imread('2-08.jpg');
bbox2=step(NoseDetector, img2);
output4=insertObjectAnnotation(img2, 'rectangle', bbox, 'LeftEye');
imshow(output4);

xCentroid2 = bbox2(1) + bbox2(3)/2;
