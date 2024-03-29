function varargout = firstFram(varargin)
% FIRSTFRAM MATLAB code for firstFram.fig
%      FIRSTFRAM, by itself, creates a new FIRSTFRAM or raises the existing
%      singleton*.
%
%      H = FIRSTFRAM returns the handle to a new FIRSTFRAM or the handle to
%      the existing singleton*.
%
%      FIRSTFRAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRSTFRAM.M with the given input arguments.
%
%      FIRSTFRAM('Property','Value',...) creates a new FIRSTFRAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before firstFram_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to firstFram_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help firstFram

% Last Modified by GUIDE v2.5 02-May-2019 20:56:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @firstFram_OpeningFcn, ...
                   'gui_OutputFcn',  @firstFram_OutputFcn, ...
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


% --- Executes just before firstFram is made visible.
function firstFram_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to firstFram (see VARARGIN)

% Choose default command line output for firstFram
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes firstFram wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = firstFram_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in choosemethod.
function choosemethod_Callback(hObject, eventdata, handles)
% hObject    handle to choosemethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

contents = cellstr(get(hObject,'String'));
switch contents{get(hObject,'Value')} 
    
    case 'Bisection'
        handles.bisection.Visible = 'on';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.bisection,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','bisection');
    case 'FalsePosition'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'on';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.falseposition,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','falseposition');
    case 'FixedPoint'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'on';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.fixed,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','fixedpoint');
    case 'NewtonRaphson'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'on';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.newton,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','newton');
    case 'NewtonModified1'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'on';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.newton1,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','newton1');
    case 'NewtonModified2'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'on';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.newton2,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','newton2');
    case 'Secant'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'on';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        set(handles.secant,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','secant');
    case 'SecantModified'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'off';
        handles.secant1.Visible = 'on';
        set(handles.secant1,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','secant1');
    case 'BergVita'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'off';
        handles.vita.Visible = 'on';
        set(handles.vita,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','bergvita');
        
    case 'All'
        handles.bisection.Visible = 'off';
        handles.fixed.Visible = 'off';
        handles.falseposition.Visible = 'off';
        handles.newton.Visible = 'off';
        handles.newton1.Visible = 'off';
        handles.newton2.Visible = 'off';
        handles.secant.Visible = 'off';
        handles.secant1.Visible = 'off';
        handles.all.Visible = 'on';
        handles.vita.Visible = 'off';
        set(handles.all,'position',[10 1 239.2 32.846]);
        setappdata(0,'method','all');
    
 end

% Hints: contents = cellstr(get(hObject,'String')) returns choosemethod contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choosemethod


% --- Executes during object creation, after setting all properties.
function choosemethod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choosemethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function xl_Callback(hObject, eventdata, handles)
% hObject    handle to xl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xl as text
%        str2double(get(hObject,'String')) returns contents of xl as a double


% --- Executes during object creation, after setting all properties.
function xl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xu_Callback(hObject, eventdata, handles)
% hObject    handle to xu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xu as text
%        str2double(get(hObject,'String')) returns contents of xu as a double


% --- Executes during object creation, after setting all properties.
function xu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrbisection_Callback(hObject, eventdata, handles)
% hObject    handle to numitrbisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrbisection as text
%        str2double(get(hObject,'String')) returns contents of numitrbisection as a double


% --- Executes during object creation, after setting all properties.
function numitrbisection_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrbisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorbisection_Callback(hObject, eventdata, handles)
% hObject    handle to errorbisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorbisection as text
%        str2double(get(hObject,'String')) returns contents of errorbisection as a double


% --- Executes during object creation, after setting all properties.
function errorbisection_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorbisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typebisection.
function typebisection_Callback(hObject, eventdata, handles)
% hObject    handle to typebisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typebisection contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typebisection


% --- Executes during object creation, after setting all properties.
function typebisection_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typebisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultbisection.
function resultbisection_Callback(hObject, eventdata, handles)
% hObject    handle to resultbisection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
    if(~isempty(get(handles.xl , 'string')) && ~isempty(get(handles.xu , 'string')) && ~isempty(get(handles.fun , 'string')) )
        try
            xl = str2double(get(handles.xl , 'string'));
            xu = str2double(get(handles.xu , 'string'));
            fun = get(handles.fun,'string');
            setappdata(0,'function',fun);
            if(isempty(get(handles.numitrbisection , 'string')) && isempty(get(handles.errorbisection , 'string')))
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,50,0.00001,'true');
            elseif(isempty(get(handles.numitrbisection , 'string')))
                    switch get(handles.typebisection,'Value')   
                        case 1
                            type = 'false';
                        case 2
                            type = 'true';
                        otherwise
                    end 
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,50,str2double(get(handles.errorbisection , 'string')),type);
                
                elseif(isempty(get(handles.errorbisection , 'string')))
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,str2double(get(handles.numitrbisection , 'string')),0.00001,'true');
                
             else
                     switch get(handles.typebisection,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,str2double(get(handles.numitrbisection , 'string')),str2double(get(handles.errorbisection , 'string')),type);
            end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            result.theoretical = theoretical;
            setappdata(0,'result',result);
            resultFram;
        catch
            set(handles.errorlabel , 'string' , 'invalid input');
        end
    else 
        set(handles.errorlabel , 'string' , 'missing input data');
    end
    
        



