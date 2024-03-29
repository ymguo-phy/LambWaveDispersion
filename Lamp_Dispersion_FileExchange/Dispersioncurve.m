function varargout = Dispersioncurve(varargin)
% DISPERSIONCURVE MATLAB code for Dispersioncurve.fig
%      DISPERSIONCURVE, by itself, creates a new DISPERSIONCURVE or raises the existing
%      singleton*.
%
%      H = DISPERSIONCURVE returns the handle to a new DISPERSIONCURVE or the handle to
%      the existing singleton*.
%
%      DISPERSIONCURVE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISPERSIONCURVE.M with the given input arguments.
%
%      DISPERSIONCURVE('Property','Value',...) creates a new DISPERSIONCURVE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Dispersioncurve_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Dispersioncurve_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Dispersioncurve

% Last Modified by GUIDE v2.5 12-Aug-2016 21:33:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Dispersioncurve_OpeningFcn, ...
                   'gui_OutputFcn',  @Dispersioncurve_OutputFcn, ...
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


% --- Executes just before Dispersioncurve is made visible.
function Dispersioncurve_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Dispersioncurve (see VARARGIN)

% Choose default command line output for Dispersioncurve
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Dispersioncurve wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Dispersioncurve_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function YN_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DN_Callback(hObject, eventdata, handles)
% hObject    handle to DN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DN as text
%        str2double(get(hObject,'String')) returns contents of DN as a double


% --- Executes during object creation, after setting all properties.
function DN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PR_Callback(hObject, eventdata, handles)
% hObject    handle to PR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PR as text
%        str2double(get(hObject,'String')) returns contents of PR as a double


% --- Executes during object creation, after setting all properties.
function PR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MD_Callback(hObject, eventdata, handles)
% hObject    handle to MD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MD as text
%        str2double(get(hObject,'String')) returns contents of MD as a double


% --- Executes during object creation, after setting all properties.
function MD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = waitbar(0,'Getting values, Please wait...','Name','Solving...');
E = str2num(get(handles.YM,'String'));
v = str2num(get(handles.PR,'String'));
D = str2num(get(handles.DN,'String'));
mo = str2num(get(handles.MD,'String'));
len = str2num(get(handles.MI,'String'));
d = str2num(get(handles.TN,'String'));
fr = str2num(get(handles.edit9,'string'));
[x1,cps,cpa,vgs,vgaa]= disper(E,v,D,mo,len,fr);
x2=x1;
for a = 0:0.1:1;
    pause(0.1)
    waitbar(a)
end
delete(h);
save('test.mat','x1','cps','cpa','x2','vgs','vgaa','d','mo');


function TN_Callback(hObject, eventdata, handles)
% hObject    handle to TN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TN as text
%        str2double(get(hObject,'String')) returns contents of TN as a double


% --- Executes during object creation, after setting all properties.
function TN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MI_Callback(hObject, eventdata, handles)
% hObject    handle to MI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MI as text
%        str2double(get(hObject,'String')) returns contents of MI as a double


% --- Executes during object creation, after setting all properties.
function MI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Y = 72.4e9;
D = 2780;
v = 0.33;
M = 8;
t = 5;
I = 10;
fr = 20e3;
set(handles.YM,'string',Y);
set(handles.DN,'string',D);
set(handles.PR,'string',v);
set(handles.MD,'string',M);
set(handles.TN,'string',t);
set(handles.MI,'string',I);
set(handles.edit9,'string',fr);
% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

str = get(hObject, 'String');
val = get(hObject,'Value');
switch str{val};
    case 'Aluminum-2024'
        Y = 72.4e9;
        D = 2780;
        v = 0.33;
        set(handles.YM,'string',Y);
        set(handles.DN,'string',D);
        set(handles.PR,'string',v);             
    case 'Aluminum-2124'
        Y = 73.1e9;
        D = 2780;
        v = 0.33;
        set(handles.YM,'string',Y);
        set(handles.DN,'string',D);
        set(handles.PR,'string',v);
    case 'Structural-steel'
        Y = 200e9;
        D = 7850;
        v = 0.3;
        set(handles.YM,'string',Y);
        set(handles.DN,'string',D);
        set(handles.PR,'string',v);
    case 'Titanium'
        Y = 96e9;
        D = 4620;
        v = 0.3;
        set(handles.YM,'string',Y);
        set(handles.DN,'string',D);
        set(handles.PR,'string',v);
    case 'Copper'
        Y = 110e9;
        D = 8300;
        v = 0.34;
        set(handles.YM,'string',Y);
        set(handles.DN,'string',D);
        set(handles.PR,'string',v);
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
pha = get(hObject,'Value');

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
grp = get(hObject,'Value');
% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
if exist('test.mat', 'file')
if(get(handles.checkbox1,'value') == 1)   
    load('test.mat');
figure
hold on
x1 = x1/d;
cpp = cps(1:end,1);
plot(x1(1,1:end),cpp,'-b')
hold on
l2 = length(x1);
for a = 2:mo  %Phase Velocity Symmetric
    z = cps(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = cps(1:end,a);
 ps = v(s1+1:end,1);
 plot(x4,ps,'-b')
 cpp = cps(:,a);
end
cpp = cpa(1:end,1);
plot(x1(1,1:end),cpp,'--r')
for a = 2:mo   %Phase Velocity AntiSymmetric
    z = cpa(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = cpa(1:end,a);
 gs = v(s1+1:end,1);
 cpp = cpa(:,a);

 hold on
 plot(x4,gs,'--r')
end
ylim([0 10000]);
grid on 
legend('Symmetric S_0_,_1_,_2,_._._.', 'Anti-Symmetric A_0_,_1_,_2_,_._._.');
title('Phase Velocity')
xlabel('Frequency (KHz)')
ylabel('Phase Velocity ms^-^1')
end
if(get(handles.checkbox2,'value') == 1)   
    load('test.mat');
figure
l = length(x2) ;

cpp = vgs(1:end,1);
plot(x1(1,1:end-1),cpp,'-b')
hold on
cpp = vgaa(1:end,1);
plot(x1(1,1:end-1),cpp,'--r')

for a = 2:mo  %Phase Velocity Symmetric
    clear z s1 x4 v
    z = vgs(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vgs(1:end,a);
 ps = v(s1+1:end,1);
 plot(x4(1:end-1),ps,'-b')
 cpp = vgs(:,a);
end
for a = 2:mo   %Phase Velocity AntiSymmetric
    clear z s1 x4 v
    z = vgaa(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vgaa(1:end,a);
 gs = v(s1+1:end,1);
 cpp = vgaa(:,a);

 hold on
 plot(x4(1:end-1),gs,'--r')
end
grid on
legend('Symmetric S_0_,_1_,_2,_._._.', 'Anti-Symmetric A_0_,_1_,_2_,_._._.');
title('Group Velocity')
xlabel('Frequency (KHz)')
ylabel('Group Velocity ms^-^1')
hold off

end 
if(get(handles.checkbox3,'value') == 1)   
    
    
    
    
    
    
    
end
else
   errordlg('Solution doesnt exist','Error');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.checkbox1,'value') == 1)
load('test.mat','cps','cpa','vgs','vgaa','x1');
freq = x1;
save('Dispersion.mat','freq','cps','cpa','vgs','vgaa');
helpdlg('Data has been Saved in (Dispersion.mat)',...
        'Saved...');
else
    errordlg('Solution doesnt exist','error');
end

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if exist('test.mat', 'file')
f = str2num(get(handles.edit7,'String'));
load('test.mat')
x2 = x2/d;
req = find(x2==f);
if isempty(req) == 1
    len = str2num(get(handles.MI,'String'));
     msgbox('Error:Value doesnt exist, Hint: reduce Minimum Interval', 'Solving Error','error');
else
l = length(x2) ;
cgg = vgs(1:end,1);
group(1,1) = vgs(req);
l2 = length(x1);
for a = 2:mo  %Phase Velocity Symmetric
    z = vgs(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = vgs(1:end,a);
 cgg = vgs(:,a);
 group(a,1) = cgg(req);
end
cpp = vgaa(1:end,1);
group(1,2) = cpp(req);
for a = 2:mo  %Phase Velocity AntiSymmetric
    z = vgaa(1:end,a)<1;
    s1 = length(find(z==1));
 cgg = vgaa(:,a);
 group(a,2) = cgg(req);
end


% for a = 2:mo
%  ss =  l - length(vgs{a,1});
%  if (ss>req)
%  group(a,1) = 0;
%  else
%      new = abs(ss-req);
%      group(a,1) = vgs{a,1}(new);
%  end
% end   
% for a = 2:mo
%  ss =  l - length(vgaa{a,1});
%  if (ss>req)
%  group(a,2) = 0;
%  else
%      new = abs(ss-req);
%      group(a,2) = vgaa{a,1}(new);%
 % end
 
set(handles.uitable2,'data',group);

cpp = cps(1:end,1);
phase(1,1) = cpp(req);
l2 = length(x1);
for a = 2:mo  %Phase Velocity Symmetric
    z = cps(1:end,a)<1;
    s1 = length(find(z==1));
 x4 = x1(1,s1+1:end);
 v = cps(1:end,a);
 cpp = cps(:,a);
 phase(a,1) = cpp(req);
end
cpp = cpa(1:end,1);
phase(1,2) = cpp(req);
for a = 2:mo  %Phase Velocity AntiSymmetric
    z = cpa(1:end,a)<1;
    s1 = length(find(z==1));
 cpp = cpa(:,a);
 phase(a,2) = cpp(req);
end
set(handles.uitable1,'data',phase);
end
else
    errordlg('Solution doesnt exist','Error')
end

% --- Executes on button press in pushbutton3.

function YM_Callback(hObject, eventdata, handles)
% hObject    handle to YM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YM as text
%        str2double(get(hObject,'String')) returns contents of YM as a double


% --- Executes during object creation, after setting all properties.
function YM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% Calling main function:



% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete('test.mat');
delete(hObject);


% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
