function varargout = AdminMainMenu(varargin)
% ADMINMAINMENU MATLAB code for AdminMainMenu.fig
%      ADMINMAINMENU, by itself, creates a new ADMINMAINMENU or raises the existing
%      singleton*.
%
%      H = ADMINMAINMENU returns the handle to a new ADMINMAINMENU or the handle to
%      the existing singleton*.
%
%      ADMINMAINMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINMAINMENU.M with the given input arguments.
%
%      ADMINMAINMENU('Property','Value',...) creates a new ADMINMAINMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdminMainMenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdminMainMenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdminMainMenu

% Last Modified by GUIDE v2.5 18-Aug-2017 23:50:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdminMainMenu_OpeningFcn, ...
                   'gui_OutputFcn',  @AdminMainMenu_OutputFcn, ...
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


% --- Executes just before AdminMainMenu is made visible.
function AdminMainMenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdminMainMenu (see VARARGIN)

% Choose default command line output for AdminMainMenu
handles.output = hObject;

axes(handles.axes1)
imshow('facewallpaper.jpg');

axes(handles.axes2)
imshow('ANNTrain.jpeg');

axes(handles.axes3)
imshow('Help-Icon.jpg');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AdminMainMenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdminMainMenu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in facerecognitionpushbutton.
function facerecognitionpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to facerecognitionpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
AdminFaceRecogInput

% --- Executes on button press in trainneuralnetworkpushbutton.
function trainneuralnetworkpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to trainneuralnetworkpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 close all;
 TrainNeuralNetwork

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in helppanelpushbutton.
function helppanelpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to helppanelpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
AdminHelpPanel

% --- Executes on button press in logoutpushbutton.
function logoutpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to logoutpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
UserLogin
