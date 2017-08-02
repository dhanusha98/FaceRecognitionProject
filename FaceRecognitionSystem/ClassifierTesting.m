

NoseDetector=vision.CascadeObjectDetector('Nose');
NoseDetector.MergeThreshold=20;
img=imread('2-08.jpg');

bbox=step(NoseDetector,img);
out=insertObjectAnnotation(img, 'rectangle', bbox, 'Nose');
imshow(out);

xCentroid = bbox(1) + bbox(3)/2;
yCentroid = bbox(2) + bbox(4)/2;

x2Centroid=274.567;
yCentroid2=300;
d = sqrt((x2Centroid-xCentroid)^2+(yCentroid2-yCentroid)^2);

