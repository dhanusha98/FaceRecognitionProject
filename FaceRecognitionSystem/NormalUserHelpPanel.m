function varargout = NormalUserHelpPanel(varargin)
% NORMALUSERHELPPANEL MATLAB code for NormalUserHelpPanel.fig
%      NORMALUSERHELPPANEL, by itself, creates a new NORMALUSERHELPPANEL or raises the existing
%      singleton*.
%
%      H = NORMALUSERHELPPANEL returns the handle to a new NORMALUSERHELPPANEL or the handle to
%      the existing singleton*.
%
%      NORMALUSERHELPPANEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NORMALUSERHELPPANEL.M with the given input arguments.
%
%      NORMALUSERHELPPANEL('Property','Value',...) creates a new NORMALUSERHELPPANEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NormalUserHelpPanel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NormalUserHelpPanel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NormalUserHelpPanel

% Last Modified by GUIDE v2.5 19-Aug-2017 13:09:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;   %APPLICATION OF SINGLETON DESIGN PATTERN
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NormalUserHelpPanel_OpeningFcn, ...
                   'gui_OutputFcn',  @NormalUserHelpPanel_OutputFcn, ...
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


% --- Executes just before NormalUserHelpPanel is made visible.
function NormalUserHelpPanel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NormalUserHelpPanel (see VARARGIN)

% Choose default command line output for NormalUserHelpPanel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NormalUserHelpPanel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NormalUserHelpPanel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in loginhelp.
function loginhelp_Callback(hObject, eventdata, handles)
% hObject    handle to loginhelp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%LOGIN PROCESS HELP BUTTON

%Help Notification Dialog Box
 helpdlg({'1. User Authentications are Case-Sensitive and make sure to provide them based on standards.' 
     '2. Make sure to change User Authentications every month to ensure high security.' 
     '3. User Accounts are two types which are Normal User and Admin User. Based on the provided user authentication, relevant user main menu will be opened.'
     '4. User Authentication Mechanisms available if user not provide user authentications for relevant required sections.'}, 'Login Process Help');

% --- Executes on button press in functionhelp.
function functionhelp_Callback(hObject, eventdata, handles)
% hObject    handle to functionhelp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%FUNCTION SELECTION AND IMPLEMENTATION BUTTON

%Help Notification Dialog Box
helpdlg({'1. All the functions are provided in the Main Menu. Click relevant button to start function implementation.' 
         '2. Admin Users are only granted for some system operations and mainly for configurations.' 
         '3. Changing Code lines in m file related to each function cause to change system features totally in some circumstances.'
         '4. If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).'}, 'Function Help');

% --- Executes on button press in facerecognitionhelp.
function facerecognitionhelp_Callback(hObject, eventdata, handles)
% hObject    handle to facerecognitionhelp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%FACE RECOGNITION PROCESS BUTTON

%Help Notification Dialog Box
helpdlg({'1. User should provide image to start recognition process.' 
         '2. Provided Image must contain only single person.' 
         '3. Recognition based on facial measurements like Face Height, Width of Eyes, Distance from Eyes to Nose etc.'
         '4. If provided image not contains any person, Error Notification will display.'
         '5. Face Recognition Results will consist with Person Image, Bio Data (ex. Height, Address..), Criminal History etc. and those are non-editable.'
         '6. If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).'}, 'Help for Face Recognition Process');
     
% --- Executes on button press in otherproblemspushbutton.
function otherproblemspushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to otherproblemspushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%OTHER PROBLEMS BUTTON

%Help Notification Dialog Box
helpdlg({'If any problem occured in any operation implementation of system, please contact suppport team (Email: dhanusharoks@hotmail.com).' 
         }, 'Help');


% --- Executes on button press in backpushbutton.
function backpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%BACK BUTTON

close all; %Close Current Interface
NormalUserMainMenu  %Navigate to Main Menu