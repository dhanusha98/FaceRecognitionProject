function varargout = AdminHelpPanel(varargin)
% ADMINHELPPANEL MATLAB code for AdminHelpPanel.fig
%      ADMINHELPPANEL, by itself, creates a new ADMINHELPPANEL or raises the existing
%      singleton*.
%
%      H = ADMINHELPPANEL returns the handle to a new ADMINHELPPANEL or the handle to
%      the existing singleton*.
%
%      ADMINHELPPANEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINHELPPANEL.M with the given input arguments.
%
%      ADMINHELPPANEL('Property','Value',...) creates a new ADMINHELPPANEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AdminHelpPanel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AdminHelpPanel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AdminHelpPanel

% Last Modified by GUIDE v2.5 19-Aug-2017 13:13:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AdminHelpPanel_OpeningFcn, ...
                   'gui_OutputFcn',  @AdminHelpPanel_OutputFcn, ...
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


% --- Executes just before AdminHelpPanel is made visible.
function AdminHelpPanel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AdminHelpPanel (see VARARGIN)

% Choose default command line output for AdminHelpPanel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AdminHelpPanel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AdminHelpPanel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in loginhelppushbutton.
function loginhelppushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to loginhelppushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 helpdlg({'1. User Authentications are Case-Sensitive and make sure to provide them based on standards.' 
     '2. Make sure to change User Authentications every month to ensure high security.' 
     '3. User Accounts are two types which are Normal User and Admin User. Based on the provided user authentication, relevant user main menu will be opened.'
     '4. User Authentication Mechanisms available if user not provide user authentications for relevant required sections.'}, 'Login Process Help');


% --- Executes on button press in functionhelppushbutton.
function functionhelppushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to functionhelppushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

helpdlg({'1. All the functions are provided in the Main Menu. Click relevant button to start function implementation.' 
         '2. Admin Users are only granted for some system operations and mainly for configurations.' 
         '3. Changing Code lines in m file related to each function cause to change system features totally in some circumstances.'
         '4. If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).'}, 'Function Help');


% --- Executes on button press in facerecognitionpushbutton.
function facerecognitionpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to facerecognitionpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

helpdlg({'1. User should provide image to start recognition process.' 
         '2. Provided Image must contain only single person' 
         '3. Recognition based on facial measurements like Face Height, Width of Eyes, Distance from Eyes to Nose etc.'
         '4. If provided image not contains any person, Error Notification will display.'
         '5. Face Recognition Results will consist with Person Image, Bio Data (ex. Height, Address..), Criminal History etc. and those are non-editable.'
         '6. If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).'}, 'Help for Face Recognition Process');
     

% --- Executes on button press in ANNTrainPushbutton.
function ANNTrainPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ANNTrainPushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

helpdlg({'1. Admin Users only granted to implement Train Neural Network Operation.' 
         '2. Standard Training DataSet must be provided for new training.' 
         '3. Input and Target Datasets should provide separately for system for new training and they should highly accurate and based on neural network training standards'
         '4. If there any problem with training dataset, error notification will display.'
         '5. Number of Inputs and Targets should be standard size. Targets must available for every relevant set of inputs.'
         '6. If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).'}, 'Help for Face Recognition Process');

% --- Executes on button press in Otherproblemspushbutton.
function Otherproblemspushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Otherproblemspushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

helpdlg({'If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).' 
         }, 'Help');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close all;
AdminMainMenu