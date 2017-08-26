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

% Last Modified by GUIDE v2.5 26-Aug-2017 20:45:27

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
   
   Extracted_Face_Features=getappdata(0, 'Extracted_Face_Features');
   
   %Display Only Twenty Features out of Total '59' features extracted from face
   
   FirstFeature=Extracted_Face_Features(1);
   SecondFeature=Extracted_Face_Features(2);
   ThirdFeature=Extracted_Face_Features(3);
   FourthFeature=Extracted_Face_Features(4);
   FifthFeature=Extracted_Face_Features(5);
   SixthFeature=Extracted_Face_Features(6);
   SeventhFeature=Extracted_Face_Features(7);
   EighthFeature=Extracted_Face_Features(8);
   NinethFeature=Extracted_Face_Features(9);
   TenthFeature=Extracted_Face_Features(10);
   EleventhFeature=Extracted_Face_Features(11);
   TwelvethFeature=Extracted_Face_Features(12);
   ThirteenthFeature=Extracted_Face_Features(13);
   FourteenthFeature=Extracted_Face_Features(14);
   FifteenthFeature=Extracted_Face_Features(15);
   SixteenthFeature=Extracted_Face_Features(16);
   SeventeenthFeature=Extracted_Face_Features(17);
   EighteenthFeature=Extracted_Face_Features(18);
   NineteenthFeature=Extracted_Face_Features(19);
   TwentiethFeature=Extracted_Face_Features(20);
   TwentyOneFeature=Extracted_Face_Features(21);
   TwentyTwoFeature=Extracted_Face_Features(22);
   TwentyThreeFeature=Extracted_Face_Features(23);
   TwentyFourFeature=Extracted_Face_Features(24);
   TwentyFiveFeature=Extracted_Face_Features(25);
   TwentySixFeature=Extracted_Face_Features(26);
   TwentySevenFeature=Extracted_Face_Features(27);
   TwentyEightFeature=Extracted_Face_Features(28);
   TwentyNineFeature=Extracted_Face_Features(29);
   ThirtyFeature=Extracted_Face_Features(30);
   ThirtyOneFeature=Extracted_Face_Features(31);
   ThirtyTwoFeature=Extracted_Face_Features(32);
   ThirtyThreeFeature=Extracted_Face_Features(33);
   ThirtyFourFeature=Extracted_Face_Features(34);
   ThirtyFiveFeature=Extracted_Face_Features(35);
   ThirtySixFeature=Extracted_Face_Features(36);
   ThirtySevenFeature=Extracted_Face_Features(37);
   ThirtyEightFeature=Extracted_Face_Features(38);
   ThirtyNineFeature=Extracted_Face_Features(39);
   FourtyFeature=Extracted_Face_Features(40);
   FourtyOneFeature=Extracted_Face_Features(41);
   FourtyTwoFeature=Extracted_Face_Features(42);
   FourtyThreeFeature=Extracted_Face_Features(43);
   FourtyFourFeature=Extracted_Face_Features(44);
   FourtyFiveFeature=Extracted_Face_Features(45);
   FourtySixFeature=Extracted_Face_Features(46);
   FourtySevenFeature=Extracted_Face_Features(47);
   FourtyEightFeature=Extracted_Face_Features(48);
   FourtyNineFeature=Extracted_Face_Features(49);
   FiftyFeature=Extracted_Face_Features(50);
   FiftyOneFeature=Extracted_Face_Features(51);
   FiftyTwoFeature=Extracted_Face_Features(52);
   FiftyThreeFeature=Extracted_Face_Features(53);
   FiftyFourFeature=Extracted_Face_Features(54);
   FiftyFiveFeature=Extracted_Face_Features(55);
   FiftySixFeature=Extracted_Face_Features(56);
   FiftySevenFeature=Extracted_Face_Features(57);
   FiftyEightFeature=Extracted_Face_Features(58);
   FiftyNineFeature=Extracted_Face_Features(59);

   set(handles.FirstFeature, 'String', num2str(FirstFeature));
   set(handles.SecondFeature, 'String', num2str(SecondFeature));
   set(handles.ThirdFeature, 'String', num2str(ThirdFeature));
   set(handles.FourthFeature, 'String', num2str(FourthFeature));
   set(handles.FifthFeature, 'String', num2str(FifthFeature));
   set(handles.SixthFeature, 'String', num2str(SixthFeature));
   set(handles.SeventhFeature, 'String', num2str(SeventhFeature));
   set(handles.EighthFeature, 'String', num2str(EighthFeature));
   set(handles.NinethFeature, 'String', num2str(NinethFeature));
   set(handles.TenthFeature, 'String', num2str(TenthFeature));
   set(handles.EleventhFeature, 'String', num2str(EleventhFeature));
   set(handles.TwelvethFeature, 'String', num2str(TwelvethFeature));
   set(handles.ThirteenthFeature, 'String', num2str(ThirteenthFeature));
   set(handles.FourteenthFeature, 'String', num2str(FourteenthFeature));
   set(handles.FifteenthFeature, 'String', num2str(FifteenthFeature));
   set(handles.SixteenthFeature, 'String', num2str(SixteenthFeature));
   set(handles.SeventeenthFeature, 'String', num2str(SeventeenthFeature));
   set(handles.EighteenthFeature, 'String', num2str(EighteenthFeature));
   set(handles.NineteenthFeature, 'String', num2str(NineteenthFeature));
   set(handles.TwentiethFeature, 'String', num2str(TwentiethFeature));
   set(handles.TwentyOneFeature, 'String', num2str(TwentyOneFeature));
   set(handles.TwentyTwoFeature, 'String', num2str(TwentyTwoFeature));
   set(handles.TwentyThreeFeature, 'String', num2str(TwentyThreeFeature));
   set(handles.TwentyFourFeature, 'String', num2str(TwentyFourFeature));
   set(handles.TwentyFiveFeature, 'String', num2str(TwentyFiveFeature));
   set(handles.TwentySixFeature, 'String', num2str(TwentySixFeature));
   set(handles.TwentySevenFeature, 'String', num2str(TwentySevenFeature));
   set(handles.TwentyEightFeature, 'String', num2str(TwentyEightFeature));
   set(handles.TwentyNineFeature, 'String', num2str(TwentyNineFeature));
   set(handles.ThirtyFeature, 'String', num2str(ThirtyFeature));
   set(handles.ThirtyOneFeature, 'String', num2str(ThirtyOneFeature));
   set(handles.ThirtyTwoFeature, 'String', num2str(ThirtyTwoFeature));
   set(handles.ThirtyThreeFeature, 'String', num2str(ThirtyThreeFeature));
   set(handles.ThirtyFourFeature, 'String', num2str(ThirtyFourFeature));
   set(handles.ThirtyFiveFeature, 'String', num2str(ThirtyFiveFeature));
   set(handles.ThirtySixFeature, 'String', num2str(ThirtySixFeature));
   set(handles.ThirtySevenFeature, 'String', num2str(ThirtySevenFeature));
   set(handles.ThirtyEightFeature, 'String', num2str(ThirtyEightFeature));
   set(handles.ThirtyNineFeature, 'String', num2str(ThirtyNineFeature));
   set(handles.FourtyFeature, 'String', num2str(FourtyFeature));
   set(handles.FourtyOneFeature, 'String', num2str(FourtyOneFeature));
   set(handles.FourtyTwoFeature, 'String', num2str(FourtyTwoFeature));
   set(handles.FourtyThreeFeature, 'String', num2str(FourtyThreeFeature));
   set(handles.FourtyFourFeature, 'String', num2str(FourtyFourFeature));
   set(handles.FourtyFiveFeature, 'String', num2str(FourtyFiveFeature));
   set(handles.FourtySixFeature, 'String', num2str(FourtySixFeature));
   set(handles.FourtySevenFeature, 'String', num2str(FourtySevenFeature));
   set(handles.FourtyEightFeature, 'String', num2str(FourtyEightFeature));
   set(handles.FourtyNineFeature, 'String', num2str(FourtyNineFeature));
   set(handles.FiftyFeature, 'String', num2str(FiftyFeature));
   set(handles.FiftyOneFeature, 'String', num2str(FiftyOneFeature));
   set(handles.FiftyTwoFeature, 'String', num2str(FiftyTwoFeature));
   set(handles.FiftyThreeFeature, 'String', num2str(FiftyThreeFeature));
   set(handles.FiftyFourFeature, 'String', num2str(FiftyFourFeature));
   set(handles.FiftyFiveFeature, 'String', num2str(FiftyFiveFeature));
   set(handles.FiftySixFeature, 'String', num2str(FiftySixFeature));
   set(handles.FiftySevenFeature, 'String', num2str(FiftySevenFeature));
   set(handles.FiftyEightFeature, 'String', num2str(FiftyEightFeature));
   set(handles.FiftyNineFeature, 'String', num2str(FiftyNineFeature));
   
   nnetwork=evalin('base','NeuralNetwork');
   
  %outputresult=nnetwork([firstfeature; Distance_LeftEye_Mouth; Distance_LeftEye_Nose; Width_LeftEye; Distance_Nose_Mouth; Distance_RightEye_Mouth; Distance_RightEye_Nose; Width_RightEye]);
  outputresult=nnetwork([FirstFeature; SecondFeature; ThirdFeature; FourthFeature; FifthFeature; SixthFeature; SeventhFeature; EighthFeature;
                         NinethFeature; TenthFeature; EleventhFeature; TwelvethFeature; ThirteenthFeature; FourteenthFeature; FifteenthFeature 
                         SixteenthFeature; SeventeenthFeature; EighteenthFeature; NineteenthFeature; TwentiethFeature; TwentyOneFeature; TwentyTwoFeature;
                         TwentyThreeFeature; TwentyFourFeature; TwentyFiveFeature; TwentySixFeature; TwentySevenFeature; TwentyEightFeature; TwentyNineFeature;
                         ThirtyFeature; ThirtyOneFeature; ThirtyTwoFeature; ThirtyThreeFeature; ThirtyFourFeature; ThirtyFiveFeature; ThirtySixFeature; ThirtySevenFeature;
                         ThirtyEightFeature; ThirtyNineFeature; FourtyFeature; FourtyOneFeature; FourtyTwoFeature; FourtyThreeFeature; FourtyFourFeature; FourtyFiveFeature;
                         FourtySixFeature; FourtySevenFeature; FourtyEightFeature; FourtyNineFeature; FiftyFeature;
                         FiftyOneFeature; FiftyTwoFeature; FiftyThreeFeature; FiftyFourFeature; FiftyFiveFeature; FiftySixFeature; FiftySevenFeature; FiftyEightFeature; FiftyNineFeature]);
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



function FirstFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FirstFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FirstFeature as text
%        str2double(get(hObject,'String')) returns contents of FirstFeature as a double


% --- Executes during object creation, after setting all properties.
function FirstFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FirstFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EighthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to EighthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EighthFeature as text
%        str2double(get(hObject,'String')) returns contents of EighthFeature as a double


% --- Executes during object creation, after setting all properties.
function EighthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EighthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SeventhFeature_Callback(hObject, eventdata, handles)
% hObject    handle to SeventhFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SeventhFeature as text
%        str2double(get(hObject,'String')) returns contents of SeventhFeature as a double


% --- Executes during object creation, after setting all properties.
function SeventhFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SeventhFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SixthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to SixthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SixthFeature as text
%        str2double(get(hObject,'String')) returns contents of SixthFeature as a double


% --- Executes during object creation, after setting all properties.
function SixthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SixthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FifthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FifthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FifthFeature as text
%        str2double(get(hObject,'String')) returns contents of FifthFeature as a double


% --- Executes during object creation, after setting all properties.
function FifthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FifthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourthFeature as text
%        str2double(get(hObject,'String')) returns contents of FourthFeature as a double


% --- Executes during object creation, after setting all properties.
function FourthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirdFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirdFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirdFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirdFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirdFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirdFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SecondFeature_Callback(hObject, eventdata, handles)
% hObject    handle to SecondFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SecondFeature as text
%        str2double(get(hObject,'String')) returns contents of SecondFeature as a double


