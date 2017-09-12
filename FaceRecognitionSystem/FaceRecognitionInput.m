function varargout = FaceRecognitionInput(varargin)
% FACERECOGNITIONINPUT MATLAB code for FaceRecognitionInput.fig
%      FACERECOGNITIONINPUT, by itself, creates a new FACERECOGNITIONINPUT or raises the existing
%      singleton*.
%
%      H = FACERECOGNITIONINPUT returns tTargetDatahe handle to a new FACERECOGNITIONINPUT or the handle to
%      the existing singleton*.
%
%      FACERECOGNITIONINPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FACERECOGNITIONINPUT.M with the given input arguments.
%
%      FACERECOGNITIONINPUT('Property','Value',...) creates a new FACERECOGNITIONINPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FaceRecognitionInput_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FaceRecognitionInput_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
% 
% <<FILENAME.PNG>>
% 
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FaceRecognitionInput

% Last Modified by GUIDE v2.5 19-Aug-2017 14:37:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;   %APPLICATION OF SINGLETON DESIGN PATTERN
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FaceRecognitionInput_OpeningFcn, ...
                   'gui_OutputFcn',  @FaceRecognitionInput_OutputFcn, ...
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


% --- Executes just before FaceRecognitionInput is made visible.
function FaceRecognitionInput_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FaceRecognitionInput (see VARARGIN)

% Choose default command line output for FaceRecognitionInput
handles.output = hObject;

filename=[]; %Variable to Set Filename of Image
pathname=[]; %Variable to Set Pathname of Image
setappdata(0, 'pathname', filename); %Set pathname to make accessible in other MATLAB GUI in this project
setappdata(0, 'filename', pathname); %Set filename to make accessible in other MATLAB GUI in this project

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FaceRecognitionInput wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FaceRecognitionInput_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future versioInputDataSetn of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%BROWSE BUTTON

[filename,pathname]=uigetfile({'*.*', 'All files'});    %Code to get filename and pathname from Browse Location
img=imread([pathname,filename]);   %Read Browsed Image using filename and pathname extracted
axes(handles.axes2)                %Test Input Image display feature set to display browsed image
imshow(img);                       %Show Input Test Image in Axes

setappdata(0, 'pathname', pathname); %Set pathname of Input Image as appdata to make accessible in other GUI
setappdata(0, 'filename', filename); %Set filename of Input Image as appdata to make accessible in other GUI


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filename=getappdata(0, 'filename');
pathname=getappdata(0, 'pathname');

if isempty(filename) && isempty(pathname)
    
    msgbox('Please Browse Image!', 'Error', 'error');
else
    
h = waitbar(0,'Please wait...');  %Creation of Waitbar (Processing bar)
steps = 1000;                      %Steps to run on Waitbar
for step = 1:steps
    % computations take place here
    waitbar(step / steps)            %Waitbar processing logic creation
end
close all;                           %Close current GUI
FaceRecognitionStep1                 %Navigate to Face Recognition Step 1

end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all; %Close Current GUI
NormalUserMainMenu %Navigate to Main Menu

% --- Executes on button press in helppushbutton.
function helppushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to helppushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NormalUserHelpPanel            %Navigate to Help Panel
