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

% Last Modified by GUIDE v2.5 02-May-2019 17:29:55

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

contents = cellstr(get(hObject,'String'))
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
% handles    structure with handles and user data (see GUIDATA)



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



function edit47_Callback(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit47 as text
%        str2double(get(hObject,'String')) returns contents of edit47 as a double


% --- Executes during object creation, after setting all properties.
function edit47_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu14


% --- Executes during object creation, after setting all properties.
function popupmenu14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on selection change in tybeall.
function tybeall_Callback(hObject, eventdata, handles)
% hObject    handle to tybeall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tybeall contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tybeall


% --- Executes during object creation, after setting all properties.
function tybeall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tybeall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
