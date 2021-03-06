function varargout = FaceRecognitionSteps(varargin)
% FACERECOGNITIONSTEPS MATLAB code for FaceRecognitionSteps.fig
%      FACERECOGNITIONSTEPS, by itself, creates a new FACERECOGNITIONSTEPS or raises the existing
%      singleton*.
%
%      H = FACERECOGNITIONSTEPS returns the handle to a new FACERECOGNITIONSTEPS or the handle to
%      the existing singleton*.
%
%      FACERECOGNITIONSTEPS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FACERECOGNITIONSTEPS.M with the given input arguments.
%
%      FACERECOGNITIONSTEPS('Property','Value',...) creates a new FACERECOGNITIONSTEPS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FaceRecognitionSteps_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FaceRecognitionSteps_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaceRecognitionSteps

% Last Modified by GUIDE v2.5 13-Aug-2017 20:51:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaceRecognitionSteps_OpeningFcn, ...
                   'gui_OutputFcn',  @FaceRecognitionSteps_OutputFcn, ...
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


% --- Executes just before FaceRecognitionSteps is made visible.
function FaceRecognitionSteps_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FaceRecognitionSteps (see VARARGIN)

% Choose default command line output for FaceRecognitionSteps
handles.output = hObject;

evalin('base', 'load(''network3.mat'')');

