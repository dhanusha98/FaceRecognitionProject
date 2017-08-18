function varargout = AdminFaceRecogInput(varargin)
% ADMINFACERECOGINPUT MATLAB code for AdminFaceRecogInput.fig
%      ADMINFACERECOGINPUT, by itself, creates a new ADMINFACERECOGINPUT or raises the existing
%      singleton*.
%
%      H = ADMINFACERECOGINPUT returns the handle to a new ADMINFACERECOGINPUT or the handle to
%      the existing singleton*.
%
%      ADMINFACERECOGINPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINFACERECOGINPUT.M with the given input arguments.
%
%      ADMINFACERECOGINPUT('Property','Value',...) creates a new ADMINFACERECOGINPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdminFaceRecogInput_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdminFaceRecogInput_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdminFaceRecogInput

% Last Modified by GUIDE v2.5 18-Aug-2017 22:13:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdminFaceRecogInput_OpeningFcn, ...
                   'gui_OutputFcn',  @AdminFaceRecogInput_OutputFcn, ...
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


% --- Executes just before AdminFaceRecogInput is made visible.
function AdminFaceRecogInput_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdminFaceRecogInput (see VARARGIN)

% Choose default command line output for AdminFaceRecogInput
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AdminFaceRecogInput wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdminFaceRecogInput_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in helppushbutton.
function helppushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to helppushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminHelpPanel

% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminMainMenu

% --- Executes on button press in imagebrowsepushbutton.
function imagebrowsepushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to imagebrowsepushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.*', 'All files'});
img=imread([pathname,filename]);
axes(handles.axes1)
imshow(img);

setappdata(0, 'pathname', pathname);
setappdata(0, 'filename', filename);


% --- Executes on button press in StartRecognitionpushbutton.
function StartRecognitionpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to StartRecognitionpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminFaceRecognitionStep1
