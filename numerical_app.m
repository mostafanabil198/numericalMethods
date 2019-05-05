function varargout = numerical_app(varargin)
% NUMERICAL_APP MATLAB code for numerical_app.fig
%      NUMERICAL_APP, by itself, creates a new NUMERICAL_APP or raises the existing
%      singleton*.
%
%      H = NUMERICAL_APP returns the handle to a new NUMERICAL_APP or the handle to
%      the existing singleton*.
%
%      NUMERICAL_APP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NUMERICAL_APP.M with the given input arguments.
%
%      NUMERICAL_APP('Property','Value',...) creates a new NUMERICAL_APP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before numerical_app_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to numerical_app_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help numerical_app

% Last Modified by GUIDE v2.5 05-May-2019 22:35:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @numerical_app_OpeningFcn, ...
                   'gui_OutputFcn',  @numerical_app_OutputFcn, ...
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


% --- Executes just before numerical_app is made visible.
function numerical_app_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to numerical_app (see VARARGIN)

% Choose default command line output for numerical_app
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes numerical_app wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = numerical_app_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in part1.
function part1_Callback(hObject, eventdata, handles)
% hObject    handle to part1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    firstFram;


% --- Executes on button press in part2.
function part2_Callback(hObject, eventdata, handles)
% hObject    handle to part2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    part2;



function filename_Callback(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filename as text
%        str2double(get(hObject,'String')) returns contents of filename as a double


% --- Executes during object creation, after setting all properties.
function filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in part1file.
function part1file_Callback(hObject, eventdata, handles)
% hObject    handle to part1file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.filename , 'string')))
        result = struct();
        name = get(handles.filename , 'string');
        [ fun, method, interval, numOfIterations, eps, epsType  ] = readFile( name );
        switch method
            case 'Bisection'
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,interval(1,1),interval(1,2),numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                result.theoretical = theoretical;
                setappdata(0,'method','bisection');
            case 'FalsePosition'
                [ table, root, time, errorMsg] = falsePosition(fun,interval(1,1),interval(1,2),numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','falseposition');
            case 'FixedPoint'
                [ table, root, time, errorMsg , g , gDash] = FixedPoint(fun,interval,numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                result.g = g;
                result.gDash = gDash;
                setappdata(0,'method','fixedpoint');
            case 'NewtonRaphson'
                [ table, root, time, errorMsg] = NewtonRaphson(fun,interval,numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','newton');
            case 'NewtonModified1'
                [ table, root, time, errorMsg] = NewtonRaphsonMultiplicity(fun,interval(1,1),numOfIterations,eps,epsType,interval(1,2));
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','newton1');
            case 'NewtonModified2'
                [ table, root, time, errorMsg] = NewtonRaphsonModified(fun,interval,numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','newton2');
            case 'Secant'
                [ table, root, time, errorMsg] = Secant(fun,interval(1,1),interval(1,2),numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','secant');
            case 'SecantModified'
                [ table, root, time, errorMsg] = ModifiedSecant(fun,interval(1,1),interval(1,2),numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','secant1');
            case 'BergeVita'
                [ table, root, time, errorMsg] = BirgeVieta(fun,interval,numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','bergvita');
            otherwise
        end
            setappdata(0,'result',result);
            resultFram;
    end


% --- Executes on button press in part2file.
function part2file_Callback(hObject, eventdata, handles)
% hObject    handle to part2file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)