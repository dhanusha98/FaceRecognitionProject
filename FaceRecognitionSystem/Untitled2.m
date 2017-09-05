
            
 %connection=database('FaceDBConnection', 'roo', '');
 
 %username='DhanushaPS';
% password='19981212dps';
           
%K=SystemUserDataLayer(username, password);

%networkerrors=transpose(NeuralNetwork_errors);


statsMatrix=[];
images='E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set';


for i=1:500
    
    imgstr=num2str(i);
    imgfolder=strcat(images, '\', imgstr);
    jpgfiles=dir(fullfile(imgfolder,'\*.jpg*'));
    n=numel(jpgfiles);
    
    for k=1:n
       im=jpgfiles(k).name;          
       img=imread(fullfile(imgfolder, im));

       
       imgGray=rgb2gray(img);
       imgresize=imresize(imgGray, [480, 480]);
       ImgNoiseRemoval=medfilt2(imgresize);
       FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
       bboxFace=step(FaceDetector, ImgNoiseRemoval);
       IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
       IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);

       trainingFeatures=extractHOGFeatures(IFaceCropped);

       %points = detectSURFFeatures(IFaceCropped);
       %FeatureExtraction=valid_points.selectStrongest(10);
       %[features, valid_points] = extractFeatures(IFaceCropped, points);
       %Extracted_Features=FeatureExtraction.Orientation;
        
       ExtractedFeatures=trainingFeatures(1:500);
     
       statsMatrix=[statsMatrix; ExtractedFeatures];
       
      
    end
    
end


