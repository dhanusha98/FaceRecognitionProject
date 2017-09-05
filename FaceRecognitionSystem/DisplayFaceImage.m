
%SuspectImageSet=imageSet('E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set', 'recursive');

finaloutputresult=2630*0.1;
strfinalresult=num2str(finaloutputresult);
variable1='E:\FaceRecognitionProject\FaceRecognitionSystem\FrontalFaceSet\';

result=strcat(variable1,'A (',strfinalresult,')','.jpg');

I=imread(result);

imshow(I);