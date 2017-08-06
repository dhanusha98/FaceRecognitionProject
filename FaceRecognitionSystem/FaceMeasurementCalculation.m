

   FaceDetector=vision.CascadeObjectDetector;
   ImgFace=imread('2-08.jpg');
   ImgFaceResize=imresize(ImgFace, [320,320]);
   bboxFace=step(FaceDetector, ImgFaceResize);
   IFaces=insertObjectAnnotation(ImgFaceResize, 'rectangle', bboxFace, 'Face');
   imshow(IFaces);
   
   MouthDetector=vision.CascadeObjectDetector('Mouth');
   ImgMouth=imread('2-08.jpg');
   ImgMouthResize=imresize(ImgMouth, [320,320]);
   MouthDetector.MergeThreshold=40;
   bboxMouth=step(MouthDetector, ImgMouthResize);
   IMouth=insertObjectAnnotation(ImgMouthResize, 'rectangle', bboxMouth,'Mouth');
   imshow(IMouth);
   
   
   NoseDetector=vision.CascadeObjectDetector('Nose');
   NoseDetector.MergeThreshold=15;
   ImgNose=imread('06.jpg');
   ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNoseResize);
   INose=insertObjectAnnotation(ImgNoseResize, 'rectangle', bboxNose, 'Nose');
   imshow(INose);
   
   EyePairDetector=vision.CascadeObjectDetector('EyePairSmall');
   ImgEyePair=imread('io-fn.jpg');
   ImgEyePairResize=imresize(ImgEyePair, [320,320]);
   bboxEyePair=step(EyePairDetector, ImgEyePairResize);
   IEyePair=insertObjectAnnotation(ImgEyePairResize, 'rectangle', bboxEyePair, 'EyePair');
   imshow(IEyePair);
   
   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   LeftEyeDetector.MergeThreshold=40;
   ImgLeftEye=imread('1-07.jpg');
   ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');
   imshow(ILeftEye);
   
   
   RightEyeDetector=vision.CascadeObjectDetector('RightEye');
   RightEyeDetector.MergeThreshold=20;
   ImgRightEye=imread('1-08.jpg');
   ImgRightEyeResize=imresize(ImgRightEye, [320,320]);
   bboxRightEye=step(RightEyeDetector, ImgRightEyeResize);
   IRightEye=insertObjectAnnotation(ImgRightEyeResize, 'rectangle', bboxRightEye, 'RightEye');
   imshow(IRightEye);
   
   
   