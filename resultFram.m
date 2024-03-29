function varargout = resultFram(varargin)
% RESULTFRAM MATLAB code for resultFram.fig
%      RESULTFRAM, by itself, creates a new RESULTFRAM or raises the existing
%      singleton*.
%
%      H = RESULTFRAM returns the handle to a new RESULTFRAM or the handle to
%      the existing singleton*.
%
%      RESULTFRAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTFRAM.M with the given input arguments.
%
%      RESULTFRAM('Property','Value',...) creates a new RESULTFRAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultFram_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultFram_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultFram

% Last Modified by GUIDE v2.5 07-May-2019 18:11:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultFram_OpeningFcn, ...
                   'gui_OutputFcn',  @resultFram_OutputFcn, ...
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


% --- Executes just before resultFram is made visible.
function resultFram_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultFram (see VARARGIN)

% Choose default command line output for resultFram

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

    

% UIWAIT makes resultFram wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultFram_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pre.
function pre_Callback(hObject, eventdata, handles)
% hObject    handle to pre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    result = getappdata(0,'result');
    table = result.table;
    [k,j] = size(table);
    i = getappdata(0 ,'i');
    if(i > 1)
    i = i -1;
    setappdata(0,'i',i);
    m = getappdata(0 , 'method');
    fun = getappdata(0 , 'function');
    f = getappdata(0 , 'fig');
    if(strcmp(m,'bisection'))
        BisectionPlot(fun , table,i,f);
    elseif(strcmp(m,'falseposition'))
        FalsePositionPlot(fun ,table,i,f);
    elseif(strcmp(m,'fixedpoint'))
        g = result.g;
        FixedPointPlot(g,table,i,f);
    elseif(strcmp(m,'newton'))
        NewtonRaphsonPlot(fun,table,i,f);
    elseif(strcmp(m,'newton1'))
        NewtonRaphsonPlot(fun,table,i,f);
    elseif(strcmp(m,'newton2'))
        NewtonRaphsonPlot(fun,table,i,f);
    elseif(strcmp(m,'secant'))
        SecantPlot(fun,table,i,f);
    elseif(strcmp(m,'secant1'))
        SecantPlot(fun,table,i,f);
    elseif(strcmp(m,'bergvita'))
        NewtonRaphsonPlot(fun,table,i,f);
    end
    end


% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    result = getappdata(0,'result');
    table = result.table;
    [k,j] = size(table);
    i = getappdata(0 ,'i');
    if((i+1) <=  k)
    i = i +1;
    setappdata(0,'i',i);
    m = getappdata(0 , 'method');
    fun = getappdata(0 , 'function');
    f = getappdata(0,'fig');
    if(strcmp(m,'bisection'))
        BisectionPlot(fun , table,i,f);
    elseif(strcmp(m,'falseposition'))
        FalsePositionPlot(fun , table,i ,f);
    elseif(strcmp(m,'fixedpoint'))
        g = result.g;
        FixedPointPlot(g,table,i,f);
    elseif(strcmp(m,'newton'))
        NewtonRaphsonPlot(fun,table,i,f);
    elseif(strcmp(m,'newton1'))
        NewtonRaphsonPlot(fun,table,i,f);
    elseif(strcmp(m,'newton2'))
        NewtonRaphsonPlot(fun,table,i,f);
    elseif(strcmp(m,'secant'))
        SecantPlot(fun,table,i,f);
    elseif(strcmp(m,'secant1'))
        SecantPlot(fun,table,i,f);
    elseif(strcmp(m,'bergvita'))
        NewtonRaphsonPlot(fun,table,i,f);
    end
    end
    
    