pathname=getappdata(0, 'pathname');
filename=getappdata(0, 'filename');

   ImgOriginal=imread([pathname, filename]);
   ImgOriginalResize=imresize(ImgOriginal, [320,320]);
   axes(handles.ResizedOriginalImageAxes);
   imshow(ImgOriginalResize);
   
   ImgGray=rgb2gray(ImgOriginalResize);
   axes(handles.GrayScaleAxes);
   imshow(ImgGray);
   
   ImgNoiseRemoval=medfilt2(ImgGray);
   axes(handles.NoiseRemovalAxes);
   imshow(ImgNoiseRemoval);
   
   
   %FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
   %ImgFace=imread(ImgGray);
   %ImgFaceResize=imresize(ImgFace, [320,320]);
   %bboxFace=step(FaceDetector, ImgFaceResize);
   %IFaces=insertObjectAnnotation(ImgFaceResize, 'rectangle', bboxFace, 'Face');
   %axes(handles.FaceDetectionAxes);
   %imshow(IFaces);
   %assignin('base', 'IFaces', IFaces);
   
   FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
   ImgFace=ImgNoiseRemoval;
   %ImgFaceResize=imresize(ImgFace, [320,320]);
   bboxFace=step(FaceDetector, ImgFace);
   IFaces=insertObjectAnnotation(ImgFace, 'rectangle', bboxFace, 'Face');
   axes(handles.FaceDetectionAxes);
   imshow(IFaces);
   assignin('base', 'IFaces', IFaces);
   
   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   %LeftEyeDetector.MergeThreshold=40;
   ImgLeftEye=ImgNoiseRemoval;
   %ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEye);
   ILeftEye=insertObjectAnnotation(ImgLeftEye, 'rectangle', bboxLeftEye, 'LeftEye');
   axes(handles.LeftEyeAxes);
   imshow(ILeftEye);
   assignin('base', 'ILeftEye', ILeftEye);

  
   NoseDetector=vision.CascadeObjectDetector('Nose');
   %NoseDetector.MergeThreshold=25;
   ImgNose=ImgNoiseRemoval;
   %ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNose);
   INose=insertObjectAnnotation(ImgNose, 'rectangle', bboxNose, 'Nose');
   axes(handles.NoseAxes);
   imshow(INose);
   assignin('base', 'INose', INose);
   
   MouthDetector=vision.CascadeObjectDetector('Mouth');
   ImgMouth=ImgNoiseRemoval;
   %ImgMouthResize=imresize(ImgMouth, [320,320]);
   MouthDetector.MergeThreshold=40;
   bboxMouth=step(MouthDetector, ImgMouth);
   IMouth=insertObjectAnnotation(ImgMouth, 'rectangle', bboxMouth,'Mouth');
   axes(handles.MouthAxes);
   imshow(IMouth);
   assignin('base', 'IMouth', IMouth);
   
   RightEyeDetector=vision.CascadeObjectDetector('RightEye');
   %RightEyeDetector.MergeThreshold=20;
   RightEyeDetector.MergeThreshold=5;
   %ImgRightEye=ImgNoiseRemoval;
   ImgRightEye=ImgNoiseRemoval;
   %ImgRightEyeResize=imresize(ImgRightEye, [320,320]);
   bboxRightEye=step(RightEyeDetector, ImgRightEye);
   IRightEye=insertObjectAnnotation(ImgRightEye, 'rectangle', bboxRightEye, 'RightEye');
   axes(handles.RightEyeAxes);
   imshow(IRightEye);
   assignin('base', 'IRightEye', IRightEye);
   
   xCentroid_LeftEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_LeftEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   assignin('base', 'xCentroid_LeftEye', xCentroid_LeftEye);
   assignin('base', 'yCentroid_LeftEye', yCentroid_LeftEye);

   xCentroid_Nose=bboxNose(1)+ bboxNose(3)/2;
   yCentroid_Nose=bboxNose(2)+bboxNose(4)/2;
   
   assignin('base', 'xCentroid_Nose', xCentroid_Nose);
   assignin('base', 'yCentroid_Nose', yCentroid_Nose);
   
   xCentroid_RightEye=bboxLeftEye(1) + bboxLeftEye(3)/2;
   yCentroid_RightEye=bboxLeftEye(2) + bboxLeftEye(4)/2;
   
   assignin('base', 'xCentroid_RightEye', xCentroid_RightEye);
   assignin('base', 'yCentroid_RightEye', yCentroid_RightEye);
   
   xCentroid_Mouth=bboxMouth(1)+bboxMouth(3)/2;
   yCentroid_Mouth=bboxMouth(2)+bboxMouth(4)/2;
   
   assignin('base', 'xCentroid_Mouth', xCentroid_Mouth);
   assignin('base', 'yCentroid_Mouth', yCentroid_Mouth);
   
   FaceHeight=bboxFace(4);
   Width_LeftEye=bboxLeftEye(3);
   Width_RightEye=bboxRightEye(3);
   Distance_LeftEye_Nose=sqrt((xCentroid_Nose-xCentroid_LeftEye)^2+(yCentroid_Nose-yCentroid_LeftEye)^2);
   Distance_RightEye_Nose=sqrt((xCentroid_Nose-xCentroid_RightEye)^2+(yCentroid_Nose-yCentroid_RightEye)^2);
   Distance_Nose_Mouth=sqrt((xCentroid_Nose-xCentroid_Mouth)^2+(yCentroid_Nose-yCentroid_Mouth)^2);
   Distance_LeftEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   Distance_RightEye_Mouth=sqrt((xCentroid_LeftEye-xCentroid_Mouth)^2+(yCentroid_LeftEye-yCentroid_Mouth)^2);
   
   assignin('base', 'FaceHeight', FaceHeight);
   assignin('base', 'Width_LeftEye', Width_LeftEye);
   assignin('base', 'Width_RightEye', Width_RightEye);
   assignin('base', 'Distance_LeftEye_Nose', Distance_LeftEye_Nose);
   assignin('base', 'Distance_RightEye_Nose', Distance_RightEye_Nose);
   assignin('base', 'Distance_Nose_Mouth', Distance_Nose_Mouth);
   assignin('base', 'Distance_LeftEye_Mouth', Distance_LeftEye_Mouth);
   assignin('base', 'Distance_RightEye_Mouth', Distance_RightEye_Mouth);

   set(handles.Faceheight, 'String', num2str(FaceHeight));
   set(handles.LeftEyeWidth, 'String', num2str(Width_LeftEye));
   set(handles.RightEyeWidth, 'String', num2str(Width_RightEye));
   set(handles.LeftEyeToNoseDistance, 'String', num2str(Distance_LeftEye_Nose));
   set(handles.RightEyeToNose, 'String', num2str(Distance_RightEye_Nose));
   set(handles.NoseToMouthDistance, 'String', num2str(Distance_Nose_Mouth));
   set(handles.LeftEyeToMouthDistance, 'String', num2str(Distance_LeftEye_Mouth));
   set(handles.RightEyeToMouthDistance, 'String', num2str(Distance_RightEye_Mouth));
   
   nnetwork3=evalin('base','network3');
   
   outputresult=nnetwork3([FaceHeight; Distance_LeftEye_Mouth; Distance_LeftEye_Nose; Width_LeftEye; Distance_Nose_Mouth; Distance_RightEye_Mouth; Distance_RightEye_Nose; Width_RightEye]);
   finaloutputresult=round(outputresult);
   set(handles.NeuralNetOutput, 'String', num2str(outputresult));
   set(handles.FinalResult, 'String', num2str(finaloutputresult));

   setappdata(0, 'finaloutputresult', finaloutputresult);
   

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaceRecognitionSteps wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaceRecognitionSteps_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
FaceRecogOutput


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
FaceRecognitionInput



