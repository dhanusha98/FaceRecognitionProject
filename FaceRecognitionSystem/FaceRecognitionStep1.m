function varargout = FaceRecognitionStep1(varargin)
% FACERECOGNITIONSTEP1 MATLAB code for FaceRecognitionStep1.fig
%      FACERECOGNITIONSTEP1, by itself, creates a new FACERECOGNITIONSTEP1 or raises the existing
%      singleton*.
%
%      H = FACERECOGNITIONSTEP1 returns the handle to a new FACERECOGNITIONSTEP1 or the handle to
%      the existing singleton*.
%
%      FACERECOGNITIONSTEP1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FACERECOGNITIONSTEP1.M with the given input arguments.
%
%      FACERECOGNITIONSTEP1('Property','Value',...) creates a new FACERECOGNITIONSTEP1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FaceRecognitionStep1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FaceRecognitionStep1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaceRecognitionStep1

% Last Modified by GUIDE v2.5 18-Aug-2017 15:33:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaceRecognitionStep1_OpeningFcn, ...
                   'gui_OutputFcn',  @FaceRecognitionStep1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before FaceRecognitionStep1 is made visible.
function FaceRecognitionStep1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FaceRecognitionStep1 (see VARARGIN)

% Choose default command line output for FaceRecognitionStep1
handles.output = hObject;

evalin('base', 'load(''network6.mat'')');

pathname=getappdata(0, 'pathname');
filename=getappdata(0, 'filename');
   
ImgOriginal=imread([pathname, filename]);
axes(handles.OriginalImageAxes)
imshow(ImgOriginal);

ImgGray=rgb2gray(ImgOriginal);
axes(handles.GrayScaleAxes)
imshow(ImgGray);

Imgresize=imresize(ImgGray, [480, 480]);
axes(handles.ResizeImageAxes)
imshow(Imgresize);

ImgNoiseRemoval=medfilt2(Imgresize);
axes(handles.NoiseRemovalAxes)
imshow(ImgNoiseRemoval);

FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
bboxFace=step(FaceDetector, ImgNoiseRemoval);
IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');
axes(handles.FaceDetectionAxes)
imshow(IFace);

IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]);
axes(handles.CropImageAxes)
imshow(IFaceCropped);

LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
%LeftEyeDetector.MergeThreshold=70;
ImgLeftEye=IFaceCropped;
bboxLeftEye=step(LeftEyeDetector, ImgLeftEye);
ILeftEye=insertObjectAnnotation(ImgLeftEye, 'rectangle', bboxLeftEye, 'LeftEye');
axes(handles.LeftEyeAxes)
imshow(ILeftEye);
  
NoseDetector=vision.CascadeObjectDetector('Nose');
%NoseDetector.MergeThreshold=20;
ImgNose=IFaceCropped;
bboxNose=step(NoseDetector, ImgNose);
INose=insertObjectAnnotation(ImgNose, 'rectangle', bboxNose, 'Nose');
axes(handles.NoseAxes)
imshow(INose);
   
MouthDetector=vision.CascadeObjectDetector('Mouth');
ImgMouth=IFaceCropped;
%MouthDetector.MergeThreshold=40;
bboxMouth=step(MouthDetector, ImgMouth);
IMouth=insertObjectAnnotation(ImgMouth, 'rectangle', bboxMouth,'Mouth');
axes(handles.MouthAxes)
imshow(IMouth);

RightEyeDetector=vision.CascadeObjectDetector('RightEye');
%RightEyeDetector.MergeThreshold=50;
ImgRightEye=IFaceCropped;
bboxRightEye=step(RightEyeDetector, ImgRightEye);
IRightEye=insertObjectAnnotation(ImgRightEye, 'rectangle', bboxRightEye, 'RightEye');
axes(handles.RightEyeAxes)
imshow(IRightEye);


   xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Nose=bboxNose(1)+ bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   xCentroid_RightEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_RightEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   xCentroid_Mouth=bboxMouth(1)+bboxMouth(3)/2;
   yCentroid_Mouth=bboxMouth(2)+bboxMouth(4)/2;
   
   FaceHeight=bboxFace(4);
   Width_LeftEye=bboxLeftEye(3);
   Width_RightEye=bboxRightEye(3);
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
   Distance_RightEye_Nose=sqrt((xCentroid_Nose-xCentroid_RightEye)^2+(yCentroid_Nose-yCentroid_RightEye)^2);
   Distance_Nose_Mouth=sqrt((xCentroid_Nose-xCentroid_Mouth)^2+(yCentroid_Nose-yCentroid_Mouth)^2);
   Distance_LeftEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   Distance_RightEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);

   setappdata(0, 'FaceHeight', FaceHeight);
   setappdata(0, 'Width_LeftEye', Width_LeftEye);
   setappdata(0, 'Width_RightEye', Width_RightEye);
   setappdata(0, 'Distance_LeftEye_Nose', Distance_LeftEye_Nose);
   setappdata(0, 'Distance_RightEye_Nose', Distance_RightEye_Nose);
   setappdata(0, 'Distance_Nose_Mouth', Distance_Nose_Mouth);
   setappdata(0, 'Distance_LeftEye_Mouth', Distance_LeftEye_Mouth);
   setappdata(0, 'Distance_RightEye_Mouth', Distance_RightEye_Mouth);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaceRecognitionStep1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaceRecognitionStep1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in step2pushbutton.
function step2pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to step2pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
FaceRecognitionStep2

% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
FaceRecongnitionInput
