
%n=8;
%statsMatrix=[];

%for i=1:n
    
   %filename=[num2str(i) '.jpg'];
    
   %LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   %LeftEyeDetector.MergeThreshold=40;
   %ImgLeftEye=imread(filename);
   %ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   %bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   %ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');

   
    %xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   %yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   %xCentroid_Nose=bboxNose(1)+bboxNose(3)/2;
   %yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   %Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
  
        %statsMatrix =[statsMatrix ; Distance_LeftEye_Nose];

%end

statsMatrix=[];

   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   LeftEyeDetector.MergeThreshold=40;
   
   images ='E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set\10';
   jpgfiles=dir(fullfile(images,'\*.jpg*'));
   n=numel(jpgfiles);
   
   for i=1:n
   im=jpgfiles(i).name;
   ImgLeftEye=imread(fullfile(images,im));
   
   ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');

   
   NoseDetector=vision.CascadeObjectDetector('Nose');
   %NoseDetector.MergeThreshold=15;
   ImgNose=imread(fullfile(images,im));
   ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNoseResize);
   INose=insertObjectAnnotation(ImgNoseResize, 'rectangle', bboxNose, 'Nose');
   
   xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Nose=bboxNose(1)+ bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
  
        statsMatrix =[statsMatrix ; Distance_LeftEye_Nose];

   end