function xisecant1_Callback(hObject, eventdata, handles)
% hObject    handle to xisecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xisecant1 as text
%        str2double(get(hObject,'String')) returns contents of xisecant1 as a double


% --- Executes during object creation, after setting all properties.
function xisecant1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xisecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ximinussecant1_Callback(hObject, eventdata, handles)
% hObject    handle to ximinussecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ximinussecant1 as text
%        str2double(get(hObject,'String')) returns contents of ximinussecant1 as a double


% --- Executes during object creation, after setting all properties.
function ximinussecant1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ximinussecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrsecant1_Callback(hObject, eventdata, handles)
% hObject    handle to numitrsecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrsecant1 as text
%        str2double(get(hObject,'String')) returns contents of numitrsecant1 as a double


% --- Executes during object creation, after setting all properties.
function numitrsecant1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrsecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorsecant1_Callback(hObject, eventdata, handles)
% hObject    handle to errorsecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorsecant1 as text
%        str2double(get(hObject,'String')) returns contents of errorsecant1 as a double


% --- Executes during object creation, after setting all properties.
function errorsecant1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorsecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typesecant1.
function typesecant1_Callback(hObject, eventdata, handles)
% hObject    handle to typesecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typesecant1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typesecant1


% --- Executes during object creation, after setting all properties.
function typesecant1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typesecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultsecant1.
function resultsecant1_Callback(hObject, eventdata, handles)
% hObject    handle to resultsecant1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.xisecant1 , 'string'))&& ~isempty(get(handles.ximinussecant1 , 'string'))  &&~isempty(get(handles.fun , 'string')) )
            try
                xi = str2double(get(handles.xisecant1 , 'string'));
                xminus = str2double(get(handles.ximinussecant1 , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrsecant1 , 'string')) && isempty(get(handles.errorsecant1 , 'string')))
                    [ table, root, time, errorMsg] = Secant(fun,xi,xminus,50,0.00001,'true');
                elseif(isempty(get(handles.numitrsecant1 , 'string')))
                        switch get(handles.typesecant1,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = Secant(fun,xi,xminus,50,str2double(get(handles.errorsecant1 , 'string')),type);

                    elseif(isempty(get(handles.errorsecant1 , 'string')))
                    [ table, root, time, errorMsg] = Secant(fun,xi,xminus,str2double(get(handles.numitrsecant1 , 'string')),0.00001,'true');

                 else
                         switch get(handles.typesecant1,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, errorMsg] = Secant(fun,xi,xminus,str2double(get(handles.numitrsecant1 , 'string')),str2double(get(handles.errorsecant1 , 'string')),type);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end



function delta_Callback(hObject, eventdata, handles)
% hObject    handle to delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of delta as text
%        str2double(get(hObject,'String')) returns contents of delta as a double


% --- Executes during object creation, after setting all properties.
function delta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xisecant2_Callback(hObject, eventdata, handles)
% hObject    handle to xisecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xisecant2 as text
%        str2double(get(hObject,'String')) returns contents of xisecant2 as a double


% --- Executes during object creation, after setting all properties.
function xisecant2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xisecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function deltasecant2_Callback(hObject, eventdata, handles)
% hObject    handle to deltasecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of deltasecant2 as text
%        str2double(get(hObject,'String')) returns contents of deltasecant2 as a double


% --- Executes during object creation, after setting all properties.
function deltasecant2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to deltasecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrsecant2_Callback(hObject, eventdata, handles)
% hObject    handle to numitrsecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrsecant2 as text
%        str2double(get(hObject,'String')) returns contents of numitrsecant2 as a double


% --- Executes during object creation, after setting all properties.
function numitrsecant2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrsecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorsecant2_Callback(hObject, eventdata, handles)
% hObject    handle to errorsecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorsecant2 as text
%        str2double(get(hObject,'String')) returns contents of errorsecant2 as a double


% --- Executes during object creation, after setting all properties.
function errorsecant2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorsecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typesecant2.
function typesecant2_Callback(hObject, eventdata, handles)
% hObject    handle to typesecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typesecant2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typesecant2


% --- Executes during object creation, after setting all properties.
function typesecant2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typesecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultsecant2.
function resultsecant2_Callback(hObject, eventdata, handles)
% hObject    handle to resultsecant2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.xisecant2 , 'string'))&& ~isempty(get(handles.deltasecant2 , 'string'))  &&~isempty(get(handles.fun , 'string')) )
            try
                xi = str2double(get(handles.xisecant1 , 'string'));
                delta = str2double(get(handles.deltasecant2 , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrsecant2 , 'string')) && isempty(get(handles.errorsecant2 , 'string')))
                    [ table, root, time, errorMsg] = ModifiedSecant(fun,xi,delta,50,0.00001,'true');
                elseif(isempty(get(handles.numitrsecant2 , 'string')))
                        switch get(handles.typesecant2,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = ModifiedSecant(fun,xi,delta,50,str2double(get(handles.errorsecant2 , 'string')),type);

                    elseif(isempty(get(handles.errorsecant2 , 'string')))
                    [ table, root, time, errorMsg] = ModifiedSecant(fun,xi,delta,str2double(get(handles.numitrsecant2 , 'string')),0.00001,'true');

                 else
                         switch get(handles.typesecant2,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, errorMsg] = ModifiedSecant(fun,xi,delta,str2double(get(handles.numitrsecant2 , 'string')),str2double(get(handles.errorsecant2 , 'string')),type);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end



function xinewton_Callback(hObject, eventdata, handles)
% hObject    handle to xinewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xinewton as text
%        str2double(get(hObject,'String')) returns contents of xinewton as a double


% --- Executes during object creation, after setting all properties.
function xinewton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xinewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrnewton_Callback(hObject, eventdata, handles)
% hObject    handle to numitrnewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrnewton as text
%        str2double(get(hObject,'String')) returns contents of numitrnewton as a double


% --- Executes during object creation, after setting all properties.
function numitrnewton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrnewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errornewton_Callback(hObject, eventdata, handles)
% hObject    handle to errornewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errornewton as text
%        str2double(get(hObject,'String')) returns contents of errornewton as a double


% --- Executes during object creation, after setting all properties.
function errornewton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errornewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typenewton.
function typenewton_Callback(hObject, eventdata, handles)
% hObject    handle to typenewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typenewton contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typenewton


% --- Executes during object creation, after setting all properties.
function typenewton_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typenewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultnewton.
function resultnewton_Callback(hObject, eventdata, handles)
% hObject    handle to resultnewton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.xinewton , 'string'))  &&~isempty(get(handles.fun , 'string')) )
            try
                xi = str2double(get(handles.xinewton , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrnewton , 'string')) && isempty(get(handles.errornewton , 'string')))
                    [ table, root, time, errorMsg] = NewtonRaphson(fun,xi,50,0.00001,'true');
                elseif(isempty(get(handles.numitrnewton , 'string')))
                        switch get(handles.typenewton,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = NewtonRaphson(fun,xi,50,str2double(get(handles.errornewton , 'string')),type);

                    elseif(isempty(get(handles.errornewton , 'string')))
                    [ table, root, time, errorMsg] = NewtonRaphson(fun,xi,str2double(get(handles.numitrnewton , 'string')),0.00001,'true');

                 else
                         switch get(handles.typenewton,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, errorMsg] = NewtonRaphson(fun,xi,str2double(get(handles.numitrnewton , 'string')),str2double(get(handles.errornewton , 'string')),type);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end



function xinewton1_Callback(hObject, eventdata, handles)
% hObject    handle to xinewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xinewton1 as text
%        str2double(get(hObject,'String')) returns contents of xinewton1 as a double


% --- Executes during object creation, after setting all properties.
function xinewton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xinewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrnewton1_Callback(hObject, eventdata, handles)
% hObject    handle to numitrnewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrnewton1 as text
%        str2double(get(hObject,'String')) returns contents of numitrnewton1 as a double


% --- Executes during object creation, after setting all properties.
function numitrnewton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrnewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errornewton1_Callback(hObject, eventdata, handles)
% hObject    handle to errornewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errornewton1 as text
%        str2double(get(hObject,'String')) returns contents of errornewton1 as a double


% --- Executes during object creation, after setting all properties.
function errornewton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errornewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typenewton1.
function typenewton1_Callback(hObject, eventdata, handles)
% hObject    handle to typenewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typenewton1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typenewton1


% --- Executes during object creation, after setting all properties.
function typenewton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typenewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultnewton1.
function resultnewton1_Callback(hObject, eventdata, handles)
% hObject    handle to resultnewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.xinewton1 , 'string'))  &&~isempty(get(handles.fun , 'string')) && ~isempty(get(handles.mnewton1 , 'string'))  )
            try
                xi = str2double(get(handles.xinewton1 , 'string'));
                m = str2double(get(handles.mnewton1 , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrnewton1 , 'string')) && isempty(get(handles.errornewton1 , 'string')))
                    [ table, root, time, errorMsg] = NewtonRaphsonMultiplicity(fun,xi,50,0.00001,'true',m);
                elseif(isempty(get(handles.numitrnewton1 , 'string')))
                        switch get(handles.typenewton1,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = NewtonRaphsonMultiplicity(fun,xi,50,str2double(get(handles.errornewton1 , 'string')),type,m);

                    elseif(isempty(get(handles.errornewton1 , 'string')))
                    [ table, root, time, errorMsg] = NewtonRaphsonMultiplicity(fun,xi,str2double(get(handles.numitrnewton1 , 'string')),0.00001,'true',m);

                 else
                         switch get(handles.typenewton1,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, errorMsg] = NewtonRaphsonMultiplicity(fun,xi,str2double(get(handles.numitrnewton1 , 'string')),str2double(get(handles.errornewton1 , 'string')),type,m);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end



function mnewton1_Callback(hObject, eventdata, handles)
% hObject    handle to mnewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mnewton1 as text
%        str2double(get(hObject,'String')) returns contents of mnewton1 as a double


% --- Executes during object creation, after setting all properties.
function mnewton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mnewton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xinewton2_Callback(hObject, eventdata, handles)
% hObject    handle to xinewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xinewton2 as text
%        str2double(get(hObject,'String')) returns contents of xinewton2 as a double


% --- Executes during object creation, after setting all properties.
function xinewton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xinewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrnewton2_Callback(hObject, eventdata, handles)
% hObject    handle to numitrnewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrnewton2 as text
%        str2double(get(hObject,'String')) returns contents of numitrnewton2 as a double


% --- Executes during object creation, after setting all properties.
function numitrnewton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrnewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errornewton2_Callback(hObject, eventdata, handles)
% hObject    handle to errornewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errornewton2 as text
%        str2double(get(hObject,'String')) returns contents of errornewton2 as a double


% --- Executes during object creation, after setting all properties.
function errornewton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errornewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typenewton2.
function typenewton2_Callback(hObject, eventdata, handles)
% hObject    handle to typenewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typenewton2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typenewton2


% --- Executes during object creation, after setting all properties.
function typenewton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typenewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultnewton2.
function resultnewton2_Callback(hObject, eventdata, handles)
% hObject    handle to resultnewton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.xinewton2 , 'string'))  &&~isempty(get(handles.fun , 'string')) )
            try
                xi = str2double(get(handles.xinewton2 , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrnewton2 , 'string')) && isempty(get(handles.errornewton2 , 'string')))
                    [ table, root, time, errorMsg] = NewtonRaphsonModified(fun,xi,50,0.00001,'true');
                elseif(isempty(get(handles.numitrnewton2 , 'string')))
                        switch get(handles.typenewton2,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = NewtonRaphsonModified(fun,xi,50,str2double(get(handles.errornewton2 , 'string')),type);

                    elseif(isempty(get(handles.errornewton2 , 'string')))
                    [ table, root, time, errorMsg] = NewtonRaphsonModified(fun,xi,str2double(get(handles.numitrnewton2 , 'string')),0.00001,'true');

                 else
                         switch get(handles.typenewton2,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, errorMsg] = NewtonRaphsonModified(fun,xi,str2double(get(handles.numitrnewton2 , 'string')),str2double(get(handles.errornewton2 , 'string')),type);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end
    



function xifixed_Callback(hObject, eventdata, handles)
% hObject    handle to xifixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xifixed as text
%        str2double(get(hObject,'String')) returns contents of xifixed as a double


% --- Executes during object creation, after setting all properties.
function xifixed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xifixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrfixed_Callback(hObject, eventdata, handles)
% hObject    handle to numitrfixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrfixed as text
%        str2double(get(hObject,'String')) returns contents of numitrfixed as a double


% --- Executes during object creation, after setting all properties.
function numitrfixed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrfixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorfixed_Callback(hObject, eventdata, handles)
% hObject    handle to errorfixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorfixed as text
%        str2double(get(hObject,'String')) returns contents of errorfixed as a double


% --- Executes during object creation, after setting all properties.
function errorfixed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorfixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typefixed.
function typefixed_Callback(hObject, eventdata, handles)
% hObject    handle to typefixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typefixed contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typefixed


% --- Executes during object creation, after setting all properties.
function typefixed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typefixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultfixed.
function resultfixed_Callback(hObject, eventdata, handles)
% hObject    handle to resultfixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if(~isempty(get(handles.xifixed , 'string'))  &&~isempty(get(handles.fun , 'string')) )
            try
                xi = str2double(get(handles.xifixed , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrfixed , 'string')) && isempty(get(handles.errorfixed , 'string')))
                    [ table, root, time, note, errorMsg, g, gDash] = fixedPoint(fun,xi,50,0.00001,'true');
                elseif(isempty(get(handles.numitrfixed , 'string')))
                        switch get(handles.typefixed,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, note, errorMsg, g, gDash] = fixedPoint(fun,xi,50,str2double(get(handles.errorfixed , 'string')),type);

                    elseif(isempty(get(handles.errorfixed , 'string')))
                    [ table, root, time, note, errorMsg, g, gDash] = fixedPoint(fun,xi,str2double(get(handles.numitrfixed , 'string')),0.00001,'true');

                 else
                         switch get(handles.typefixed,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, note, errorMsg, g, gDash] = fixedPoint(fun,xi,str2double(get(handles.numitrfixed , 'string')),str2double(get(handles.errorfixed , 'string')),type);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            result.g = g;
            result.gDash = gDash;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end





