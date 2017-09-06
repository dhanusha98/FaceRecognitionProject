I = imread('E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set\2\2-04.jpg');
J = imnoise(I,'salt & pepper',0.1);

imwrite(J, 'J.jpg');