

I=imread('2-04.jpg');
ImgGray=rgb2gray(I);

Imgresize=imresize(ImgGray, [480, 480]);

ImgNoiseRemoval=medfilt2(Imgresize);

FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
bboxFace=step(FaceDetector, ImgNoiseRemoval);
IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);

X = bsxfun(@minus, IFaceCropped, mean(IFaceCropped)) * coeff(:, 1:k);

