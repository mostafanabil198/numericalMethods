function varargout = part2(varargin)
% PART2 MATLAB code for part2.fig
%      PART2, by itself, creates a new PART2 or raises the existing
%      singleton*.
%
%      H = PART2 returns the handle to a new PART2 or the handle to
%      the existing singleton*.
%
%      PART2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PART2.M with the given input arguments.
%
%      PART2('Property','Value',...) creates a new PART2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before part2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to part2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help part2

% Last Modified by GUIDE v2.5 05-May-2019 21:51:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @part2_OpeningFcn, ...
                   'gui_OutputFcn',  @part2_OutputFcn, ...
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


% --- Executes just before part2 is made visible.
function part2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to part2 (see VARARGIN)

% Choose default command line output for part2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes part2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = part2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function functions_Callback(hObject, eventdata, handles)
% hObject    handle to functions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functions as text
%        str2double(get(hObject,'String')) returns contents of functions as a double


% --- Executes during object creation, after setting all properties.
function functions_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in jordon.
function jordon_Callback(hObject, eventdata, handles)
% hObject    handle to jordon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
       if(~isempty(get(handles.functions , 'string')))
            try
                fun = get(handles.functions , 'string');
                arr = strsplit(fun,';');
                [ xj, timej, errorMsgj ] = GaussJordan(arr);
                setappdata(0,'x',xj);
                setappdata(0,'time',timej);
                setappdata(0,'errorMsg',errorMsgj);
                setappdata(0,'method','jordon');
                resultPart2;
            catch
                set(handles.wrong , 'string', 'invalid input');
            end
        else
            set(handles.wrong , 'string' , 'input the functions')
        end



% --- Executes on button press in lu.
function lu_Callback(hObject, eventdata, handles)
% hObject    handle to lu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        if(~isempty(get(handles.functions , 'string')))
        try
            fun = get(handles.functions , 'string');
            arr = strsplit(fun,';');
            [ xlu, timelu, errorMsglu ] = LUMatrix(arr);
            setappdata(0,'x',xlu);
            setappdata(0,'time',timelu);
            setappdata(0,'errorMsg',errorMsglu);
            setappdata(0,'method','lu');
            resultPart2;
        catch
            set(handles.wrong , 'string', 'invalid input');
        end
        else
            set(handles.wrong , 'string' , 'input the functions')
        end


% --- Executes on button press in elimination.
function elimination_Callback(hObject, eventdata, handles)
% hObject    handle to elimination (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.functions , 'string')))
        try
            fun = get(handles.functions , 'string');
            arr = strsplit(fun,';');
            [ x, time, errorMsg ] = GaussElimination(arr);
            setappdata(0,'x',x);
            setappdata(0,'time',time);
            setappdata(0,'errorMsg',errorMsg);
            setappdata(0,'method','gauss');
            resultPart2;
        catch
            set(handles.wrong , 'string', 'invalid input');
        end
    else
        set(handles.wrong , 'string' , 'input the functions')
    end


% --- Executes on button press in gaussseidel.
function gaussseidel_Callback(hObject, eventdata, handles)
% hObject    handle to gaussseidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        if(~isempty(get(handles.functions , 'string')))
            handles.seidel.Visible = 'on';
        else
            set(handles.wrong , 'string' , 'input the functions')
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


% --- Executes on selection change in typeerror.
function typeerror_Callback(hObject, eventdata, handles)
% hObject    handle to typeerror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typeerror contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typeerror


% --- Executes during object creation, after setting all properties.
function typeerror_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typeerror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitr_Callback(hObject, eventdata, handles)
% hObject    handle to numitr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitr as text
%        str2double(get(hObject,'String')) returns contents of numitr as a double


% --- Executes during object creation, after setting all properties.
function numitr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in solve.
function solve_Callback(hObject, eventdata, handles)
% hObject    handle to solve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.guess , 'string')))
        initial = strsplit(get(handles.guess, 'string'), ';');
        fun = get(handles.functions , 'string');
        fun = strsplit(fun,';');
        if(isempty(get(handles.error , 'string')) && isempty(get(handles.numitr , 'string')))
            [ xs,times,errorMsgs,tables ] = GaussSeidel( fun,initial ,50,0.00001,true );
        elseif(isempty(get(handles.error , 'string')))
            num = str2double(get(handles.numitr , 'string'));
            [ xs,times,errorMsgs,tables ] = GaussSeidel( fun,initial ,num,0.00001,true );
        elseif(isempty(get(handles.numitr , 'string')))
                        switch get(handles.typeerror,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
            error = str2double(get(handles.error , 'string'));
            [ xs,times,errorMsgs,tables ] = GaussSeidel( fun,initial ,50,error,type );
        else
                        switch get(handles.typeerror,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
            error = str2double(get(handles.error , 'string'));
            num = str2double(get(handles.numitr , 'string'));
            [ xs,times,errorMsgs,tables ] = GaussSeidel( fun,initial ,num,error,type );
        end
        setappdata(0,'x',xs);
        setappdata(0,'time',times);
        setappdata(0,'errorMsg',errorMsgs);
        setappdata(0,'tables',tables);
        setappdata(0,'method','seidel');
        resultPart2;
        

    else
        set(handles.wrong , 'string','input guess');
    end



function guess_Callback(hObject, eventdata, handles)
% hObject    handle to guess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess as text
%        str2double(get(hObject,'String')) returns contents of guess as a double


% --- Executes during object creation, after setting all properties.
function guess_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wrong_Callback(hObject, eventdata, handles)
% hObject    handle to wrong (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wrong as text
%        str2double(get(hObject,'String')) returns contents of wrong as a double


% --- Executes during object creation, after setting all properties.
function wrong_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wrong (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
