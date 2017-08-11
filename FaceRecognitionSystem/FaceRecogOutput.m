function varargout = FaceRecogOutput(varargin)
% FACERECOGOUTPUT MATLAB code for FaceRecogOutput.fig
%      FACERECOGOUTPUT, by itself, creates a new FACERECOGOUTPUT or raises the existing
%      singleton*.
%
%      H = FACERECOGOUTPUT returns the handle to a new FACERECOGOUTPUT or the handle to
%      the existing singleton*.
%
%      FACERECOGOUTPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FACERECOGOUTPUT.M with the given input arguments.
%
%      FACERECOGOUTPUT('Property','Value',...) creates a new FACERECOGOUTPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FaceRecogOutput_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FaceRecogOutput_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaceRecogOutput

% Last Modified by GUIDE v2.5 09-Aug-2017 01:03:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaceRecogOutput_OpeningFcn, ...
                   'gui_OutputFcn',  @FaceRecogOutput_OutputFcn, ...
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


% --- Executes just before FaceRecogOutput is made visible.
function FaceRecogOutput_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FaceRecogOutput (see VARARGIN)

% Choose default command line output for FaceRecogOutput
handles.output = hObject;

%e=getappdata(0,'imgvalue');
%axes(handles.axes1);
%imshow(e);
evalin('base', 'load(''network3.mat'')');

pathname=getappdata(0, 'pathname');
filename=getappdata(0, 'filename');


   FaceDetector=vision.CascadeObjectDetector('FrontalFaceCART');
   ImgFace=imread([pathname, filename]);
   ImgFaceResize=imresize(ImgFace, [320,320]);
   bboxFace=step(FaceDetector, ImgFaceResize);
   IFaces=insertObjectAnnotation(ImgFaceResize, 'rectangle', bboxFace, 'Face');
   %axes(handles.axes1)
   %imshow(IFaces);
   assignin('base', 'IFaces', IFaces);
   
   LeftEyeDetector=vision.CascadeObjectDetector('LeftEye');
   %LeftEyeDetector.MergeThreshold=40;
   ImgLeftEye=imread([pathname, filename]);
   ImgLeftEyeResize=imresize(ImgLeftEye, [320,320]);
   bboxLeftEye=step(LeftEyeDetector, ImgLeftEyeResize);
   ILeftEye=insertObjectAnnotation(ImgLeftEyeResize, 'rectangle', bboxLeftEye, 'LeftEye');
   assignin('base', 'ILeftEye', ILeftEye);

  
   NoseDetector=vision.CascadeObjectDetector('Nose');
   %NoseDetector.MergeThreshold=25;
   ImgNose=imread([pathname, filename]);
   ImgNoseResize=imresize(ImgNose, [320,320]);
   bboxNose=step(NoseDetector, ImgNoseResize);
   INose=insertObjectAnnotation(ImgNoseResize, 'rectangle', bboxNose, 'Nose');
   assignin('base', 'INose', INose);
   
   MouthDetector=vision.CascadeObjectDetector('Mouth');
   ImgMouth=imread([pathname, filename]);
   ImgMouthResize=imresize(ImgMouth, [320,320]);
   MouthDetector.MergeThreshold=40;
   bboxMouth=step(MouthDetector, ImgMouthResize);
   IMouth=insertObjectAnnotation(ImgMouthResize, 'rectangle', bboxMouth,'Mouth');
   assignin('base', 'IMouth', IMouth);
   
   RightEyeDetector=vision.CascadeObjectDetector('RightEye');
   %RightEyeDetector.MergeThreshold=20;
   RightEyeDetector.MergeThreshold=5;
   ImgRightEye=imread([pathname, filename]);
   ImgRightEyeResize=imresize(ImgRightEye, [320,320]);
   bboxRightEye=step(RightEyeDetector, ImgRightEyeResize);
   IRightEye=insertObjectAnnotation(ImgRightEyeResize, 'rectangle', bboxRightEye, 'RightEye');
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

   
   nnetwork3=evalin('base','network3');
   
   outputresult=nnetwork3([FaceHeight; Distance_LeftEye_Mouth; Distance_LeftEye_Nose; Width_LeftEye; Distance_Nose_Mouth; Distance_RightEye_Mouth; Distance_RightEye_Nose; Width_RightEye]);
   finaloutputresult=round(outputresult);
   set(handles.editPersonID, 'String', num2str(finaloutputresult));
   
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaceRecogOutput wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaceRecogOutput_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function editPersonID_Callback(hObject, eventdata, handles)
% hObject    handle to editPersonID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPersonID as text
%        str2double(get(hObject,'String')) returns contents of editPersonID as a double


