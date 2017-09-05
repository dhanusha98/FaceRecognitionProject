


statsMatrix=[];
images='E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set';


for i=1:500
    
    imgstr=num2str(i);
    imgfolder=strcat(images, '\', imgstr);
    jpgfiles=dir(fullfile(imgfolder,'\*.jpg*'));
    n=numel(jpgfiles);
    
    for k=1:n
       im=jpgfiles(k).name;          
       ImgOriginal=imread(fullfile(imgfolder, im));
       ImgGray=rgb2gray(ImgOriginal);
       Imgresize=imresize(ImgGray, [480, 480]);
       ImgNoiseRemoval=medfilt2(Imgresize);

       FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
       bboxFace=step(FaceDetector, ImgNoiseRemoval);
       IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
       IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);
       CroppedImageResized=imresize(IFaceCropped, [150,150]);

       Extracted_Face_Features=extractLBPFeatures(CroppedImageResized);
       
       statsMatrix=[statsMatrix; Extracted_Face_Features];
       
    end
    
end