% --- Executes on button press in output.
function output_Callback(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    i = 0;
    cf=figure;
    setappdata(0,'fig',cf);
    setappdata(0 , 'i' , i);
    m = getappdata(0,'method');
    uit = uitable(resultFram);
    uit.Tag = 'data';
    %uit.Position = [50 300 500 200];
    result = getappdata(0,'result');
    table = result.table
    display(m);
    %[k,j] = size(table);
    %uit.Position = [50 300 j*150+25 200];
    uit.Data = table;
    set(handles.root ,'string' , result.root);
    set(handles.time ,'string' , result.time);
    set(handles.error ,'string' , result.errorMsg);
    s = j
    if(strcmp(m,'bisection'))
       WriteToFile(result.table,result.root,result.time,result.errorMsg,'Bisection');
       uit.Position = [50 300 6*150+25 200];
       handles.t.Visible = 'on';
       handles.theoretical.Visible = 'on';
       uit.ColumnName = {'iteration', 'xl', 'xu', 'xr', 'f(xr)', 'error'};
       uit.ColumnWidth = {150,150,150,150,150,150};
       set(handles.theoretical ,'string' , result.theoretical);
    elseif(strcmp(m,'falseposition'))
        WriteToFile(result.table,result.root,result.time,result.errorMsg,'FalsePosition');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'xr', 'xl', 'xu', 'f(xr)', 'error'};
       uit.ColumnWidth = {150,150,150,150,150,150};
    elseif(strcmp(m,'fixedpoint'))
       WriteToFile(result.table,result.root,result.time,result.errorMsg,'FixedPoint');
       uit.Position = [50 300 4*150+25 200];
       handles.g1.Visible = 'on';
       handles.g2.Visible = 'on';
       handles.g.Visible = 'on';
       handles.gdash.Visible = 'on';
       uit.ColumnName = {'iteration', 'xPrev','xNew', 'error'};
       uit.ColumnWidth = {150,150,150,150};
       %s1 = result.g
       %s2 = result.gDash
       hawhawhawhaw = result.g
       set(handles.g,'string',char(result.g));
       hohohohoh = result.gDash
       set(handles.gdash,'string',char(result.gDash));
    elseif(strcmp(m,'newton'))
       WriteToFile(result.table,result.root,result.time,result.errorMsg,'NewtonRaphson');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'error'};
       uit.ColumnWidth = {150,150,150,150,150,150};
    elseif(strcmp(m,'newton1'))
        WriteToFile(result.table,result.root,result.time,result.errorMsg,'NewtonRaphsonMultiplicity');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'error'};
       uit.ColumnWidth = {150,150,150,150,150,150};
    elseif(strcmp(m,'newton2'))
        WriteToFile(result.table,result.root,result.time,result.errorMsg,'NewtonRaphsonModified');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'f(Xi)``', 'error'};
       uit.ColumnWidth = {128,128,128,128,128,128,128};
    elseif(strcmp(m,'secant'))
        WriteToFile(result.table,result.root,result.time,result.errorMsg,'Secant');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'Xi', 'Xi-1', 'f(Xi)', 'fun(Xi-1)','Xi+1', 'error'};
       uit.ColumnWidth = {128,128,128,128,128,128,128};
    elseif(strcmp(m,'secant1'))
        WriteToFile(result.table,result.root,result.time,result.errorMsg,'ModifiedSecant');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'Xi', 'Xi+&Xi', 'f(Xi)', 'fun(Xi+&Xi)', 'Xi+1', 'error'};
       uit.ColumnWidth = {128,128,128,128,128,128,128};
    elseif(strcmp(m,'bergvita'))
        WriteToFile(result.table,result.root,result.time,result.errorMsg,'BirgeVieta');
       uit.Position = [50 300 6*150+25 200];
       uit.ColumnName = {'iteration', 'xPrev', 'fun(Xi)', 'fun`(Xi)', 'xNew', 'error'};
       uit.ColumnWidth = {150,150,150,150,150,150};
    elseif(strcmp(m,'all'))
       uit.Position = [50 300 6*150+25 200];
       handles.t.Visible = 'on';
       handles.theoretical.Visible = 'on';
       uit.ColumnName = {'iteration', 'xr', 'xl', 'xu', 'f(xr)', 'error'};
       uit.ColumnWidth = {150,150,150,150,150,150};
       set(handles.theoretical ,'string' , result.theoretical);
       handles.all.Visible = 'on';
       handles.graph1.Visible = 'on';
       handles.graph2.Visible = 'on';
       handles.next.Visible = 'off';
       handles.pre.Visible = 'off';
    end
    %must close editable in this button !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


% --- Executes on selection change in all.
function all_Callback(hObject, eventdata, handles)
% hObject    handle to all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    result = getappdata(0,'result');
    handles.t.Visible = 'off';
    handles.theoretical.Visible = 'off';
    handles.g1.Visible = 'off';
    handles.g2.Visible = 'off';
    handles.g.Visible = 'off';
    handles.gdash.Visible = 'off';
    %uit = handles.data;
    uit = findobj('Tag','data');
    contents = cellstr(get(hObject,'String'));
    switch contents{get(hObject,'Value')} 
        case 'Bisection'
           table = result.table
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root);
           set(handles.time ,'string' , result.time);
           set(handles.error ,'string' , result.errorMsg);
           handles.t.Visible = 'on';
           handles.theoretical.Visible = 'on';
           uit.ColumnName = {'iteration', 'xr', 'xl', 'xu', 'f(xr)', 'error'};
           uit.ColumnWidth = {150,150,150,150,150,150};
           set(handles.theoretical ,'string' , result.theoretical);
           
        case 'FalsePosition'
           table = result.table1
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root1);
           set(handles.time ,'string' , result.time1);
           set(handles.error ,'string' , result.errorMsg1);
           uit.ColumnName = {'iteration', 'xr', 'xl', 'xu', 'f(xr)', 'error'};
           uit.ColumnWidth = {150,150,150,150,150,150};
        case 'FixedPoint'
           table = result.table2
           %[k,j] = size(table);
           uit.Position = [50 300 4*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root2);
           set(handles.time ,'string' , result.time2);
           set(handles.error ,'string' , result.errorMsg2);
           uit.ColumnName = {'iteration', 'xPrev','xNew', 'error'};
           uit.ColumnWidth = {150,150,150,150};
           handles.g1.Visible = 'on';
           handles.g2.Visible = 'on';
           handles.g.Visible = 'on';
           handles.gdash.Visible = 'on';
           set(handles.g,'string',char(result.g));
           set(handles.gdash,'string',char(result.gDash));
        case 'NewtonRaphson'
           table = result.table3
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root3);
           set(handles.time ,'string' , result.time3);
           set(handles.error ,'string' , result.errorMsg3);
           uit.ColumnName = {'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'error'};
           uit.ColumnWidth = {150,150,150,150,150,150};
        case 'NewtonModified1'
           table = result.table4
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root4);
           set(handles.time ,'string' , result.time4);
           set(handles.error ,'string' , result.errorMsg4);
           uit.ColumnName = {'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'error'};
           uit.ColumnWidth = {150,150,150,150,150,150};
        case 'NewtonModified2'
           table = result.table5
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root5);
           set(handles.time ,'string' , result.time5);
           set(handles.error ,'string' , result.errorMsg5);
           uit.ColumnName = {'iteration', 'Xi', 'Xi+1', 'f(Xi)', 'fun`(Xi)', 'f(Xi)``', 'error'};
           uit.ColumnWidth = {128,128,128,128,128,128,128};
        case 'Secant'
           table = result.table6
          % [k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root6);
           set(handles.time ,'string' , result.time6);
           set(handles.error ,'string' , result.errorMsg6);
           uit.ColumnName = {'iteration', 'Xi', 'Xi-1', 'f(Xi)', 'fun(Xi-1)','Xi+1', 'error'};
           uit.ColumnWidth = {128,128,128,128,128,128,128};
        case 'SecantModified'
           table = result.table7
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root7);
           set(handles.time ,'string' , result.time7);
           set(handles.error ,'string' , result.errorMsg7);
           uit.ColumnName = {'iteration', 'Xi', 'Xi+&Xi', 'f(Xi)', 'fun(Xi+&Xi)', 'Xi+1', 'error'};
           uit.ColumnWidth = {128,128,128,128,128,128,128};
        case 'BergeVita'  
           table = result.table8
           %[k,j] = size(table);
           uit.Position = [50 300 6*150+25 200];
           uit.Data = table;
           set(handles.root ,'string' , result.root8);
           set(handles.time ,'string' , result.time8);
           set(handles.error ,'string' , result.errorMsg8);
           uit.ColumnName = {'iteration', 'xPrev', 'fun(Xi)', 'fun`(Xi)', 'xNew', 'error'}
           uit.ColumnWidth = {150,150,150,150,150,150};
            
    end

% Hints: contents = cellstr(get(hObject,'String')) returns all contents as cell array
%        contents{get(hObject,'Value')} returns selected item from all



% --- Executes during object creation, after setting all properties.
function all_CreateFcn(hObject, eventdata, handles)
% hObject    handle to all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in graph1.
function graph1_Callback(hObject, eventdata, handles)
% hObject    handle to graph1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        f = getappdata(0,'fig');
        result = getappdata(0,'result');
        table = result.table;
        table1 = result.table1;
        table2 = result.table2;
        table3 = result.table3;
        table4 = result.table4;
        table5 = result.table5;
        table6 = result.table6;
        table7 = result.table7;
        table8 = result.table8;
        plotAllErrors(table,table1,table2,table3,table4,table5,table6,table7,table8,f);

% --- Executes on button press in graph2.
function graph2_Callback(hObject, eventdata, handles)
% hObject    handle to graph2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        f = getappdata(0,'fig');
        result = getappdata(0,'result');
        table = result.table;
        table1 = result.table1;
        table2 = result.table2;
        table3 = result.table3;
        table4 = result.table4;
        table5 = result.table5;
        table6 = result.table6;
        table7 = result.table7;
        table8 = result.table8;
        plotAllRoots(table,table1,table2,table3,table4,table5,table6,table7,table8,f);
