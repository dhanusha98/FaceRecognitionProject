%%Face Feature Detector Creation

   FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
   ImgFace=imread('1-07.jpg');
   ImgFaceResize=imresize(ImgFace, [320,320]);
   bboxFace=step(FaceDetector, ImgFaceResize);
   IFaces=insertObjectAnnotation(ImgFaceResize, 'rectangle', bboxFace, 'Face');

   MouthDetector=vision.CascadeObjectDetector('Mouth');
   ImgMouth=imread('1-07.jpg');
   ImgMouthResize=imresize(ImgMouth, [320,320]);
   MouthDetector.MergeThreshold=40;
   bboxMouth=step(MouthDetector, ImgMouthResize);
   IMouth=insertObjectAnnotation(ImgMouthResize, 'rectangle', bboxMouth,'Mouth');

   
   NoseDetector=vision.CascadeObjectDetector('Nose');
   NoseDetector.MergeThreshold=15;
   ImgNose=imread('1-07.jpg');
   ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNoseResize);
   INose=insertObjectAnnotation(ImgNoseResize, 'rectangle', bboxNose, 'Nose');
   
   
   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   LeftEyeDetector.MergeThreshold=40;
   ImgLeftEye=imread('1-07.jpg');
   ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');

   
   RightEyeDetector=vision.CascadeObjectDetector('RightEye');
   RightEyeDetector.MergeThreshold=20;
   ImgRightEye=imread('1-07.jpg');
   ImgRightEyeResize=imresize(ImgRightEye, [320,320]);
   bboxRightEye=step(RightEyeDetector, ImgRightEyeResize);
   IRightEye=insertObjectAnnotation(ImgRightEyeResize, 'rectangle', bboxRightEye, 'RightEye');
   imshow(IRightEye);

   
   %%
   
   %Feature Measurement Calculation will be done here onwards in this file
   
   %%
   
   %Face Height
   
     FaceHeight=bboxFace(4);
   %%
   %Width of Left Eye
   
      Width_LeftEye=bboxLeftEye(3);
   %%
   %Width of Right Eye
   
    Width_RightEye=bboxRightEye(3);
   
   %%
   % X and Y Axis Centroids of All relevant Features to be used to get Measurements
   
   xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_RightEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_RightEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Nose=bboxNose(1)+bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   xCentroid_Mouth=bboxMouth(1)+bboxMouth(3)/2;
   yCentroid_Mouth=bboxMouth(2)+bboxMouth(4)/2;
    
    
    %%
   %Straight Line Distance from Left Eye Centroid to Nose Centroid
   
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
   %%
   %Straight Line Distance from Right Eye Centroid to Nose Centroid
   
   Distance_RightEye_Nose=sqrt((xCentroid_Nose-xCentroid_RightEye)^2+(yCentroid_Nose-yCentroid_RightEye)^2);
   
   %%
   %Straight Line Distance from Nose Centroid to Mouth Centroid

   
   Distance_Nose_Mouth=sqrt((xCentroid_Nose-xCentroid_Mouth)^2+(yCentroid_Nose-yCentroid_Mouth)^2);
   
  %%
  %Straight Line Distance from Left Eye Centroid to Mouth Centroid
   
   Distance_LeftEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   
   %%
   %Straight Line Distance from Right Eye Centroid to Mouth Centroid

   
   Distance_RightEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   