function xlfalse_Callback(hObject, eventdata, handles)
% hObject    handle to xlfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xlfalse as text
%        str2double(get(hObject,'String')) returns contents of xlfalse as a double


% --- Executes during object creation, after setting all properties.
function xlfalse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xlfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrfalse_Callback(hObject, eventdata, handles)
% hObject    handle to numitrfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrfalse as text
%        str2double(get(hObject,'String')) returns contents of numitrfalse as a double


% --- Executes during object creation, after setting all properties.
function numitrfalse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorfalse_Callback(hObject, eventdata, handles)
% hObject    handle to errorfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorfalse as text
%        str2double(get(hObject,'String')) returns contents of errorfalse as a double


% --- Executes during object creation, after setting all properties.
function errorfalse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typefalse.
function typefalse_Callback(hObject, eventdata, handles)
% hObject    handle to typefalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typefalse contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typefalse


% --- Executes during object creation, after setting all properties.
function typefalse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typefalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultfalse.
function resultfalse_Callback(hObject, eventdata, handles)
% hObject    handle to resultfalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if(~isempty(get(handles.xlfalse , 'string')) && ~isempty(get(handles.xufalse , 'string')) &&~isempty(get(handles.fun , 'string')) )
        try
            xl = str2double(get(handles.xlfalse , 'string'));
            xu = str2double(get(handles.xufalse , 'string'));
            fun = get(handles.fun,'string');
            setappdata(0,'function',fun);
            if(isempty(get(handles.numitrfalse , 'string')) && isempty(get(handles.errorfalse , 'string')))
                [ table, root, time, errorMsg] = FalsePosition(fun,xl,xu,50,0.00001,'true');
            elseif(isempty(get(handles.numitrfalse , 'string')))
                    switch get(handles.typefalse,'Value')   
                        case 1
                            type = 'false';
                        case 2
                            type = 'true';
                        otherwise
                    end 
                [ table, root, time, errorMsg] = FalsePosition(fun,xl,xu,50,str2double(get(handles.errorfalse , 'string')),type);
                
                elseif(isempty(get(handles.errorfalse , 'string')))
                [ table, root, time, errorMsg] = FalsePosition(fun,xl,xu,str2double(get(handles.numitrfalse , 'string')),0.00001,'true');
                
             else
                     switch get(handles.typefalse,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = FalsePosition(fun,xl,xu,str2double(get(handles.numitrfalse , 'string')),str2double(get(handles.errorfalse , 'string')),type);
            end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
        catch
            set(handles.errorlabel , 'string' , 'invalid input');
        end
    else 
        set(handles.errorlabel , 'string' , 'missing input data');
    end



function xufalse_Callback(hObject, eventdata, handles)
% hObject    handle to xufalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xufalse as text
%        str2double(get(hObject,'String')) returns contents of xufalse as a double


% --- Executes during object creation, after setting all properties.
function xufalse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xufalse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function xlall_Callback(hObject, eventdata, handles)
% hObject    handle to xlall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xlall as text
%        str2double(get(hObject,'String')) returns contents of xlall as a double


% --- Executes during object creation, after setting all properties.
function xlall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xlall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xuall_Callback(hObject, eventdata, handles)
% hObject    handle to xuall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xuall as text
%        str2double(get(hObject,'String')) returns contents of xuall as a double


% --- Executes during object creation, after setting all properties.
function xuall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xuall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrall_Callback(hObject, eventdata, handles)
% hObject    handle to numitrall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrall as text
%        str2double(get(hObject,'String')) returns contents of numitrall as a double


% --- Executes during object creation, after setting all properties.
function numitrall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorall_Callback(hObject, eventdata, handles)
% hObject    handle to errorall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorall as text
%        str2double(get(hObject,'String')) returns contents of errorall as a double


% --- Executes during object creation, after setting all properties.
function errorall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in typeall.
function typeall_Callback(hObject, eventdata, handles)
% hObject    handle to typeall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns typeall contents as cell array
%        contents{get(hObject,'Value')} returns selected item from typeall


% --- Executes during object creation, after setting all properties.
function typeall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to typeall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xiall_Callback(hObject, eventdata, handles)
% hObject    handle to xiall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xiall as text
%        str2double(get(hObject,'String')) returns contents of xiall as a double


% --- Executes during object creation, after setting all properties.
function xiall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xiall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xminusall_Callback(hObject, eventdata, handles)
% hObject    handle to xminusall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xminusall as text
%        str2double(get(hObject,'String')) returns contents of xminusall as a double


% --- Executes during object creation, after setting all properties.
function xminusall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xminusall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mall_Callback(hObject, eventdata, handles)
% hObject    handle to mall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mall as text
%        str2double(get(hObject,'String')) returns contents of mall as a double


% --- Executes during object creation, after setting all properties.
function mall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function deltaall_Callback(hObject, eventdata, handles)
% hObject    handle to deltaall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of deltaall as text
%        str2double(get(hObject,'String')) returns contents of deltaall as a double


% --- Executes during object creation, after setting all properties.
function deltaall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to deltaall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultall.
function resultall_Callback(hObject, eventdata, handles)
% hObject    handle to resultall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if(~isempty(get(handles.xlall , 'string')) && ~isempty(get(handles.xuall , 'string')) && ~isempty(get(handles.deltaall , 'string')) && ~isempty(get(handles.xiall , 'string')) && ~isempty(get(handles.xminusall , 'string')) && ~isempty(get(handles.mall , 'string')) &&~isempty(get(handles.fun , 'string')) )
        %try
            xl = str2double(get(handles.xlall , 'string'));
            xu = str2double(get(handles.xuall , 'string'));
            m = str2double(get(handles.mall , 'string'));
            xi = str2double(get(handles.xiall , 'string'));
            xminus = str2double(get(handles.xminusall , 'string'));
            delta = str2double(get(handles.deltaall , 'string'));
            fun = get(handles.fun,'string');
            setappdata(0,'function',fun);
            if(isempty(get(handles.numitrall , 'string')) && isempty(get(handles.errorall , 'string')))
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,50,0.00001,'true');
                [ table1, root1, time1, errorMsg1] = FalsePosition(fun,xl,xu,50,0.00001,'true');
                [ table2, root2, time2, note, errorMsg2, g, gDash] = fixedPoint(fun,xi,50,0.00001,'true');
                [ table3, root3, time3, errorMsg3] = NewtonRaphson(fun,xi,50,0.00001,'true');
                [ table4, root4, time4, errorMsg4] = NewtonRaphsonMultiplicity(fun,xi,50,0.00001,'true',m);
                [ table5, root5, time5, errorMsg5] = NewtonRaphsonModified(fun,xi,50,0.00001,'true');
                [ table6, root6, time6, errorMsg6] = Secant(fun,xi,xminus,50,0.00001,'true');
                [ table7, root7, time7, errorMsg7] = ModifiedSecant(fun,xi,delta,50,0.00001,'true');
                [ table8, root8, time8, errorMsg8] = BirgeVieta(fun,xi,50,0.00001,'true');
            elseif(isempty(get(handles.numitrall , 'string')))
                    switch get(handles.typeall,'Value')   
                        case 1
                            type = 'false';
                        case 2
                            type = 'true';
                        otherwise
                    end 
                %[ table, root, time, errorMsg] = Bisection(fun,xl,xu,50,str2double(get(handles.errorbisection , 'string')),type);
                
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,50,str2double(get(handles.errorall , 'string')),type);
                [ table1, root1, time1, errorMsg1] = FalsePosition(fun,xl,xu,50,str2double(get(handles.errorall , 'string')),type);
                [ table2, root2, time2, note, errorMsg2, g, gDash] = fixedPoint(fun,xi,50,str2double(get(handles.errorall , 'string')),type);
                [ table3, root3, time3, errorMsg3] = NewtonRaphson(fun,xi,50,str2double(get(handles.errorall , 'string')),type);
                [ table4, root4, time4, errorMsg4] = NewtonRaphsonMultiplicity(fun,xi,50,str2double(get(handles.errorall , 'string')),type,m);
                [ table5, root5, time5, errorMsg5] = NewtonRaphsonModified(fun,xi,50,str2double(get(handles.errorall , 'string')),type);
                [ table6, root6, time6, errorMsg6] = Secant(fun,xi,xminus,50,str2double(get(handles.errorall , 'string')),type);
                [ table7, root7, time7, errorMsg7] = ModifiedSecant(fun,xi,delta,50,str2double(get(handles.errorall , 'string')),type);
                [ table8, root8, time8, errorMsg8] = BirgeVieta(fun,xi,50,str2double(get(handles.errorall , 'string')),type);
                
                elseif(isempty(get(handles.errorall , 'string')))
                %[ table, root, time, errorMsg] = Bisection(fun,xl,xu,str2double(get(handles.numitrbisection , 'string')),0.00001,'false');
                s = 'not all'
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table1, root1, time1, errorMsg1] = FalsePosition(fun,xl,xu,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table2, root2, time2, note, errorMsg2, g, gDash] = fixedPoint(fun,xi,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table3, root3, time3, errorMsg3] = NewtonRaphson(fun,xi,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table4, root4, time4, errorMsg4] = NewtonRaphsonMultiplicity(fun,xi,str2double(get(handles.numitrall , 'string')),0.00001,'true',m);
                [ table5, root5, time5, errorMsg5] = NewtonRaphsonModified(fun,xi,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table6, root6, time6, errorMsg6] = Secant(fun,xi,xminus,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table7, root7, time7, errorMsg7] = ModifiedSecant(fun,xi,delta,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                [ table8, root8, time8, errorMsg8] = BirgeVieta(fun,xi,str2double(get(handles.numitrall , 'string')),0.00001,'true');
                
            else
                 s = 'all'
                     switch get(handles.typeall,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    %[ table, root, time, errorMsg] = Bisection(fun,xl,xu,str2double(get(handles.numitrbisection , 'string')),str2double(get(handles.errorbisection , 'string')),type);
                    
                [ table, root, time, errorMsg , theoretical] = Bisection(fun,xl,xu,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table1, root1, time1, errorMsg1] = FalsePosition(fun,xl,xu,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table2, root2, time2, note, errorMsg2, g, gDash] = fixedPoint(fun,xi,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table3, root3, time3, errorMsg3] = NewtonRaphson(fun,xi,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table4, root4, time4, errorMsg4] = NewtonRaphsonMultiplicity(fun,xi,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type,m);
                [ table5, root5, time5, errorMsg5] = NewtonRaphsonModified(fun,xi,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table6, root6, time6, errorMsg6] = Secant(fun,xi,xminus,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table7, root7, time7, errorMsg7] = ModifiedSecant(fun,xi,delta,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
                [ table8, root8, time8, errorMsg8] = BirgeVieta(fun,xi,str2double(get(handles.numitrall , 'string')),str2double(get(handles.errorall , 'string')),type);
            end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            result.theoretical = theoretical;
            
            result.table1 = table1;
            result.time1 = time1;
            result.root1 = root1;
            result.errorMsg1 = errorMsg1;
            
            result.table2 = table2;
            result.time2 = time2;
            result.root2 = root2;
            result.errorMsg2 = errorMsg2;
            result.g = g;
            result.gDash = gDash;
            
            result.table3 = table3;
            result.time3 = time3;
            result.root3 = root3;
            result.errorMsg3 = errorMsg3;
            
            result.table4 = table4;
            result.time4 = time4;
            result.root4 = root4;
            result.errorMsg4 = errorMsg4;
            
            result.table5 = table5;
            result.time5 = time5;
            result.root5 = root5;
            result.errorMsg5 = errorMsg5;
            
            result.table6 = table6;
            result.time6 = time6;
            result.root6 = root6;
            result.errorMsg6 = errorMsg6;
            
            result.table7 = table7;
            result.time7 = time7;
            result.root7 = root7;
            result.errorMsg7 = errorMsg7;
            
            result.table8 = table8;
            result.time8 = time8;
            result.root8 = root8;
            result.errorMsg8 = errorMsg8;
            setappdata(0,'result',result);
            resultFram;
        %catch
            %set(handles.errorlabel , 'string' , 'invalid input');
       % end
    else 
        set(handles.errorlabel , 'string' , 'missing input data');
    end



function xvita_Callback(hObject, eventdata, handles)
% hObject    handle to xvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xvita as text
%        str2double(get(hObject,'String')) returns contents of xvita as a double


% --- Executes during object creation, after setting all properties.
function xvita_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numitrvita_Callback(hObject, eventdata, handles)
% hObject    handle to numitrvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numitrvita as text
%        str2double(get(hObject,'String')) returns contents of numitrvita as a double


% --- Executes during object creation, after setting all properties.
function numitrvita_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numitrvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorvita_Callback(hObject, eventdata, handles)
% hObject    handle to errorvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorvita as text
%        str2double(get(hObject,'String')) returns contents of errorvita as a double


% --- Executes during object creation, after setting all properties.
function errorvita_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resultvita.
function resultvita_Callback(hObject, eventdata, handles)
% hObject    handle to resultvita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if(~isempty(get(handles.xvita , 'string'))  &&~isempty(get(handles.fun , 'string')) )
            try
                xi = str2double(get(handles.xvita , 'string'));
                fun = get(handles.fun,'string');
                setappdata(0,'function',fun);
                if(isempty(get(handles.numitrvita , 'string')) && isempty(get(handles.errorvita , 'string')))
                    [ table, root, time, errorMsg] = BirgeVieta(fun,xi,50,0.00001,'true');
                elseif(isempty(get(handles.numitrvita , 'string')))
                        switch get(handles.tybevita,'Value')   
                            case 1
                                type = 'false';
                            case 2
                                type = 'true';
                            otherwise
                        end 
                    [ table, root, time, errorMsg] = BirgeVieta(fun,xi,50,str2double(get(handles.errorvita , 'string')),type);

                 elseif(isempty(get(handles.errorvita , 'string')))
                    [ table, root, time, errorMsg] = BirgeVieta(fun,xi,str2double(get(handles.numitrvita , 'string')),0.00001,'true');

                 else
                         switch get(handles.tybevita,'Value')   
                                case 1
                                    type = 'false';
                                case 2
                                    type = 'true';
                                otherwise
                            end 
                        [ table, root, time, errorMsg] = BirgeVieta(fun,xi,str2double(get(handles.numitrvita , 'string')),str2double(get(handles.errorvita , 'string')),type);
                end
            result = struct();
            result.table = table;
            result.time = time;
            result.root = root;
            result.errorMsg = errorMsg;
            setappdata(0,'result',result);
            resultFram;
            catch
                set(handles.errorlabel , 'string' , 'invalid input');
            end
        else 
            set(handles.errorlabel , 'string' , 'missing input data');
        end


% --- Executes on selection change in tybevita.
function tybevita_Callback(hObject, eventdata, handles)
% hObject    handle to tybevita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tybevita contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tybevita


% --- Executes during object creation, after setting all properties.
function tybevita_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tybevita (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function errorlabel_Callback(hObject, eventdata, handles)
% hObject    handle to errorlabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of errorlabel as text
%        str2double(get(hObject,'String')) returns contents of errorlabel as a double


% --- Executes during object creation, after setting all properties.
function errorlabel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to errorlabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
