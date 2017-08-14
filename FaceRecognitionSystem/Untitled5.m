
    
   statsMatrix_FaceHeight=[];
   statsMatrix_LeftEyeWidth=[];
   statsMatrix_RightEyeWidth=[];
   statsMatrix_LeftEye_To_Nose_Distance=[];
   statsMatrix_RightEye_To_Nose_Distance=[];
   statsMatrix_Nose_To_Mouth_Distance=[];
   statsMatrix_LeftEye_Mouth=[];
   statsMatrix_RightEye_Mouth=[];
   statsMatrix=[];

%Face Feature Detector Creation

   FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
   images ='E:\FaceRecognitionProject\FaceRecognitionSystem\TrainingSet\1';
   jpgfiles=dir(fullfile(images,'\*.jpg*'));
   n=numel(jpgfiles);
   
  for i=1:n
       
   im=jpgfiles(i).name;
   ImgFace=imread(fullfile(images,im));
   ImgFaceResize=imresize(ImgFace, [320,320]);
   bboxFace=step(FaceDetector, ImgFaceResize);
   IFaces=insertObjectAnnotation(ImgFaceResize, 'rectangle', bboxFace, 'Face');

   MouthDetector=vision.CascadeObjectDetector('Mouth');
   ImgMouth=imread(fullfile(images,im));
   ImgMouthResize=imresize(ImgMouth, [320,320]);
   MouthDetector.MergeThreshold=40;
   bboxMouth=step(MouthDetector, ImgMouthResize);
   IMouth=insertObjectAnnotation(ImgMouthResize, 'rectangle', bboxMouth,'Mouth');

   
   NoseDetector=vision.CascadeObjectDetector('Nose');
   NoseDetector.MergeThreshold=15;
   ImgNose=imread(fullfile(images,im));
   ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNoseResize);
   INose=insertObjectAnnotation(ImgNoseResize, 'rectangle', bboxNose, 'Nose');
   
   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   LeftEyeDetector.MergeThreshold=40;
   ImgLeftEye=imread(fullfile(images,im));
   ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');

   
   RightEyeDetector=vision.CascadeObjectDetector('RightEye');
   RightEyeDetector.MergeThreshold=20;
   RightEyeDetector.MergeThreshold=5;
   ImgRightEye=imread(fullfile(images,im));
   ImgRightEyeResize=imresize(ImgRightEye, [320,320]);
   bboxRightEye=step(RightEyeDetector, ImgRightEyeResize);
   IRightEye=insertObjectAnnotation(ImgRightEyeResize, 'rectangle', bboxRightEye, 'RightEye');
   
   
     %FaceHeight=bboxFace(4);   
     %statsMatrix_FaceHeight=[statsMatrix_FaceHeight; FaceHeight]
     
   xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_RightEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_RightEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Nose=bboxNose(1)+bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   xCentroid_Mouth=bboxMouth(1)+bboxMouth(3)/2;
   yCentroid_Mouth=bboxMouth(2)+bboxMouth(4)/2;
   
   
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
 
        statsMatrix =[statsMatrix ; Distance_LeftEye_Nose];
   
     
end

   