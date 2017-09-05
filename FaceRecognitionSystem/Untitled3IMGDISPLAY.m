


%imshow(read(ImageSet(1),1));



%% Split Database into Training and Test Sets


%% Feature Extraction for Training Data

%ImgOriginal=imread([pathname, filename]);
%ImgGray=rgb2gray(ImgOriginal);
%FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
%bboxFace=step(FaceDetector, ImgNoiseRemoval);
%IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
%IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);
%Imgresize=imresize(ImgGray, [480, 480]);
%ImgNoiseRemoval=medfilt2(Imgresize);


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
       
       ImgGray=rgb2gray(img);
       Imgresize=imresize(ImgGray, [480, 480]);
       ImgNoiseRemoval=medfilt2(Imgresize);
       
       FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
       bboxFace=step(FaceDetector, ImgNoiseRemoval);
       IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
       IFaceCropped=imcrop(ImgGray, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);
       CroppedFaceResized=imresize(IFaceCropped, [480, 480]);
       
       %trainingFeatures= zeros(size(imgfolder,2)*imgfolder(1));

       %statsMatrix=[statsMatrix; features];
       
       
   end 
       
    
end






