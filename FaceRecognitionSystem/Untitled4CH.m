

img=imread('2-04.jpg');
ImgGray=rgb2gray(img);
Imgresize=imresize(ImgGray, [480, 480]);
ImgNoiseRemoval=medfilt2(Imgresize);
       
FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
bboxFace=step(FaceDetector, ImgNoiseRemoval);
IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
IFaceCropped=imcrop(ImgGray, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);
CroppedFaceResized=imresize(IFaceCropped, [150, 150]);

points = detectSURFFeatures(CroppedFaceResized);