% --- Executes during object creation, after setting all properties.
function SecondFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SecondFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NinethFeature_Callback(hObject, eventdata, handles)
% hObject    handle to NinethFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NinethFeature as text
%        str2double(get(hObject,'String')) returns contents of NinethFeature as a double


% --- Executes during object creation, after setting all properties.
function NinethFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NinethFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirteenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirteenthFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirteenthFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirteenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourteenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourteenthFeature as text
%        str2double(get(hObject,'String')) returns contents of FourteenthFeature as a double


% --- Executes during object creation, after setting all properties.
function FourteenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FifteenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FifteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FifteenthFeature as text
%        str2double(get(hObject,'String')) returns contents of FifteenthFeature as a double


% --- Executes during object creation, after setting all properties.
function FifteenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FifteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TenthFeature as text
%        str2double(get(hObject,'String')) returns contents of TenthFeature as a double


% --- Executes during object creation, after setting all properties.
function TenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NineteenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to NineteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NineteenthFeature as text
%        str2double(get(hObject,'String')) returns contents of NineteenthFeature as a double


% --- Executes during object creation, after setting all properties.
function NineteenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NineteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentiethFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentiethFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentiethFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentiethFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentiethFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentiethFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyOneFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyOneFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyOneFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyOneFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyFiveFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyFiveFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyFiveFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyFiveFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentySixFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentySixFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentySixFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentySixFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentySevenFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentySevenFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentySevenFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentySevenFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyOneFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyOneFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyOneFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyOneFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyTwoFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyTwoFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyTwoFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyTwoFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyThreeFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyThreeFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyThreeFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyThreeFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtySevenFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtySevenFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtySevenFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtySevenFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyEightFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyEightFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyEightFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyEightFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyNineFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyNineFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyNineFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyNineFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyThreeFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyThreeFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyThreeFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyThreeFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyFourFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyFourFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyFourFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyFourFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyFiveFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyFiveFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyFiveFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyFiveFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyNineFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyNineFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyNineFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyNineFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyOneFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyOneFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyOneFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyOneFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyFiveFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyFiveFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyFiveFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyFiveFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftySixFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftySixFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftySixFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftySixFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftySevenFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftySevenFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftySevenFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftySevenFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EleventhFeature_Callback(hObject, eventdata, handles)
% hObject    handle to EleventhFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EleventhFeature as text
%        str2double(get(hObject,'String')) returns contents of EleventhFeature as a double


