

  statsMatrix_FaceHeight=[];
   statsMatrix_LeftEyeWidth=[];
   statsMatrix_RightEyeWidth=[];
   statsMatrix_LeftEye_To_Nose_Distance=[];
   statsMatrix_RightEye_To_Nose_Distance=[];
   statsMatrix_Nose_To_Mouth_Distance=[];
   statsMatrix_LeftEye_Mouth=[];
   statsMatrix_RightEye_Mouth=[];
   statsMatrix=[];

   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   %LeftEyeDetector.MergeThreshold=40;
   
   images ='E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set\500';
   jpgfiles=dir(fullfile(images,'\*.jpg*'));
   n=numel(jpgfiles);
   
   for i=1:n
   im=jpgfiles(i).name;
   ImgLeftEye=imread(fullfile(images,im));
   
   ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');

   FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
   ImgFace=imread(fullfile(images,im));
   ImgFaceResize=imresize(ImgFace, [320,320]);
   bboxFace=step(FaceDetector, ImgFaceResize);
   IFaces=insertObjectAnnotation(ImgFaceResize, 'rectangle', bboxFace, 'Face');
   
   NoseDetector=vision.CascadeObjectDetector('Nose');
   %NoseDetector.MergeThreshold=25;
   ImgNose=imread(fullfile(images,im));
   ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNoseResize);
   INose=insertObjectAnnotation(ImgNoseResize, 'rectangle', bboxNose, 'Nose');
   
   MouthDetector=vision.CascadeObjectDetector('Mouth');
   ImgMouth=imread(fullfile(images,im));
   ImgMouthResize=imresize(ImgMouth, [320,320]);
   MouthDetector.MergeThreshold=40;
   bboxMouth=step(MouthDetector, ImgMouthResize);
   IMouth=insertObjectAnnotation(ImgMouthResize, 'rectangle', bboxMouth,'Mouth');
   
   
   RightEyeDetector=vision.CascadeObjectDetector('RightEye');
   RightEyeDetector.MergeThreshold=20;
   RightEyeDetector.MergeThreshold=5;
   ImgRightEye=imread(fullfile(images,im));
   ImgRightEyeResize=imresize(ImgRightEye, [320,320]);
   bboxRightEye=step(RightEyeDetector, ImgRightEyeResize);
   IRightEye=insertObjectAnnotation(ImgRightEyeResize, 'rectangle', bboxRightEye, 'RightEye');
   
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
     
     %Concatena All the Above Matrices to Form Final Result Matrix
        statsMatrix=[statsMatrix_FaceHeight, statsMatrix_LeftEye_Mouth, statsMatrix_LeftEye_To_Nose_Distance,...
                     statsMatrix_LeftEyeWidth, statsMatrix_Nose_To_Mouth_Distance, statsMatrix_RightEye_Mouth, ...
                     statsMatrix_RightEye_To_Nose_Distance,statsMatrix_RightEyeWidth ];

   end

