     
%FImage=FaceImage{1,1};
%[row col]=size(FImage);
%assignin('base', 'row', row);

FaceImg=evalin('base', 'FaceImage');
%FaceImgNew=FaceImg{1,1};

FaceImgNew=FaceImg{1,1};

z=getArrayFromByteStream(FaceImgNew);

%jimage = javax.imageio.ImageIO.read(java.io.ByteArrayInputStream(typecast(FaceImgNew, 'uint8')));
%height = jimage.getHeight;
%width = jimage.getWidth;
%pixels = reshape(typecast(jimage.getData.getDataStorage, 'uint8'), [3,width,height]);
%img = cat(3, ...
  %transpose(reshape(pixels(3,:,:), [width,height])), ...
  %transpose(reshape(pixels(2,:,:), [width,height])), ...
  %transpose(reshape(pixels(1,:,:), [width,height])));
%imshow(img) 