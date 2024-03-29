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

% Last Modified by GUIDE v2.5 15-May-2019 02:14:34

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



function hoho_Callback(hObject, eventdata, handles)
% hObject    handle to hoho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hoho as text
%        str2double(get(hObject,'String')) returns contents of hoho as a double


% --- Executes during object creation, after setting all properties.
function hoho_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hoho (see GCBO)
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
    if(~isempty(get(handles.hoho , 'string')))
        result = struct();
        name = get(handles.hoho , 'string');
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
                [ table, root, time, errorMsg] = FalsePosition(fun,interval(1,1),interval(1,2),numOfIterations,eps,epsType);
                result.table = table;
                result.time = time;
                result.root = root;
                result.errorMsg = errorMsg;
                setappdata(0,'method','falseposition');
            case 'FixedPoint'
                [ table, root, time, note, errorMsg, g, gDash] = fixedPoint(fun,interval,numOfIterations,eps,epsType);
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

    if(~isempty(get(handles.hoho , 'string')))
        result = struct();
        name = get(handles.hoho , 'string');
        [ fun, method, interval, numOfIterations, eps, epsType  ] = readFile2( name );
        switch method
            case 'GaussJordon'
                [ xj, timej, errorMsgj ] = GaussJordan(fun);
                setappdata(0,'x',xj);
                setappdata(0,'time',timej);
                setappdata(0,'errorMsg',errorMsgj);
                setappdata(0,'method','jordon');
            case 'GaussElimination'
                [ x, time, errorMsg ] = GaussElimination(fun);
                setappdata(0,'x',x);
                setappdata(0,'time',time);
                setappdata(0,'errorMsg',errorMsg);
                setappdata(0,'method','gauss');
            case 'LU'
                [ xlu, timelu, errorMsglu ] = LUMatrix(fun);
                setappdata(0,'x',xlu);
                setappdata(0,'time',timelu);
                setappdata(0,'errorMsg',errorMsglu);
                setappdata(0,'method','lu');
            case 'Seidel'
                [ xs,times,errorMsgs,tables ] = GaussSeidel( fun,interval ,numOfIterations,eps,epsType );
                setappdata(0,'x',xs);
                setappdata(0,'time',times);
                setappdata(0,'errorMsg',errorMsgs);
                setappdata(0,'tables',tables);
                setappdata(0,'method','seidel');
            otherwise
        end
            setappdata(0,'result',result);
            resultPart2;
    end



% --- Executes on button press in ans2.
function ans2_Callback(hObject, eventdata, handles)
% hObject    handle to ans2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.file , 'string')))
        name = get(handles.file , 'string');
        [fun , xl , xu , precision , step] = readGeneral(name);
        [roots , time] = generalAlgorithm(fun , xl , xu , precision , step);
        setappdata(0,'generaltable',roots);
        setappdata(0,'generaltime',time);
        generalOutput;
    end
    



function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of file as text
%        str2double(get(hObject,'String')) returns contents of file as a double


% --- Executes during object creation, after setting all properties.
function file_CreateFcn(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ans1.
function ans1_Callback(hObject, eventdata, handles)
% hObject    handle to ans1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.fun , 'string')))
        equ = get(handles.fun , 'string');
        low = str2double(get(handles.lower , 'string'));
        upper = str2double(get(handles.upper , 'string'));
        pre = str2double(get(handles.pre , 'string'));
        step = str2double(get(handles.step , 'string'));
        [roots , time] = generalAlgorithm(equ , low , upper , pre , step);
        setappdata(0,'generaltable',roots);
        setappdata(0,'generaltime',time);
        generalOutput;
    end




function fun_Callback(hObject, eventdata, handles)
% hObject    handle to fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fun as text
%        str2double(get(hObject,'String')) returns contents of fun as a double


% --- Executes during object creation, after setting all properties.
function fun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lower_Callback(hObject, eventdata, handles)
% hObject    handle to lower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lower as text
%        str2double(get(hObject,'String')) returns contents of lower as a double


% --- Executes during object creation, after setting all properties.
function lower_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function upper_Callback(hObject, eventdata, handles)
% hObject    handle to upper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of upper as text
%        str2double(get(hObject,'String')) returns contents of upper as a double


% --- Executes during object creation, after setting all properties.
function upper_CreateFcn(hObject, eventdata, handles)
% hObject    handle to upper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pre_Callback(hObject, eventdata, handles)
% hObject    handle to pre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pre as text
%        str2double(get(hObject,'String')) returns contents of pre as a double


% --- Executes during object creation, after setting all properties.
function pre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function step_Callback(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of step as text
%        str2double(get(hObject,'String')) returns contents of step as a double


% --- Executes during object creation, after setting all properties.
function step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
