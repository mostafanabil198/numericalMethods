function varargout = generalOutput(varargin)
% GENERALOUTPUT MATLAB code for generalOutput.fig
%      GENERALOUTPUT, by itself, creates a new GENERALOUTPUT or raises the existing
%      singleton*.
%
%      H = GENERALOUTPUT returns the handle to a new GENERALOUTPUT or the handle to
%      the existing singleton*.
%
%      GENERALOUTPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERALOUTPUT.M with the given input arguments.
%
%      GENERALOUTPUT('Property','Value',...) creates a new GENERALOUTPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before generalOutput_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to generalOutput_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help generalOutput

% Last Modified by GUIDE v2.5 15-May-2019 02:29:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @generalOutput_OpeningFcn, ...
                   'gui_OutputFcn',  @generalOutput_OutputFcn, ...
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


% --- Executes just before generalOutput is made visible.
function generalOutput_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to generalOutput (see VARARGIN)

% Choose default command line output for generalOutput
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes generalOutput wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = generalOutput_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in results.
function results_Callback(hObject, eventdata, handles)
% hObject    handle to results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    table = getappdata(0 , 'generaltable');
    uit = uitable(generalOutput);
    uit.Position = [20 100 300 150];
    uit.ColumnName = {'Roots', 'Multiplicity'};
    uit.ColumnWidth = {138,138};
    uit.Data = table;
    time = getappdata(0 , 'generaltime');
    set(handles.t , 'string' , time);



function t_Callback(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t as text
%        str2double(get(hObject,'String')) returns contents of t as a double


% --- Executes during object creation, after setting all properties.
function t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end