% --- Executes during object creation, after setting all properties.
function EleventhFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EleventhFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwelvethFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwelvethFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwelvethFeature as text
%        str2double(get(hObject,'String')) returns contents of TwelvethFeature as a double


% --- Executes during object creation, after setting all properties.
function TwelvethFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwelvethFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SixteenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to SixteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SixteenthFeature as text
%        str2double(get(hObject,'String')) returns contents of SixteenthFeature as a double


% --- Executes during object creation, after setting all properties.
function SixteenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SixteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SeventeenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to SeventeenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SeventeenthFeature as text
%        str2double(get(hObject,'String')) returns contents of SeventeenthFeature as a double


% --- Executes during object creation, after setting all properties.
function SeventeenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SeventeenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EighteenthFeature_Callback(hObject, eventdata, handles)
% hObject    handle to EighteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EighteenthFeature as text
%        str2double(get(hObject,'String')) returns contents of EighteenthFeature as a double


% --- Executes during object creation, after setting all properties.
function EighteenthFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EighteenthFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyTwoFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyTwoFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyTwoFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyTwoFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyThreeFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyThreeFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyThreeFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyThreeFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyFourFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyFourFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyFourFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyFourFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyEightFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyEightFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyEightFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyEightFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TwentyNineFeature_Callback(hObject, eventdata, handles)
% hObject    handle to TwentyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TwentyNineFeature as text
%        str2double(get(hObject,'String')) returns contents of TwentyNineFeature as a double


% --- Executes during object creation, after setting all properties.
function TwentyNineFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TwentyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyFourFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyFourFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyFourFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyFourFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtyFiveFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtyFiveFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtyFiveFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtyFiveFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtyFiveFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThirtySixFeature_Callback(hObject, eventdata, handles)
% hObject    handle to ThirtySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ThirtySixFeature as text
%        str2double(get(hObject,'String')) returns contents of ThirtySixFeature as a double


% --- Executes during object creation, after setting all properties.
function ThirtySixFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThirtySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyOneFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyOneFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyOneFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyOneFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyOneFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyTwoFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyTwoFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyTwoFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyTwoFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtySixFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtySixFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtySixFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtySixFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtySixFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtySevenFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtySevenFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtySevenFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtySevenFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtySevenFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FourtyEightFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FourtyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FourtyEightFeature as text
%        str2double(get(hObject,'String')) returns contents of FourtyEightFeature as a double


% --- Executes during object creation, after setting all properties.
function FourtyEightFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FourtyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyTwoFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyTwoFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyTwoFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyTwoFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyTwoFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyThreeFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyThreeFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyThreeFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyThreeFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyThreeFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyFourFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyFourFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyFourFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyFourFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyFourFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyEightFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyEightFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyEightFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyEightFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyEightFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FiftyNineFeature_Callback(hObject, eventdata, handles)
% hObject    handle to FiftyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FiftyNineFeature as text
%        str2double(get(hObject,'String')) returns contents of FiftyNineFeature as a double


% --- Executes during object creation, after setting all properties.
function FiftyNineFeature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FiftyNineFeature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