% --- Executes during object creation, after setting all properties.
function editPersonID_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPersonID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPersonName_Callback(hObject, eventdata, handles)
% hObject    handle to editPersonName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPersonName as text
%        str2double(get(hObject,'String')) returns contents of editPersonName as a double


% --- Executes during object creation, after setting all properties.
function editPersonName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPersonName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editDOB_Callback(hObject, eventdata, handles)
% hObject    handle to editDOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editDOB as text
%        str2double(get(hObject,'String')) returns contents of editDOB as a double


% --- Executes during object creation, after setting all properties.
function editDOB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editSex_Callback(hObject, eventdata, handles)
% hObject    handle to editSex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSex as text
%        str2double(get(hObject,'String')) returns contents of editSex as a double


% --- Executes during object creation, after setting all properties.
function editSex_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editHeight_Callback(hObject, eventdata, handles)
% hObject    handle to editHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editHeight as text
%        str2double(get(hObject,'String')) returns contents of editHeight as a double


% --- Executes during object creation, after setting all properties.
function editHeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editWeight_Callback(hObject, eventdata, handles)
% hObject    handle to editWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editWeight as text
%        str2double(get(hObject,'String')) returns contents of editWeight as a double


% --- Executes during object creation, after setting all properties.
function editWeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEyeColor_Callback(hObject, eventdata, handles)
% hObject    handle to editEyeColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEyeColor as text
%        str2double(get(hObject,'String')) returns contents of editEyeColor as a double


% --- Executes during object creation, after setting all properties.
function editEyeColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEyeColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editHair_Callback(hObject, eventdata, handles)
% hObject    handle to editHair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editHair as text
%        str2double(get(hObject,'String')) returns contents of editHair as a double


% --- Executes during object creation, after setting all properties.
function editHair_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editHair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editEthnicity_Callback(hObject, eventdata, handles)
% hObject    handle to editEthnicity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editEthnicity as text
%        str2double(get(hObject,'String')) returns contents of editEthnicity as a double


% --- Executes during object creation, after setting all properties.
function editEthnicity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editEthnicity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editContact_Callback(hObject, eventdata, handles)
% hObject    handle to editContact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editContact as text
%        str2double(get(hObject,'String')) returns contents of editContact as a double


% --- Executes during object creation, after setting all properties.
function editContact_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editContact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editDescription_Callback(hObject, eventdata, handles)
% hObject    handle to editDescription (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editDescription as text
%        str2double(get(hObject,'String')) returns contents of editDescription as a double


% --- Executes during object creation, after setting all properties.
function editDescription_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDescription (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editCriminalHistory_Callback(hObject, eventdata, handles)
% hObject    handle to editCriminalHistory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCriminalHistory as text
%        str2double(get(hObject,'String')) returns contents of editCriminalHistory as a double


% --- Executes during object creation, after setting all properties.
function editCriminalHistory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCriminalHistory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editCountry_Callback(hObject, eventdata, handles)
% hObject    handle to editCountry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCountry as text
%        str2double(get(hObject,'String')) returns contents of editCountry as a double


% --- Executes during object creation, after setting all properties.
function editCountry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCountry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

FaceRecognitionInput



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%img=getappdata(0,'imgvalue');

%axes(handles.axes1)
%imshow(img);

     
   


