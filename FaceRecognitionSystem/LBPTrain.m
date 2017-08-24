


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

       features=extractLBPFeatures(IFaceCropped);
       
       statsMatrix=[statsMatrix; features];
    end
    
end