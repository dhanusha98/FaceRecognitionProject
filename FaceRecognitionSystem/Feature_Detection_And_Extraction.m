
%EyeDetector=vision.CascadeObjectDetector('EyePairBig');
%img2=imread('28-08.jpg');
%img2new=imresize(img, [320,320]);
%bbox=step(EyeDetector, imgnew);
%out=insertObjectAnnotation(imgnew, 'rectangle', bbox, 'Eye Detection');
%imshow(out);

EyePairDetector=vision.CascadeObjectDetector();
img=imread('28-08.jpg');
imgnew=imresize(img, [320,320]);
bbox=step(EyePairDetector, imgnew);
out=insertObjectAnnotation(imgnew, 'rectangle', bbox, 'Eye Detection');
imshow(out);