
statsMatrixClass=[];
images='E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set';

for i=1:500

    imgstr=num2str(i);
    totfolder=i;
    imgfolder=strcat(images, '\', imgstr);
    jpgfiles=dir(fullfile(imgfolder,'\*.jpg*'));
    n=numel(jpgfiles);
    
     im=jpgfiles(n);      
     %statsMatrixClass=totfolder(im);
     
     
        for k=1:n

          statsMatrixClass=[statsMatrixClass; i];
         
        end
     
     
end
