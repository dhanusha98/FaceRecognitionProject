I = imread('E:\FaceRecognitionProject\FaceRecognitionSystem\Training Set\2\2-11.jpg');
J = imnoise(I,'salt & pepper',0.02);

imwrite(J, 'J.jpg');