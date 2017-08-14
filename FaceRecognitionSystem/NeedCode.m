  xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_RightEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_RightEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Nose=bboxNose(1)+bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   xCentroid_Mouth=bboxMouth(1)+bboxMouth(3)/2;
   yCentroid_Mouth=bboxMouth(2)+bboxMouth(4)/2;

   %Width of Left Eye
   Width_LeftEye=bboxLeftEye(3);
   statsMatrix_LeftEyeWidth = [statsMatrix_LeftEyeWidth ; Width_LeftEye];
 
   %Width of Right Eye
   Width_RightEye=bboxRightEye(3);
   statsMatrix_RightEyeWidth=[statsMatrix_RightEyeWidth; Width_RightEye];
    
   %Straight Line Distance From Left Eye to Nose
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
   statsMatrix_LeftEye_To_Nose_Distance=[statsMatrix_LeftEye_To_Nose_Distance; Distance_LeftEye_Nose];

   %Straight Line Distance From Right Eye to Nose
   Distance_RightEye_Nose=sqrt((xCentroid_Nose-xCentroid_RightEye)^2+(yCentroid_Nose-yCentroid_RightEye)^2);
   statsMatrix_RightEye_To_Nose_Distance=[statsMatrix_RightEye_To_Nose_Distance; Distance_RightEye_Nose];
  
   %Straight Line Distance From Nose to Mouth
   Distance_Nose_Mouth=sqrt((xCentroid_Nose-xCentroid_Mouth)^2+(yCentroid_Nose-yCentroid_Mouth)^2);
   statsMatrix_Nose_To_Mouth_Distance=[statsMatrix_Nose_To_Mouth_Distance; Distance_Nose_Mouth];

   %Straight Line Distance From Left Eye to Mouth
   Distance_LeftEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   statsMatrix_LeftEye_Mouth=[statsMatrix_LeftEye_Mouth; Distance_LeftEye_Mouth];

   %Straight Line Distance From Right Eye to Mouth
   Distance_RightEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   statsMatrix_RightEye_Mouth=[statsMatrix_RightEye_Mouth; Distance_RightEye_Mouth];

