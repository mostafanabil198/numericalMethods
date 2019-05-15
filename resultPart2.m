function varargout = resultPart2(varargin)
% RESULTPART2 MATLAB code for resultPart2.fig
%      RESULTPART2, by itself, creates a new RESULTPART2 or raises the existing
%      singleton*.
%
%      H = RESULTPART2 returns the handle to a new RESULTPART2 or the handle to
%      the existing singleton*.
%
%      RESULTPART2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTPART2.M with the given input arguments.
%
%      RESULTPART2('Property','Value',...) creates a new RESULTPART2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultPart2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultPart2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultPart2

% Last Modified by GUIDE v2.5 06-May-2019 18:24:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultPart2_OpeningFcn, ...
                   'gui_OutputFcn',  @resultPart2_OutputFcn, ...
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


% --- Executes just before resultPart2 is made visible.
function resultPart2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultPart2 (see VARARGIN)

% Choose default command line output for resultPart2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultPart2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultPart2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    m = getappdata(0 , 'method');
    t = uitable(resultPart2);
    t.Tag = 'data1';
    t.Position = [30 290 127 90];
    table = getappdata(0,'x');
    t.Data = table;
    t.ColumnName = {'X'};
    t.ColumnWidth = {100};
    set(handles.error , 'string',getappdata(0,'errorMsg'));
    set(handles.time , 'string',getappdata(0,'time'));
    if(strcmp(m,'seidel'))
        WriteToFile(getappdata(0,'tables'),table,getappdata(0,'time'),getappdata(0,'errorMsg'),'GaussSeidel');
        t2 = uitable(resultPart2);
        t2.Tag = 'data3';
        t2.Position = [65 50 390 170];
        t2.ColumnName = {'col1','col2','col3'};
        t2.ColumnWidth = {120};
        data = getappdata(0,'tables');
        t2.Data = data;
        GaussSeidelPlot( data );
    else
        WriteToFile([],table,getappdata(0,'time'),getappdata(0,'errorMsg'),m);
    end    



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error_Callback(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error as text
%        str2double(get(hObject,'String')) returns contents of error as a double


% --- Executes during object creation, after setting all properties.
function error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
