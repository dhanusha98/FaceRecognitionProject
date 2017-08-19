function varargout = UserLogin(varargin)
% USERLOGIN MATLAB code for UserLogin.fig
%      USERLOGIN, by itself, creates a new USERLOGIN or raises the existing
%      singleton*.
%
%      H = USERLOGIN returns the handle to a new USERLOGIN or the handle to
%      the existing singleton*.
%
%      USERLOGIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USERLOGIN.M with the given input arguments.
%
%      USERLOGIN('Property','Value',...) creates a new USERLOGIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UserLogin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UserLogin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UserLogin

% Last Modified by GUIDE v2.5 26-Jul-2017 17:26:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UserLogin_OpeningFcn, ...
                   'gui_OutputFcn',  @UserLogin_OutputFcn, ...
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


% --- Executes just before UserLogin is made visible.
function UserLogin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UserLogin (see VARARGIN)

% Choose default command line output for UserLogin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UserLogin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UserLogin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtusername_Callback(hObject, eventdata, handles)
% hObject    handle to txtusername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtusername as text
%        str2double(get(hObject,'String')) returns contents of txtusername as a double



% --- Executes during object creation, after setting all properties.
function txtusername_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtusername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtpassword_Callback(hObject, eventdata, handles)
% hObject    handle to txtpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtpassword as text
%        str2double(get(hObject,'String')) returns contents of txtpassword as a double


% --- Executes during object creation, after setting all properties.
function txtpassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loginpushbutton.
function loginpushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to loginpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

usn=get(handles.txtusername, 'string'); %Username TextBox value
psw=get(handles.txtpassword, 'string'); %Password TextBox value

if isempty(usn) || isempty(psw)
    
    msgbox('Please Provide Username and Password!');

else
    
SystemUserDataLayer(usn, psw)
uservalidationdata=string(evalin('base', 'uservalidation'));

%VerificationResult=isempty(uservalidationdata);
%NormalUserChecker=isequal(usertypestr, 'NormalUser');
%AdminUserChecker=isequal(usertypestr, 'AdminUser');

%if isequal(VerificationResult, 0) 
%if uservalidationdata(1) ~='No Data' 
     %if usertypestr=='NormalUser'
       %close all;
       %NormalUserMainMenu  
     %elseif usertypestr=='AdminUser'
        %close all;
        %AdminMainMenu
     %else
         %msgbox('Problem with User Authentications. Please Try Again');
     %end
   %elseif uservalidationdata(1)=='No Data'
    %msgbox('Invalid User Authentications');
  
%end

 if uservalidationdata(1)=='No Data'
    
    msgbox('Invalid User Authentications');
 elseif uservalidationdata(1) ~='No Data'
    
    usertype=uservalidationdata(8);
    
     if usertype=='NormalUser'
       close all;
       NormalUserMainMenu  
     elseif usertype=='AdminUser'
        close all;
        AdminMainMenu
     else
         msgbox('Problem with User Authentications. Please Try Again');
     end
  end

end
% --- Executes on button press in resetpushbutton.
function resetpushbutton_Callback(hObject, eventdata, handles) 
% hObject    handle to resetpushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.txtusername, 'string', '');
set(handles.txtpassword, 'string', '');


% --- Executes on button press in exitbutton.
function exitbutton_Callback(hObject, eventdata, handles)
% hObject    handle to exitbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

% --- Executes on button press in helpbutton.
function helpbutton_Callback(hObject, eventdata, handles)
% hObject    handle to helpbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

helpdlg({'1. User Authentications are Case-Sensitive and make sure to provide them based on standards.' 
     '2. Make sure to change User Authentications every month to ensure high security.' 
     '3. User Accounts are two types which are Normal User and Admin User. Based on the provided user authentication, relevant user main menu will be opened.'
     '4. User Authentication Mechanisms available if user not provide user authentications for relevant required sections.'}, 'Login Process Help');
