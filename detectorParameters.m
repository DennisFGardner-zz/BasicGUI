function varargout = detectorParameters(varargin)
% DETECTORPARAMETERS MATLAB code for detectorParameters.fig
%      DETECTORPARAMETERS, by itself, creates a new DETECTORPARAMETERS or raises the existing
%      singleton*.
%
%      H = DETECTORPARAMETERS returns the handle to a new DETECTORPARAMETERS or the handle to
%      the existing singleton*.
%
%      DETECTORPARAMETERS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DETECTORPARAMETERS.M with the given input arguments.
%
%      DETECTORPARAMETERS('Property','Value',...) creates a new DETECTORPARAMETERS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before detectorParameters_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to detectorParameters_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help detectorParameters

% Last Modified by GUIDE v2.5 28-Mar-2017 22:21:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @detectorParameters_OpeningFcn, ...
                   'gui_OutputFcn',  @detectorParameters_OutputFcn, ...
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


% --- Executes just before detectorParameters is made visible.
function detectorParameters_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to detectorParameters (see VARARGIN)

% Choose default command line output for detectorParameters
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes detectorParameters wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = detectorParameters_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fprintf('saving detector parameters\n')
% here is where I want to save the parameters
%
% detectorParameters.ccdN = handles.ccdN
path2save = [pwd,'\','detectorParameters']
A = magic(3);
save(path2save, A)
%

% Hint: delete(hObject) closes the figure
delete(hObject);



function ccdN_Callback(hObject, eventdata, handles)
% hObject    handle to ccdN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ccdN as text
%        str2double(get(hObject,'String')) returns contents of ccdN as a double
handles.ccdN = str2double(get(hObject,'String'));


% --- Executes during object creation, after setting all properties.
function ccdN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ccdN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ccdM_Callback(hObject, eventdata, handles)
% hObject    handle to ccdM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ccdM as text
%        str2double(get(hObject,'String')) returns contents of ccdM as a double


% --- Executes during object creation, after setting all properties.
function ccdM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ccdM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function px_Callback(hObject, eventdata, handles)
% hObject    handle to px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of px as text
%        str2double(get(hObject,'String')) returns contents of px as a double


% --- Executes during object creation, after setting all properties.
function px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
