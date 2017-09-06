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
gui_Singleton = 1;       %APPLICATION OF SINGLETON DESIGN PATTERN
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

evalin('base', 'load(''net1.mat'')');    %Load Neural Network to Workspace

pathname=getappdata(0, 'pathname');      %Get pathname of Input Test Image
filename=getappdata(0, 'filename');      %Get filename of Input Test Image
   
ImgOriginal=imread([pathname, filename]);  %Read Original Test Image
axes(handles.OriginalImageAxes)            %Set 'OriginalImageAxes' to Display Original Test Image
imshow(ImgOriginal);                       %Display Original Test Image

ImgGray=rgb2gray(ImgOriginal);             %Convert Image to GrayScale Image
axes(handles.GrayScaleAxes)                %Set 'GrayScaleAxes' to Display GrayScale Image
imshow(ImgGray);                           %Display Gray Scale version of Image

Imgresize=imresize(ImgGray, [480, 480]);   %Resize Gray Scale Image to 480x480 dimension
axes(handles.ResizeImageAxes)              %Set 'ResizedImageAxes' to Display Resized Image
imshow(Imgresize);                         %Display Resized Image

ImgNoiseRemoval=medfilt2(Imgresize);       %Noise Removal of Image using Median Filter
axes(handles.NoiseRemovalAxes)             %Set 'NoiseRemovalAxes' to Display Noise Removed Image
imshow(ImgNoiseRemoval);                   %Display Noise Removed Image

FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');       %Creation of Face Detector using Viola Jones Algorithm
bboxFace=step(FaceDetector, ImgNoiseRemoval);                       %Bounding Box to display Face Location Area
IFace=insertObjectAnnotation(ImgNoiseRemoval, 'rectangle', bboxFace, 'Face');  %Detected Face
axes(handles.FaceDetectionAxes)
imshow(IFace);                          %Display Detected Face on 'FaceDetectionAxes'

IFaceCropped=imcrop(ImgNoiseRemoval, [bboxFace(1) bboxFace(2) bboxFace(3) bboxFace(4)]); %Crop Face from Image
axes(handles.CropImageAxes)
imshow(IFaceCropped);                   %Display Crop Image on 'CropImageAxes'

CroppedImageResized=imresize(IFaceCropped, [150,150]);    %Resized Crop Image to 150x150 dimension
axes(handles.ResizedCropImage)
imshow(CroppedImageResized);            %Display Resized Crop Image on 'ResizedCropImage' Axes

        %FEATURE EXTRACTION USING LOCAL BINARY PATTERN (LBP) FOR TEST IMAGE

   Extracted_Face_Features=extractLBPFeatures(CroppedImageResized);  
   
   setappdata(0, 'Extracted_Face_Features', Extracted_Face_Features); %Make Extracted Features Accessible in Other Interfaces
 
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
%'GO TO STEP 2' BUTTON

h = waitbar(0,'Please wait...');  %Creation of Waitbar (Processing bar)
steps = 1000;                     %Steps to run on Waitbar
for step = 1:steps
    % computations take place here
    waitbar(step / steps)         %Waitbar processing logic creation
end
close all;                        %Close current GUI
FaceRecognitionStep2              %Navigate to Face Recognition Step 1

% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%BACK BUTTON

close all;                       %Close Current GUI
FaceRecognitionInput             %Navigate to 'FaceRecognitionInput' GUI