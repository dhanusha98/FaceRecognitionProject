function varargout = AdminFaceRecogOutput(varargin)
% ADMINFACERECOGOUTPUT MATLAB code for AdminFaceRecogOutput.fig
%      ADMINFACERECOGOUTPUT, by itself, creates a new ADMINFACERECOGOUTPUT or raises the existing
%      singleton*.
%
%      H = ADMINFACERECOGOUTPUT returns the handle to a new ADMINFACERECOGOUTPUT or the handle to
%      the existing singleton*.
%
%      ADMINFACERECOGOUTPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINFACERECOGOUTPUT.M with the given input arguments.
%
%      ADMINFACERECOGOUTPUT('Property','Value',...) creates a new ADMINFACERECOGOUTPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdminFaceRecogOutput_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdminFaceRecogOutput_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdminFaceRecogOutput

% Last Modified by GUIDE v2.5 18-Aug-2017 23:33:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdminFaceRecogOutput_OpeningFcn, ...
                   'gui_OutputFcn',  @AdminFaceRecogOutput_OutputFcn, ...
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


% --- Executes just before AdminFaceRecogOutput is made visible.
function AdminFaceRecogOutput_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdminFaceRecogOutput (see VARARGIN)

% Choose default command line output for AdminFaceRecogOutput
handles.output = hObject;

finaloutputresult=getappdata(0, 'finaloutputresult');
set(handles.editPersonID, 'String', num2str(finaloutputresult));

save('finaloutputresult.txt', 'finaloutputresult', '-ascii');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AdminFaceRecogOutput wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdminFaceRecogOutput_OutputFcn(hObject, eventdata, handles) 
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



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function editAddress_Callback(hObject, eventdata, handles)
% hObject    handle to editAddress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAddress as text
%        str2double(get(hObject,'String')) returns contents of editAddress as a double


% --- Executes during object creation, after setting all properties.
function editAddress_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAddress (see GCBO)
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


% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminMainmenu

% --- Executes on button press in resultsdisplaypushbutton.
function resultsdisplaypushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to resultsdisplaypushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

finaloutputresult=getappdata(0, 'finaloutputresult');
SuspectDataLayer(finaloutputresult)

PersonID=evalin('base', 'PID');
PersonName=evalin('base', 'PersonName');
DOB=evalin('base', 'DOB');
Sex=evalin('base', 'Sex');
Height=evalin('base', 'Height');
Weight=evalin('base', 'Weight');
EyeColor=evalin('base', 'EyeColor');
Ethnicity=evalin('base', 'Ethnicity');
Hair=evalin('base', 'Hair');
ContactDetails=evalin('base', 'ContactDetails');
Address=evalin('base', 'Address');
Description=evalin('base', 'Description');
Country=evalin('base', 'Country');
CriminalHistory=evalin('base', 'CriminalHistory');
FaceImage=evalin('base', 'FaceImage');

set(handles.editPersonID, 'String', PersonID);
set(handles.editPersonName, 'String', PersonName);
set(handles.editDOB, 'String', DOB);
set(handles.editSex, 'String', Sex);
set(handles.editHeight, 'String', Height);
set(handles.editWeight, 'String', Weight);
set(handles.editEyeColor, 'String', EyeColor);
set(handles.editHair, 'String', Hair);
set(handles.editEthnicity, 'String', Ethnicity);
set(handles.editContact, 'String', ContactDetails);
set(handles.editAddress, 'String', Address);
set(handles.editDescription, 'String', Description);
set(handles.editCountry, 'String', Country);
set(handles.editCriminalHistory, 'String', CriminalHistory);

%FImage=cell2struct(FaceImage, 'Image', 2);
%set(handles.axes1)
%imshow(FImage);

%cellImage=cell2mat(FaceImage);
%grayImage=reshape(cellImage, [1,1]);
%set(handles.axes1)
%%imshow(grayImage, []);

FImage=cell2mat(FaceImage);
%FImageResized=imresize(FImage, [128 128]);
%assignin('base','FImage', FImageResized);
set(handles.axes1)
imshow(FImage{1,1})
