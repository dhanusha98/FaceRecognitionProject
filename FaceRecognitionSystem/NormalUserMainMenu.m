function varargout = NormalUserMainMenu(varargin)
% NORMALUSERMAINMENU MATLAB code for NormalUserMainMenu.fig
%      NORMALUSERMAINMENU, by itself, creates a new NORMALUSERMAINMENU or raises the existing
%      singleton*.
%
%      H = NORMALUSERMAINMENU returns the handle to a new NORMALUSERMAINMENU or the handle to
%      the existing singleton*.
%
%      NORMALUSERMAINMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NORMALUSERMAINMENU.M with the given input arguments.
%
%      NORMALUSERMAINMENU('Property','Value',...) creates a new NORMALUSERMAINMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NormalUserMainMenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NormalUserMainMenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NormalUserMainMenu

% Last Modified by GUIDE v2.5 26-Jul-2017 22:41:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NormalUserMainMenu_OpeningFcn, ...
                   'gui_OutputFcn',  @NormalUserMainMenu_OutputFcn, ...
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


% --- Executes just before NormalUserMainMenu is made visible.
function NormalUserMainMenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NormalUserMainMenu (see VARARGIN)

% Choose default command line output for NormalUserMainMenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NormalUserMainMenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NormalUserMainMenu_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
