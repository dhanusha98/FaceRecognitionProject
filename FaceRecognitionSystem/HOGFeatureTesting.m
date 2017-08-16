
%img=imread('E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set\229\02.jpg');
%imgGray=rgb2gray(img);
%imgresize=imresize(imgGray, [320,320]);
%FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
%bboxFace=step(FaceDetector, imgresize);
%IFace=insertObjectAnnotation(imgresize, 'rectangle', bboxFace,'Face');
%a=bboxFace(1);
%b=bboxFace(2);
%c=bboxFace(3);
%d=bboxFace(4);
%IFaceCropped=imcrop(imgresize, [a b c d]);
   
statsMatrix_FaceHeight=[];
statsMatrix_LeftEyeWidth=[];
statsMatrix_RightEyeWidth=[];
statsMatrix_LeftEye_To_Nose_Distance=[];
statsMatrix_RightEye_To_Nose_Distance=[];
statsMatrix_Nose_To_Mouth_Distance=[];
statsMatrix_LeftEye_Mouth=[];
statsMatrix_RightEye_Mouth=[];
statsMatrix=[];
statsMatrixAll=[];

% Define a starting folder.
start_path = fullfile('E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set');
% Ask user to confirm or change.
topLevelFolder = uigetdir(start_path);
if topLevelFolder == 0
	return;
end
% Get list of all subfolders.
allSubFolders = genpath(topLevelFolder);
% Parse into a cell array.
remain = allSubFolders;
listOfFolderNames = {};
while true
	[singleSubFolder, remain] = strtok(remain, ';');
	if isempty(singleSubFolder)
		break;
	end
	listOfFolderNames = [listOfFolderNames singleSubFolder];
end
numberOfFolders= length(listOfFolderNames);

% Process all image files in those folders.
for k = 1 : numberOfFolders
	% Get this folder and print it out.
	thisFolder = listOfFolderNames{k};
	
	% Get JPG files.
	filePattern = sprintf('%s/*.jpg', thisFolder);
	baseFileNames = dir(filePattern);
	numberOfImageFiles = length(baseFileNames);
	% Now we have a list of all files in this folder.
	
	if numberOfImageFiles >= 1
		% Go through all those image files.
		for f = 1 : numberOfImageFiles
			fullFileName = fullfile(thisFolder, baseFileNames(f).name);
            
            
            img=imread(fullFileName);

imgGray=rgb2gray(img);
imgresize=imresize(imgGray, [480, 480]);
ImgNoiseRemoval=medfilt2(imgresize);
FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
bboxFace=step(FaceDetector, ImgNoiseRemoval);
IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);

LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
%LeftEyeDetector.MergeThreshold=70;
ImgLeftEye=IFaceCropped;
bboxLeftEye=step(LeftEyeDetector, ImgLeftEye);
ILeftEye=insertObjectAnnotation(ImgLeftEye, 'rectangle', bboxLeftEye, 'LeftEye');
  
NoseDetector=vision.CascadeObjectDetector('Nose');
%NoseDetector.MergeThreshold=20;
ImgNose=IFaceCropped;
bboxNose=step(NoseDetector, ImgNose);
INose=insertObjectAnnotation(ImgNose, 'rectangle', bboxNose, 'Nose');
   
MouthDetector=vision.CascadeObjectDetector('Mouth');
ImgMouth=IFaceCropped;
%MouthDetector.MergeThreshold=40;
bboxMouth=step(MouthDetector, ImgMouth);
IMouth=insertObjectAnnotation(ImgMouth, 'rectangle', bboxMouth,'Mouth');
   
RightEyeDetector=vision.CascadeObjectDetector('RightEye');
%RightEyeDetector.MergeThreshold=50;
ImgRightEye=IFaceCropped;
bboxRightEye=step(RightEyeDetector, ImgRightEye);
IRightEye=insertObjectAnnotation(ImgRightEye, 'rectangle', bboxRightEye, 'RightEye');


 xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Nose=bboxNose(1)+ bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   xCentroid_RightEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_RightEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Mouth=bboxMouth(1)+bboxMouth(3)/2;
   yCentroid_Mouth=bboxMouth(2)+bboxMouth(4)/2;
   
   FaceHeight=bboxFace(4);
   Width_LeftEye=bboxLeftEye(3);
   Width_RightEye=bboxRightEye(3);
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
   Distance_RightEye_Nose=sqrt((xCentroid_Nose-xCentroid_RightEye)^2+(yCentroid_Nose-yCentroid_RightEye)^2);
   Distance_Nose_Mouth=sqrt((xCentroid_Nose-xCentroid_Mouth)^2+(yCentroid_Nose-yCentroid_Mouth)^2);
   Distance_LeftEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   Distance_RightEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);

     statsMatrix_LeftEye_To_Nose_Distance=[statsMatrix_LeftEye_To_Nose_Distance; Distance_LeftEye_Nose];
     statsMatrix_RightEye_To_Nose_Distance=[statsMatrix_RightEye_To_Nose_Distance; Distance_RightEye_Nose];
     statsMatrix_FaceHeight=[statsMatrix_FaceHeight; FaceHeight];
     statsMatrix_LeftEyeWidth=[statsMatrix_LeftEyeWidth; Width_LeftEye];
     statsMatrix_RightEyeWidth=[statsMatrix_RightEyeWidth;  Width_RightEye];
     statsMatrix_Nose_To_Mouth_Distance=[statsMatrix_Nose_To_Mouth_Distance; Distance_Nose_Mouth];
     statsMatrix_LeftEye_Mouth=[statsMatrix_LeftEye_Mouth; Distance_LeftEye_Mouth];
     statsMatrix_RightEye_Mouth=[statsMatrix_RightEye_Mouth; Distance_RightEye_Mouth];
     
     %Concatenate All the Above Matrices to Form Final Result Matrix
        statsMatrix=[statsMatrix_FaceHeight, statsMatrix_LeftEye_Mouth, statsMatrix_LeftEye_To_Nose_Distance,...
                     statsMatrix_LeftEyeWidth, statsMatrix_Nose_To_Mouth_Distance, statsMatrix_RightEye_Mouth, ...
                     statsMatrix_RightEye_To_Nose_Distance,statsMatrix_RightEyeWidth ];

          %matrix=statsMatrix;
          %save('statsMatrixResult.mat', 'matrix', '-v7.3', '-append');
                 
		end
	else
		fprintf('     Folder %s has no image files in it.\n', thisFolder);
	end
end

         dlmwrite('statsMatrixResult.txt', statsMatrix, '-append');
        %save('statsMatrixResult.mat', 'statsMatrix');


%imshow(IFaceCropped)
%imshow(ILeftEye)
%imshow(INose)
%imshow(IMouth)
%imshow(IRightEye)

   
%imshow(IFaceCropped);

%[featureVector, hogVisualization]=extractHOGFeatures(IFaceCropped);
%MeanVal=mean(featureVector);
%figure;
%imshow(IFaceCropped); 
%hold on;
%plot(hogVisualization);

%IFaceGray=rgb2gray(IFace);
%SURF=detectSURFFeatures(IFaceGray);
%imshow(IFaceGray);
%hold on;
%Subset_Features=SURF(1:20);
%plot(Subset_Features);