function Faceheight_Callback(hObject, eventdata, handles)
% hObject    handle to Faceheight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Faceheight as text
%        str2double(get(hObject,'String')) returns contents of Faceheight as a double


% --- Executes during object creation, after setting all properties.
function Faceheight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Faceheight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LeftEyeToNoseDistance_Callback(hObject, eventdata, handles)
% hObject    handle to LeftEyeToNoseDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LeftEyeToNoseDistance as text
%        str2double(get(hObject,'String')) returns contents of LeftEyeToNoseDistance as a double


% --- Executes during object creation, after setting all properties.
function LeftEyeToNoseDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftEyeToNoseDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LeftEyeWidth_Callback(hObject, eventdata, handles)
% hObject    handle to LeftEyeWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LeftEyeWidth as text
%        str2double(get(hObject,'String')) returns contents of LeftEyeWidth as a double


% --- Executes during object creation, after setting all properties.
function LeftEyeWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftEyeWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RightEyeToNose_Callback(hObject, eventdata, handles)
% hObject    handle to RightEyeToNose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RightEyeToNose as text
%        str2double(get(hObject,'String')) returns contents of RightEyeToNose as a double


% --- Executes during object creation, after setting all properties.
function RightEyeToNose_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightEyeToNose (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RightEyeWidth_Callback(hObject, eventdata, handles)
% hObject    handle to RightEyeWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RightEyeWidth as text
%        str2double(get(hObject,'String')) returns contents of RightEyeWidth as a double


% --- Executes during object creation, after setting all properties.
function RightEyeWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightEyeWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NoseToMouthDistance_Callback(hObject, eventdata, handles)
% hObject    handle to NoseToMouthDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NoseToMouthDistance as text
%        str2double(get(hObject,'String')) returns contents of NoseToMouthDistance as a double


% --- Executes during object creation, after setting all properties.
function NoseToMouthDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NoseToMouthDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LeftEyeToMouthDistance_Callback(hObject, eventdata, handles)
% hObject    handle to LeftEyeToMouthDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LeftEyeToMouthDistance as text
%        str2double(get(hObject,'String')) returns contents of LeftEyeToMouthDistance as a double


% --- Executes during object creation, after setting all properties.
function LeftEyeToMouthDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LeftEyeToMouthDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RightEyeToMouthDistance_Callback(hObject, eventdata, handles)
% hObject    handle to RightEyeToMouthDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RightEyeToMouthDistance as text
%        str2double(get(hObject,'String')) returns contents of RightEyeToMouthDistance as a double


% --- Executes during object creation, after setting all properties.
function RightEyeToMouthDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RightEyeToMouthDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FinalResult_Callback(hObject, eventdata, handles)
% hObject    handle to FinalResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FinalResult as text
%        str2double(get(hObject,'String')) returns contents of FinalResult as a double
close all;
FaceRecogOutput
% --- Executes during object creation, after setting all properties.
function FinalResult_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FinalResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in viewresultpushbutton.
function viewresultpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to viewresultpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
FaceRecogOutput
% --- Executes on button press in Backpushbutton.
function Backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
FaceRecognitionInput



function NeuralNetOutput_Callback(hObject, eventdata, handles)
% hObject    handle to NeuralNetOutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NeuralNetOutput as text
%        str2double(get(hObject,'String')) returns contents of NeuralNetOutput as a double


% --- Executes during object creation, after setting all properties.
function NeuralNetOutput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NeuralNetOutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
