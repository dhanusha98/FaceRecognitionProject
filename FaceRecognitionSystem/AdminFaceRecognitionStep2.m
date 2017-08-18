function varargout = AdminFaceRecognitionStep2(varargin)
% ADMINFACERECOGNITIONSTEP2 MATLAB code for AdminFaceRecognitionStep2.fig
%      ADMINFACERECOGNITIONSTEP2, by itself, creates a new ADMINFACERECOGNITIONSTEP2 or raises the existing
%      singleton*.
%
%      H = ADMINFACERECOGNITIONSTEP2 returns the handle to a new ADMINFACERECOGNITIONSTEP2 or the handle to
%      the existing singleton*.
%
%      ADMINFACERECOGNITIONSTEP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINFACERECOGNITIONSTEP2.M with the given input arguments.
%
%      ADMINFACERECOGNITIONSTEP2('Property','Value',...) creates a new ADMINFACERECOGNITIONSTEP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdminFaceRecognitionStep2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdminFaceRecognitionStep2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdminFaceRecognitionStep2

% Last Modified by GUIDE v2.5 19-Aug-2017 00:05:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdminFaceRecognitionStep2_OpeningFcn, ...
                   'gui_OutputFcn',  @AdminFaceRecognitionStep2_OutputFcn, ...
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


% --- Executes just before AdminFaceRecognitionStep2 is made visible.
function AdminFaceRecognitionStep2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdminFaceRecognitionStep2 (see VARARGIN)

% Choose default command line output for AdminFaceRecognitionStep2
handles.output = hObject;

   FaceHeight=getappdata(0,'FaceHeight');
   Width_LeftEye=getappdata(0, 'Width_LeftEye');
   Width_RightEye=getappdata(0, 'Width_RightEye');
   Distance_LeftEye_Nose=getappdata(0, 'Distance_LeftEye_Nose');
   Distance_RightEye_Nose=getappdata(0, 'Distance_RightEye_Nose');
   Distance_Nose_Mouth=getappdata(0, 'Distance_Nose_Mouth');
   Distance_LeftEye_Mouth=getappdata(0, 'Distance_LeftEye_Mouth');
   Distance_RightEye_Mouth=getappdata(0, 'Distance_RightEye_Mouth');
   
   set(handles.Faceheight, 'String', num2str(FaceHeight));
   set(handles.LeftEyeWidth, 'String', num2str(Width_LeftEye));
   set(handles.RightEyeWidth, 'String', num2str(Width_RightEye));
   set(handles.LeftEyeToNoseDistance, 'String', num2str(Distance_LeftEye_Nose));
   set(handles.RightEyeToNose, 'String', num2str(Distance_RightEye_Nose));
   set(handles.NoseToMouthDistance, 'String', num2str(Distance_Nose_Mouth));
   set(handles.LeftEyeToMouthDistance, 'String', num2str(Distance_LeftEye_Mouth));
   set(handles.RightEyeToMouthDistance, 'String', num2str(Distance_RightEye_Mouth));
   
   nnetwork5=evalin('base','network5');
   
   outputresult=nnetwork5([FaceHeight; Distance_LeftEye_Mouth; Distance_LeftEye_Nose; Width_LeftEye; Distance_Nose_Mouth; Distance_RightEye_Mouth; Distance_RightEye_Nose; Width_RightEye]);
   finaloutputresult=round(outputresult, -1);
   set(handles.NeuralNetOutput, 'String', num2str(outputresult));
   set(handles.FinalResult, 'String', num2str(finaloutputresult));

   setappdata(0, 'finaloutputresult', finaloutputresult);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AdminFaceRecognitionStep2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdminFaceRecognitionStep2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function FinalResult_Callback(hObject, eventdata, handles)
% hObject    handle to FinalResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FinalResult as text
%        str2double(get(hObject,'String')) returns contents of FinalResult as a double


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


% --- Executes on button press in viewresultspushbutton.
function viewresultspushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to viewresultspushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminFaceRecogOutput

% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminMainMenu
