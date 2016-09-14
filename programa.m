function varargout = programa(varargin)


% PROGRAMA M-file for programa.fig
%      PROGRAMA, by itself, creates a new PROGRAMA or raises the existing
%      singleton*.
%
%      H = PROGRAMA returns the handle to a new PROGRAMA or the handle to
%      the existing singleton*.
%
%      PROGRAMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAMA.M with the given input arguments.
%
%      PROGRAMA('Property','Value',...) creates a new PROGRAMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before programa_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to programa_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help programa
% Last Modified by GUIDE v2.5 04-Mar-2009 10:03:04
% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @programa_OpeningFcn, ...
                   'gui_OutputFcn',  @programa_OutputFcn, ...
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
function programa_OpeningFcn(hObject, eventdata, handles, varargin)

% --- Executes just before programa is made visible.
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to programa (see VARARGIN)

% Choose default command line output for programa
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes programa wait for user response (see UIRESUME)
% uiwait(handles.figure1);

format short
% --- Outputs from this function are returned to the command line.
function varargout = programa_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global SLABv

function Lvat1_Callback(hObject, eventdata, handles)
% hObject    handle to Lvat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lvat1 as text
%        str2double(get(hObject,'String')) returns contents of Lvat1 as a double
global Lvat
Lvat = str2double(get(hObject, 'String'));
if isnan(Lvat)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Lvat = Lvat;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Lvat1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lvat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%- - - - - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - 
%Convierte las cajas a texto
%- - - - - - - - - - - - - -- - - - - - - - - - - - - - - - - - - - - - 

% ------------ -------------------------- -------

function Wvat1_Callback(hObject, eventdata, handles)
% hObject    handle to Wvat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Wvat1 as text
%        str2double(get(hObject,'String')) returns contents of Wvat1 as a double
global Wvat
Wvat = str2double(get(hObject, 'String'));
if isnan(Wvat)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Wvat = Wvat;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Wvat1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Wvat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Hvat1_Callback(hObject, eventdata, handles)
% hObject    handle to Hvat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Hvat1 as text
%        str2double(get(hObject,'String')) returns contents of Hvat1 as a double
global Hvat Lvat Wvat Volume fin DBSurfaces DBThickness DBTolerancess
Hvat = str2double(get(hObject, 'String'));
if isnan(Hvat)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Hvat = Hvat;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function Hvat1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Hvat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Volume_Callback(hObject, eventdata, handles)
% hObject    handle to Volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Volume
Volume = str2double(get(hObject, 'String'));
if isnan(Volume)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Volume = Volume;
guidata(hObject,handles)




% --- Executes during object creation, after setting all properties.
function Volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Area_Callback(hObject, eventdata, handles)
% hObject    handle to Area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Area as text
%        str2double(get(hObject,'String')) returns contents of Area as a double
Area = str2double(get(hObject, 'String'));
if isnan(Area)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Area = Area;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function Area_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.

% --- Executes on button press in Electrical.
function Electrical_Callback(hObject, eventdata, handles)
global Elect
if (get(hObject,'Value') == get(hObject,'Min'))
    Elect = [1 1 1 1 1 1 1 1 1 1 1];
else
    Elect = [0 1 1 0 0 1 1 0 0 1 1];
    % checkbox i not checked-take approriate action
end
disp(Elect);

% hObject    handle to Electrical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Electrical


% --- Executes on button press in Fire.
function Fire_Callback(hObject, eventdata, handles)
global FireR
if (get(hObject,'Value') == get(hObject,'Min'))
    FireR= [1 1 1 1 1 1 1 1 1 1 1];
else
     FireR= [0 1 1 0 0 1 1 0 0 1 1];
    % checkbox i not checked-take approriate action
end
disp(FireR);
% hObject    handle to Fire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Fire


% --- Executes on button press in Sanitary.
function Sanitary_Callback(hObject, eventdata, handles)
global Sani 
if (get(hObject,'Value') == get(hObject,'Max'))
    Sani =[0 1 1 0 0 1 1 0 1 1 1];
else
    Sani =[1 1 1 1 1 1 1 1 1 1 1];
    % checkbox i not checked-take approriate action
end
disp(Sani);
% hObject    handle to Sanitary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Sanitary

 
% --- Executes on button press in Critical.
function Critical_Callback(hObject, eventdata, handles)
global Critic 
if (get(hObject,'Value') == get(hObject,'Min'))
    Critic =[1 1 1 1 1 1 1 1 1 1 1];   
else
 % checkbox i not checked-take approriate action
    Critic =[0 1 1 0 0 1 1 0 0 1 1];
end
disp(Critic);

% --- Executes on selection change in Absorb.
function Absorb_Callback(hObject, eventdata, handles)
global Noproceso Final_Absorb
% hObject    handle to Absorb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%--Bases de datos para Absorption resistance FDM -----------------------------
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');

AbsorbFDM1 = exec(conn,'SELECT ALL Absorptivity FROM FDMMaterials WHERE Absorptivity = ''High''  ');
AbsorbFDM1 = fetch(AbsorbFDM1);
close(AbsorbFDM1)
AbsorbFDM2 = exec(conn,'SELECT ALL Absorptivity FROM FDMMaterials WHERE Absorptivity = ''Average''  ');
AbsorbFDM2 = fetch(AbsorbFDM2);
close(AbsorbFDM2)
AbsorbFDM3 = exec(conn,'SELECT ALL Absorptivity FROM FDMMaterials WHERE Absorptivity = ''Low''  ');
AbsorbFDM3 = fetch(AbsorbFDM3);
close(AbsorbFDM3)
%%--Bases de datos para Absorption resistance SLS -----------------------------
AbsorbSLS1 = exec(conn,'SELECT ALL Absorptivity FROM SLSMaterials WHERE Absorptivity = ''High''  ');
AbsorbSLS1 = fetch(AbsorbSLS1);
close(AbsorbSLS1)
AbsorbSLS2 = exec(conn,'SELECT ALL Absorptivity FROM SLSMaterials WHERE Absorptivity = ''Average''  ');
AbsorbSLS2 = fetch(AbsorbSLS2);
close(AbsorbSLS2)
AbsorbSLS3 = exec(conn,'SELECT ALL Absorptivity FROM SLSMaterials WHERE Absorptivity = ''Low''  ');
AbsorbSLS3 = fetch(AbsorbSLS3);
close(AbsorbSLS3)
%%--Bases de datos para Absorption resistance SLA -----------------------------
AbsorbSLA1 = exec(conn,'SELECT ALL Absorptivity FROM SLAMaterials WHERE Absorptivity = ''High''  ');
AbsorbSLA1 = fetch(AbsorbSLA1);
close(AbsorbSLA1)
AbsorbSLA2 = exec(conn,'SELECT ALL Absorptivity FROM SLAMaterials WHERE Absorptivity = ''Average''  ');
AbsorbSLA2 = fetch(AbsorbSLA2);
close(AbsorbSLA2)
AbsorbSLA3 = exec(conn,'SELECT ALL Absorptivity FROM SLAMaterials WHERE Absorptivity = ''Low''  ');
AbsorbSLA3 = fetch(AbsorbSLA3);
close(AbsorbSLA3)
% ---------------------mmmmmmmmmmmmmmmmmmmmmmmmmmm------------------------
close(conn)

Absorb_FDM(1) = numel(AbsorbFDM1.data);
Absorb_FDM(2) = numel(AbsorbFDM2.data);
Absorb_FDM(3) = numel(AbsorbFDM3.data);

Absorb_SLS(1) = numel(AbsorbSLS1.data);
Absorb_SLS(2) = numel(AbsorbSLS2.data);
Absorb_SLS(3) = numel(AbsorbSLS3.data);

Absorb_SLA(1) = numel(AbsorbSLA1.data);
Absorb_SLA(2) = numel(AbsorbSLA2.data);
Absorb_SLA(3) = numel(AbsorbSLA3.data);

%Hay que rellenar la matriz de abajo extrayendo para los procesos que
%faltan sus datos sobre absorcion, asi como en los 3 que ya estan.. (Y
%luego reemplazar los ceros de la matriz "Semia"
Semia= [0 0 0; 0 0 0; 0 0 0; 0 0 0; Absorb_FDM; 0 0 0; 0 0 0; 0 0 0; Absorb_SLA; 0 0 0; Absorb_SLS]

for ika=1: Noproceso
for ira=1: 3
    if Semia(ika,ira) >0
        ni(ira)=1;
    else ni(ira)=0;
    end   
 Fin_Absorb(ika,ira)=ni(ira);    
end 
end
Final_Abs =transpose(Fin_Absorb);

% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
case '-'
   Final_Absorb = [1 1 1 1 1 1 1 1 1 1 1];     
case 'High' % User selects peaks.
   Final_Absorb =(Final_Abs(1,:));
case 'Average'
   Final_Absorb =(Final_Abs(2,:));
case 'Low' % User selects sinc.
   Final_Absorb =(Final_Abs(3,:));
end
guidata(hObject,handles)
disp(Final_Absorb);

% Hints: contents = get(hObject,'String') returns Absorb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Absorb


% --- Executes during object creation, after setting all properties.
function Absorb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Absorb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% hObject    handle to Critical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Critical


% --- Executes on selection change in Wear.
function Wear_Callback(hObject, eventdata, handles)
global Noproceso Final_Wear Fin_W
%--Bases de datos para Wear resistance FDM -----------------------------
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
WearFDM1 = exec(conn,'SELECT ALL "Wear resistance" FROM FDMMaterials WHERE "Wear resistance" = ''High''  ');
WearFDM1 = fetch(WearFDM1);
close(WearFDM1)
WearFDM2 = exec(conn,'SELECT ALL "Wear resistance" FROM FDMMaterials WHERE "Wear resistance" = ''Average''  ');
WearFDM2 = fetch(WearFDM2);
close(WearFDM2)
WearFDM3 = exec(conn,'SELECT ALL "Wear resistance" FROM FDMMaterials WHERE "Wear resistance" = ''Low''  ');
WearFDM3 = fetch(WearFDM3);
close(WearFDM3)
%%--Bases de datos para Wear resistance SLS -----------------------------
WearSLS1 = exec(conn,'SELECT ALL "Wear resistance" FROM SLSMaterials WHERE "Wear resistance" = ''High''  ');
WearSLS1 = fetch(WearSLS1);
close(WearSLS1)
WearSLS2 = exec(conn,'SELECT ALL "Wear resistance" FROM SLSMaterials WHERE "Wear resistance" = ''Average''  ');
WearSLS2 = fetch(WearSLS2);
close(WearSLS2)
WearSLS3 = exec(conn,'SELECT ALL "Wear resistance" FROM SLSMaterials WHERE "Wear resistance" = ''Low''  ');
WearSLS3 = fetch(WearSLS3);
close(WearSLS3)
%%--Bases de datos para Wear resistance SLA -----------------------------
WearSLA1 = exec(conn,'SELECT ALL "Wear resistance" FROM SLAMaterials WHERE "Wear resistance" = ''High''  ');
WearSLA1 = fetch(WearSLA1);
close(WearSLA1)
WearSLA2 = exec(conn,'SELECT ALL "Wear resistance" FROM SLAMaterials WHERE "Wear resistance" = ''Average''  ');
WearSLA2 = fetch(WearSLA2);
close(WearSLA2)
WearSLA3 = exec(conn,'SELECT ALL "Wear resistance" FROM SLAMaterials WHERE "Wear resistance" = ''Low''  ');
WearSLA3 = fetch(WearSLA3);
close(WearSLA3)
% ---------------------mmmmmmmmmmmmmmmmmmmmmmmmmmm------------------------
close(conn)
Wear_FDM(1) = numel(WearFDM1.data);
Wear_FDM(2) = numel(WearFDM2.data);
Wear_FDM(3) = numel(WearFDM3.data);

Wear_SLS(1) = numel(WearSLS1.data);
Wear_SLS(2) = numel(WearSLS2.data);
Wear_SLS(3) = numel(WearSLS3.data);

Wear_SLA(1) = numel(WearSLA1.data);
Wear_SLA(2) = numel(WearSLA2.data);
Wear_SLA(3) = numel(WearSLA3.data);
% Determine the selected data set.
SemiW= [0 0 0; 0 0 0; 0 0 0; 0 0 0; Wear_FDM; 0 0 0; 0 0 0; 0 0 0; Wear_SLA; 0 0 0; Wear_SLS]
for ika=1: Noproceso
for ira=1: 3
    if SemiW(ika,ira) >0
        ni(ira)=1;
    else ni(ira)=0;
    end   
 Fin_W(ika,ira)=ni(ira);    
end 
end
Final_We =transpose(Fin_W);

% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
case '-'
   Final_Wear = [1 1 1 1 1 1 1 1 1 1 1]; 
case 'High' % User selects peaks.
   Final_Wear =(Final_We(1,:));
case 'Average'
   Final_Wear =(Final_We(2,:));
case 'Low' % User selects sinc.
   Final_Wear =(Final_We(3,:));
end
% Set current data to the selected data set.
guidata(hObject,handles)
disp(Final_Wear);
% Save the handles structure.

% hObject    handle to Wear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Wear contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Wear


% --- Executes during object creation, after setting all properties.
function Wear_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Wear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Maxtemp_Callback(hObject, eventdata, handles)
global Maxtemp Fintemp
Maxtemp = str2double(get(hObject, 'String'));
if isnan(Maxtemp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Maxtemp = Maxtemp;
guidata(hObject,handles)

setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','report','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Heat1 = exec(conn,'SELECT ALL "Heat deflection Temperature oC" FROM SLSMaterials');
Heat1 = fetch(Heat1);
close(Heat1)
Heat2 = exec(conn,'SELECT ALL "Heat deflection Temperature oC" FROM FDMMaterials');
Heat2 = fetch(Heat2);
close(Heat2)
Heat3 = exec(conn,'SELECT ALL "Heat deflection Temperature oC" FROM SLAMaterials');
Heat3 = fetch(Heat3);
close(Heat3)
close(conn)
%% Modulo para Temperatura
HeatSLS= max(Heat1.data);
HeatFDM= max(Heat2.data);
HeatSLA= max(Heat3.data);
HeatDMLS= 600;
HeatEBM =1000;
Heat3DP= 30 ;
HeatLC= 600;
HeatSLM= 600;

if Maxtemp > HeatSLM
    TempSLM = 0
else TempSLM =1
end  

if Maxtemp > HeatLC
    TempLC = 0
else TempLC =1
end    

if Maxtemp > HeatDMLS
    TempDMLS = 0
else TempDMLS =1
end    

if Maxtemp > HeatEBM
    TempEBM = 0
else TempEBM =1
end

if Maxtemp > Heat3DP
    Temp3DP = 0
else Temp3DP =1
end    

%cpmparacion para SLS
if Maxtemp > HeatSLS
    TempSLS = 0
else TempSLS =1
end    
%cpmparacion para SLA
if Maxtemp > HeatSLA
    TempSLA = 0
else TempSLA =1
end    
%cpmparacion para FDM
if Maxtemp > HeatFDM
    TempFDM = 0
else TempFDM =1
end    
if Maxtemp < 23
    Fintemp = [1 1 1 1 1 1 1 1 1 1 1];
else
Fintemp = [Temp3DP TempDMLS TempEBM 0 TempFDM TempLC 0 0 TempSLA TempSLM TempSLS];
end
disp(Fintemp);
% hObject    handle to Maxtemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% Hints: get(hObject,'String') returns contents of Maxtemp as text

%        str2double(get(hObject,'String')) returns contents of Maxtemp as a double


% --- Executes during object creation, after setting all properties.
function Maxtemp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Maxtemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Corrosion.
function Corrosion_Callback(hObject, eventdata, handles)
global Noproceso Final_Corr 
% hObject    handle to Corrosion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%--Bases de datos para Corrosion resistance FDM -----------------------------
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
      
CorrFDM1 = exec(conn,'SELECT ALL Corrosion FROM FDMMaterials WHERE Corrosion = ''High''  ');
CorrFDM1 = fetch(CorrFDM1);
close(CorrFDM1)
CorrFDM2 = exec(conn,'SELECT ALL Corrosion FROM FDMMaterials WHERE Corrosion = ''Average''  ');
CorrFDM2 = fetch(CorrFDM2);
close(CorrFDM2)
CorrFDM3 = exec(conn,'SELECT ALL Corrosion FROM FDMMaterials WHERE Corrosion = ''Low''  ');
CorrFDM3 = fetch(CorrFDM3);
close(CorrFDM3)
%%--Bases de datos para Corrosion resistance SLS -----------------------------
CorrSLS1 = exec(conn,'SELECT ALL Corrosion FROM SLSMaterials WHERE Corrosion = ''High''  ');
CorrSLS1 = fetch(CorrSLS1);
close(CorrSLS1)
CorrSLS2 = exec(conn,'SELECT ALL Corrosion FROM SLSMaterials WHERE Corrosion = ''Average''  ');
CorrSLS2 = fetch(CorrSLS2);
close(CorrSLS2)
CorrSLS3 = exec(conn,'SELECT ALL Corrosion FROM SLSMaterials WHERE Corrosion = ''Low''  ');
CorrSLS3 = fetch(CorrSLS3);
close(CorrSLS3)
%%--Bases de datos para Corrosion resistance SLA -----------------------------
CorrSLA1 = exec(conn,'SELECT ALL Corrosion FROM SLAMaterials WHERE Corrosion = ''High''  ');
CorrSLA1 = fetch(CorrSLA1);
close(CorrSLA1)
CorrSLA2 = exec(conn,'SELECT ALL Corrosion FROM SLAMaterials WHERE Corrosion = ''Average''  ');
CorrSLA2 = fetch(CorrSLA2);
close(CorrSLA2)
CorrSLA3 = exec(conn,'SELECT ALL Corrosion FROM SLAMaterials WHERE Corrosion = ''Low''  ');
CorrSLA3 = fetch(CorrSLA3);
close(CorrSLA3)
% ---------------------mmmmmmmmmmmmmmmmmmmmmmmmmmm------------------------
close(conn)

Corr_FDM(1) = numel(CorrFDM1.data);
Corr_FDM(2) = numel(CorrFDM2.data);
Corr_FDM(3) = numel(CorrFDM3.data);

Corr_SLS(1) = numel(CorrSLS1.data);
Corr_SLS(2) = numel(CorrSLS2.data);
Corr_SLS(3) = numel(CorrSLS3.data);

Corr_SLA(1) = numel(CorrSLA1.data);
Corr_SLA(2) = numel(CorrSLA2.data);
Corr_SLA(3) = numel(CorrSLA3.data);

SemiCorr= [0 0 0; 0 0 0; 0 0 0; 0 0 0; Corr_FDM; 0 0 0; 0 0 0; 0 0 0; Corr_SLA; 0 0 0; Corr_SLS];
disp(SemiCorr);
for ika=1: Noproceso
for ira=1: 3
    if SemiCorr(ika,ira) >0
        ni(ira)=1;
    else ni(ira)=0;
    end   
 Final_Corros(ika,ira)=ni(ira);    
end 
end
Fin_Corros=transpose(Final_Corros);
%Final_Corros =transpose(Fin_Corro);
% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
case '-'    
   Final_Corr = [1 1 1 1 1 1 1 1 1 1 1]; 
case 'High' % User selects peaks.
   Final_Corr =(Fin_Corros(1,:));
case 'Average'
   Final_Corr =(Fin_Corros(2,:));
case 'Low' % User selects sinc.
   Final_Corr =(Fin_Corros(3,:));
end
guidata(hObject,handles)
disp(Final_Corr);

% Hints: contents = get(hObject,'String') returns Corrosion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Corrosion
% --- Executes during object creation, after setting all properties.
function Corrosion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Corrosion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%--- Executes on button press in Rank.
function Rank_Callback(hObject, eventdata, handles)
set(handles.uipanel5,'visible','on');
format short
global Final_Wear Final_Corr Final_Absorb Strengh FinFthick FinFSurface FinTolera Support Maq P_compatib Noproceso
global Critic Sani FireR Elect Fintemp fin Maxtemp
global Volume fin Lvat Wvat Hvat Noproceso Matri Wgeo1 Wape1 Wfunc1 Wmeca1
global DBSurfaces DBThickness DBTolerancess net1 maxvb
chuco=[Lvat,Wvat,Hvat];
maxvb= max(chuco);

setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','report','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Bb= exec(conn,'SELECT ALL "Prodigy Plus",Titan,Maxum FROM FDM');
Bb = fetch(Bb);
close(Bb)
Ba = exec(conn,'SELECT ALL "SLA 250","SLA 5000","SLA 7000","SLA viper" FROM SLA');
Ba = fetch(Ba);
close(Ba)
Bc = exec(conn,'SELECT ALL HiQ,"HiQ HS" FROM SLS');
Bc = fetch(Bc);
close(Bc)
close(conn)
Input= sort([Lvat Wvat Hvat],'descend');
a=Input(1);
b=Input(2);
c=Input(3);
%% -----------------Ciclo para SLA ----------------------
SLABv=Ba.data;
Na=4;
SLA1 = sort([SLABv(1) SLABv(2) SLABv(3)],'descend');
SLA2 = sort([SLABv(30) SLABv(31) SLABv(32)],'descend');
SLA3 = sort([SLABv(59) SLABv(60) SLABv(61)],'descend');
SLA4 = sort([SLABv(88) SLABv(89) SLABv(90)],'descend');
Orden1=[SLA1; SLA2; SLA3;SLA4];
for k = 1: Na
   if Orden1(k) * Orden1(k+Na)*Orden1(k+(Na*2)) < Volume;
     SLAB(k)=0 ;
   elseif  a > Orden1(k) || b> Orden1(k+Na) || c> Orden1(k+(2*Na));
     SLAB(k) = 0.75;
   else
     SLAB(k) = 1;
   end
end
SLABB=max(SLAB);
% hObject    handle to Rank (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%FIn de celula
%% Ciclo para FDM --------------------------------------
FDMBv=Bb.data;
Nb=3;
FDM1 = sort([FDMBv(1) FDMBv(2) FDMBv(3)],'descend');
FDM2 = sort([FDMBv(30) FDMBv(31) FDMBv(32)],'descend');
FDM3 = sort([FDMBv(59) FDMBv(60) FDMBv(61)],'descend');
Orden2=[FDM1; FDM2; FDM3];

for k = 1: Nb
   if Orden2(k) * Orden2(k+Nb)*Orden2(k+(Nb*2)) < Volume;
     FDMB(k)=0 ;
   elseif  a > Orden2(k) || b> Orden2(k+Nb) || c> Orden2(k+(2*Nb));
     FDMB(k) = 0.75;
   else
     FDMB(k) = 1;
   end
end
FDMBB=max(FDMB);
%% Ciclo para SLS ------------------------------
SLSBv=Bc.data;
Nc=2;
SLS1 = sort([SLSBv(1) SLSBv(2) SLSBv(3)],'descend');
SLS2 = sort([SLSBv(30) SLSBv(31) SLSBv(32)],'descend');
Orden3=[SLS1; SLS2];

for k = 1: Nc
   if Orden3(k)*Orden3(k+Nc)*Orden3(k+(Nc*2)) < Volume;
     SLSB(k)=0 ;
   elseif  a > Orden3(k) || b> Orden3(k+Nc) || c> Orden3(k+(2*Nc));
     SLSB(k) = 0.75;
   else
     SLSB(k) = 1;
   end
end
SLSBB=max(SLSB);
fin=[1 1 1 1 FDMBB 1 1 1 SLABB 1 SLSBB];
disp(fin);
% Hints: get(hObject,'String') returns contents of Volume as text
%        str2double(get(hObject,'String')) returns contents of Volume as a
%        double
 
%FINN =[Final_Wear; Final_Corr; Final_Absorb; Strengh; FinFthick; FinFSurface; FinTolera; Support; Maq];
Quad1=[FinFthick;Support];
Quad2=[FinFSurface; FinTolera; Maq];
Quad3=[Final_Wear; Final_Corr; Final_Absorb];
Quad4=[Strengh];

Temp =[Quad1; Quad2; Quad3; Quad4];
Suma1=sum(Quad1);
Suma2=sum(Quad2);
Suma3=sum(Quad3);

%MATRIZ1
                            %for hum=1 : Noproceso
                            %    Suma1(hum)= sum(Quad1(:,hum));
                            %    Suma2(hum)= sum(Quad2(:,hum));
                            %     Suma3(hum)= sum(Quad3(:,hum));
   % Suma4(hum)= sum(Quad4(:,hum));
  %for hum=1 : Noproceso
 %   Mini(hum)= min(FINN(:,hum));
%FINNAL=sum(FINN);
                            %end
Norma1=Suma1;
Norma2=Suma2;
Norma3=Suma3;
Norma4=Strengh;
Normal=[Norma1; Norma2; Norma3; Norma4];


for n=1 :Noproceso
    for m=1 :4
        Convert(m,n)=(Normal(m,n)/sum(Normal(:,n)));
    end    
end
%Weigh=[Wgeo1 Wape1 Wfunc1 Wmeca1]
Weigh=[Wmeca1 Wfunc1 Wape1 Wgeo1];
Finito= Weigh*Convert;

RIBELINO = Finito;
RIBELINO = Critic.*Sani.*FireR.*Elect.*fin.*Fintemp.*P_compatib.*Finito;

set(handles.final,'String',RIBELINO);
axes(handles.axes2);
barh(fliplr(RIBELINO));

%axala=transpose(Convert);
%Wey= [Wgeo1; Wape1; Wfunc1; Wmeca1]
%Weigh=Wey*axala;
%disp(axala);
%disp(Wey);
disp(Temp);
disp(Normal);
disp(Convert);
disp(Finito);

% --- Executes on selection change in Thick.
function Thick_Callback(hObject, eventdata, handles)
format short
global Noproceso Fthick FinFthick FuzzyThick
Noproceso = 11;
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
DBThicknes = exec(conn,'SELECT ALL Min,avg,Max FROM Thickness');
DBThicknes = fetch(DBThicknes);
close(DBThicknes)
close(conn)
DBThickness=DBThicknes.data;
%Dist trapezoide
FTH= [0 0 0.21 0.55; 0 0 1.4 2; 0 0 3.5 4];  
for n1 = 1: Noproceso
    for n2=1:3
      FuzzyThick(n1,n2) =trapmf(DBThickness(n1,n2),[FTH(n2) FTH(n2+3) FTH(n2+6) FTH(n2+9)]);
     end    
end
%Dist triangular
%FTH= [0 0 2.2;0 0.18 4;0 .80 4]; 
%for n1 = 1: Noproceso
 %   for n2=1:3
  %    FuzzyThick(n1,n2) =trimf(DBThickness(n1,n2),[FTH(n2) FTH(n2+3) FTH(n2+6)]);
   %  end    
%end

% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set
switch str{val};
case '-'
   Fthick = [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0];    
case 'Very Thin  (0 - 0.5 mm)' % User selects peaks.
   Fthick = FuzzyThick(:,1);
case 'Thin- Avg  (0 .5- 2 mm)'% User selects sinc.
   Fthick = FuzzyThick(:,2);
case 'Avg- Wide (  > 2  mm )' % User selects sinc.
   Fthick = FuzzyThick(:,3);  
end
guidata(hObject,handles)
FinFthick= transpose(Fthick);
disp(FinFthick);
% hObject    handle to Thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Thick contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Thick




% --- Executes on selection change in Finish.
function Finish_Callback(hObject, eventdata, handles)
global Noproceso FSurface FinFSurface
% hObject    handle to Finish (see GCBO)
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
DBSurface = exec(conn,'SELECT ALL Min,avg,Max FROM Surface');
DBSurface = fetch(DBSurface);
close(DBSurface)
close(conn)
DBSurfaces=DBSurface.data;

FS= [0 0 3 5; 0 0 7 12; 0 0 13 30];

Noproceso=11
for n1 = 1: Noproceso
    for n2=1:3
      FuzzySurface(n1,n2) =trapmf(DBSurfaces(n1,n2),[FS(n2) FS(n2+3) FS(n2+6) FS(n2+9)]);
     end    
end
% Determine the selected data set.
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set
switch str{val};
    case '-'
  FSurface = [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0];      
case 'Excellent (0- 3.2um)' % User selects peaks.
  FSurface = FuzzySurface(:,1);
case 'Good-Avg (3.2- 12.5 um)'% User selects sinc.
  FSurface = FuzzySurface(:,2);
case 'Avg-rough(> 12.5 um)' % User selects sinc.
  FSurface = FuzzySurface(:,3);
end
guidata(hObject,handles)
FinFSurface= transpose(FSurface);
disp(FinFSurface);

% --- Executes on selection change in Tolerance.
function Tolerance_Callback(hObject, eventdata, handles)
global Noproceso FTolera FinTolera
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
DBTolerances = exec(conn,'SELECT ALL Min,avg,Max FROM Tolerances');
DBTolerances = fetch(DBTolerances);
close(DBTolerances)
close(conn)
DBTolerancess=DBTolerances.data;

FT= [0 0 0.095 0.15; 0 0 0.2 0.3; 0 0 2 2.55]; 
%La de abajo es la que ysaba antes
%FT =  [0 0 0.055 0.15; 0 0.12 0.2 0.26; 0 0.27 1 1.55]; % FS viene de Fuzzy_TOLERANCE

for n1 = 1: Noproceso
    for n2=1:3
      FuzzyTolera(n1,n2) =trapmf(DBTolerancess(n1,n2),[FT(n2) FT(n2+3) FT(n2+6) FT(n2+9)]);
     end    
end
% Determine the selected data set.
val = get(hObject,'Value');
switch val;
case 1
  FTolera = [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0];
case 2
  FTolera = FuzzyTolera(:,1);
case 3
  FTolera = FuzzyTolera(:,2);
case 4
  FTolera = FuzzyTolera(:,3);
end
guidata(hObject,handles)
FinTolera= transpose(FTolera);
disp(FinTolera);




% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
global Support 
iSelected = get(hObject,'Value');
nano= length(iSelected)
for i = 1: nano;
     nas= iSelected(i);
switch nas
       case 1
           Maqx(1,:)=[0 0 0 0 0 0 0 0 0 0 0];
       case 2
           Maqx(2,:)=[1 0.75 0.75 0.85 0.85 0.75 0.75 0.85 0.85 0.75 1];
       case 3
           Maqx(3,:)=[1 0.75 0.75 0.85 0.85 0.75 0.75 0.85 0.85 0.75 1];
       case 4
           Maqx(4,:)=[1 0.75 0.75 0.85 0.85 0.75 0.75 0.85 0.85 0.75 1];
       case 5
           Maqx(5,:)=[1 0.75 0.75 0.85 0.85 0.75 0.75 0.85 0.85 0.75 1];
       case 6
           Maqx(6,:)=[1 0.75 0.75 0.85 0.85 0.75 0.75 0.85 0.85 0.75 1];
       case 7
           Maqx(7,:)=[1 0.75 0.75 0.85 0.85 0.75 0.75 0.85 0.85 0.75 1];      
end
end
guidata(hObject,handles)
%disp(Maqx);
Support1=sum(Maqx)/nano
if Support1(1) < .1
    Support = [1 1 1 1 1 1 1 1 1 1 1];
else
Support = Support1.^nano
end
disp(Support);


% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1




% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
global P_compatib  BOA
iSelected = get(hObject,'Value');
nano= length(iSelected)

%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
metal = exec(conn,'SELECT ALL "Nombre/ fabricante","Material" FROM MATERIALS WHERE "Material" = ''1''  ');
metal = fetch(metal);
close(metal)
poly = exec(conn,'SELECT ALL "Nombre/ fabricante","Material" FROM MATERIALS WHERE "Material" = ''2''  ');
poly = fetch(poly);
close(poly)
compo = exec(conn,'SELECT ALL "Nombre/ fabricante","Material" FROM MATERIALS WHERE "Material" = ''4''  ');
compo = fetch(compo);
close(compo)
cera = exec(conn,'SELECT ALL "Nombre/ fabricante","Material" FROM MATERIALS WHERE "Material" = ''3''  ');
cera = fetch(cera);
close(cera)
todo = exec(conn,'SELECT ALL "Nombre/ fabricante","Material" FROM MATERIALS');
todo = fetch(todo);
close(todo)
close(conn)

metal1=metal.data;
hihi=metal1(:,1);
poly1=poly.data;
hoho=poly1(:,1);
compo1=compo.data;
haha=compo1(:,1);
todo1=todo.data;
hehe=todo1(:,1);
cera1=cera.data;
huhu=cera1(:,1);

for i = 1: nano
     nas= iSelected(i)
switch nas
case 1 
     Max(1,:)=[1 1 1 1 1 1 1 1 1 1 1];   
     BOA=hehe;
case 2 % User selects peaks.
     Max(2,:)=[0 1 1 0 0 1 1 0 0 1 0];
     BOA =hihi;
case 3 % User selects sinc.
     Max(3,:)=[0 0 0 1 1 0 0 1 1 0 1];
     BOA=hoho;
case 4 % User selects sinc.
     Max(4,:)=[1 0 0 0 0 0 0 0 0 0 1];
     BOA=huhu;
case 5 % User selects sinc.
     Max(5,:)=[1 0 0 0 0 0 0 0 0 0 1];
     BOA=haha;
case 6 % User selects sinc.    
     Max(6,:)=[1 1 1 1 1 1 1 1 1 1 1];
     BOA=hehe;
end
end
guidata(hObject,handles)
Maxim= sum(Max);
P_compatib= Maxim | [0 0 0 0 0 0 0 0 0 0 0]
disp(P_compatib);



 % hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3




% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
global Maq
iSelected = get(hObject,'Value');
nano= length(iSelected)
for i = 1: nano
     nas= iSelected(i)
switch nas
case 1 
     Maqx(1,:) =[0   0   0   0   0   0   0   0   0   0   0];
case 2 % User selects peaks.
     Maqx(2,:) =[0.30	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00    0.80];
case 3 % User selects sinc.
     Maqx(3,:) =[0.75	1.00	1.00	1.00	0.75	1.00	1.00	1.00	1.00	1.00	1.00];
case 4 % User selects sinc.
     Maqx(4,:) =[0.50	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00];
case 5 % User selects sinc.
     Maqx(5,:) =[0.75	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00	1.00];
case 6 % User selects sinc.    
     Maqx(6,:) =[0.75	1.00	1.00	1.00	0.75	1.00	1.00	1.00	1.00	1.00	1.00];
end
end
guidata(hObject,handles)
disp(Maqx);
if length(Maqx(:,1)) > 1
    Maxim= sum(Maqx);
    Maq= Maxim/nano;
else
    Maq= Maqx;
end
disp(Maq);

% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
global Strengh
str = get(hObject, 'String');
val = get(hObject,'Value');
% Set current data to the selected data set.
switch str{val};
case '-'
  Strengh = [1	1	1	1	1	1	1	1	1	1	1];  
case 'High' % User selects peaks.
  Strengh = [0.0	1	1	0.0	0.5	1	1	0.166	0.166	1	1];
case 'Average'
  Strengh = [0.166	1	1	0.166	1	1	1	0.166	.25	1	1];
case 'Low' % User selects sinc.
  Strengh = [1	1	1	1	1	1	1	1	1	1	1];
end
guidata(hObject,handles)
disp(Strengh);










% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
set(handles.final,'String','  ');

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function Critical_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Critical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function calcula  = entrada (Makina)
global Volume Lvat Hvat Wvat teta gap alpha phi

vol_part= Volume;
Lpart= Lvat;
Hpart= Hvat;
Wpart= Wvat;
teta=1;
gap=2;
alpha=1;
phi= Volume/(Lvat*Hvat*Wvat);
L_vat =Makina(1);
W_vat =Makina(2);
H_vat =Makina(3);
MachC =Makina(4);
MaintC =Makina(5);
Mach_rate =Makina(6);
tech_rate =Makina(7);
ul =Makina(8);
Nmach =Makina(9);
Dscan =Makina(10);
Vscan =Makina(11);
Vjump =Makina(12);
Hatch =Makina(13);
tlayer =Makina(14);
Nscan =Makina(15);
Nscan_supp =Makina(16);
Zsupp =Makina(17);
supp_factor =Makina(18);
tdraw_delay =Makina(19);
tstg_down =Makina(20);
tstg_delay =Makina(21);
tsweep =Makina(22);
tstg_up =Makina(23);
tswp_delay =Makina(24);
tpreproc =Makina(25);
tprostproc =Makina(26);
tstartup =Makina(27);
MatC =Makina(28);
dens =Makina(29);

Vbb= Lpart* Hpart * Wpart;
%% CALCULO DE TIEMPOS
%antes...  phi alpha
Fphi=(phi*(2.71.^(alpha*(1-phi))));
Zpart=height;
%antes: Zpart
Aavg= (Vbb * Fphi)/Zpart;
lpart=lenght;
Vavg= (Vscan * Fphi)+ (Vjump*(1-Fphi));
Zsupp= Zsupp_min + ((lpart*sin(teta))/2);
Ztotal=(lpart*sin(teta))+ (Zpart*cos(teta));
Ztotal=Zheight;
%Aavg = Aact*(phi*(e.^(alpha*(1-phi))))/phi;
tdraw= (((Nscan* Aavg)/(Dscan * Vavg * Hatch))*(Zheight/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));

%segunso mayor
tdelay = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay+ tstg_up+ tsweep+ tswp_delay);

%Main formula 1 ----------------------------------
tbuild= tdraw + tdelay + tstartup;

%% CALCULO PARA MULTIPLES PARTES
Nbuild= (L_vat/(Lpart+gap))*(W_vat/Wpart+gap)*(H_vat/Hpart+gap);
tscan=((Nbuild*Nscan*Aavg/Dscan*Vavg*Hatch)*(Zheight/tlayer))+ ((Nbuild*Nscan_supp*Aavg*supp_factor/Dscan*Vavg*Hatch)*(Zsupp/tlayer));
tbuild2= tscan + tdelay + tstartup;
%COST CALCULATOR
Nppd=Nbuild*tbuild;
Cmaterial=(vol_part*dens*(1+supp_factor))*MatC;
Cmaintenance=(MaintC*Nmach)/365*Nppd;
Cmachine=(MachC*Nmach)/(365*ul*Nppd);

Clabor=(tpreproc+tprostproc)*tech_rate;
Cbuild=tbuild*Mach_rate;
Coperation=Cbuild+Clabor;
Ctotal=Cmaterial+Cmaintenance+Cmachine+Coperation;

calc1 = tbuild;
calc2 = tbuild2;
calc3 = Ctotal;





% --------------------------------------------------------------------
function General_Callback(hObject, eventdata, handles)
% hObject    handle to General (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.General_menu,'visible','on');
set(handles.Cost_menu,'visible','off');
set(handles.Materials_menu,'visible','off')
% --------------------------------------------------------------------
function Costs_Callback(hObject, eventdata, handles)
% hObject    handle to Costs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.General_menu,'visible','off');
set(handles.Cost_menu,'visible','on');
set(handles.Materials_menu,'visible','off');

% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12


% --- Executes on button press in checkbox13.
function checkbox13_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox13


% --- Executes on button press in checkbox14.
function checkbox14_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox14


% --- Executes on button press in checkbox15.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox15


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Min'))
   set(handles.listbox6,'visible','off');  
else
   set(handles.listbox6,'visible','on');  
end

% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% --- Executes on button press in checkbox18.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox18


% --- Executes on button press in checkbox19.
function checkbox19_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
   set(handles.listbox4,'visible','on');  
else
   set(handles.listbox4,'visible','off');  
end


% --- Executes on button press in checkbox20.
function checkbox20_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox20


% --- Executes on button press in checkbox21.
function checkbox21_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox21


% --- Executes on button press in checkbox22.
function checkbox22_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
   set(handles.listbox5,'visible','on');  
else
   set(handles.listbox5,'visible','off');  
end




% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
global alpha
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','report','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
SLAm =exec(conn,'SELECT ALL "SLA 250","SLA 5000","SLA 7000","SLA viper" FROM SLA');
SLAm = fetch(SLAm);
close(SLAm)
close(conn)
SLA=SLAm.data
as = get(hObject,'Value');
list = get(hObject,'String');
%item_selected = list{index_selected}; % Convert from cell array
disp(as);
ag=numel(as);
a=[0 0 0 ];
b=[0 0 0 ];
c=[0 0 0 ];
d=[0 0 0 ];
for j=1: ag
    if as(j)==1
        disp('seleccione alguna');
    elseif as(j)==2 
      Makina1=(SLA(:,1));
      alpha=1.6;
        [a(1),a(2),a(3)] = calcula(Makina1);
    elseif as(j)==3   
        Makina2=(SLA(:,2));
        alpha=0.97;
        [b(1), b(2),b(3)] = calcula(Makina2);            
    elseif as(j)==4   
        Makina3=(SLA(:,3));
        alpha=1.04;
        [c(1), c(2), c(3)] = calcula(Makina3);
    elseif as(j)==5   
        Makina3=(SLA(:,4));
        alpha=1.74;
        [d(1), d(2), d(3)] = calcula(Makina3);
    end
end

guidata(hObject,handles)
em=[a; b; c; d];
disp(em);
set(handles.text32,'string',num2str(em));
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in listbox5.
function listbox5_Callback(hObject, eventdata, handles)
global alpha
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','report','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
SLSm = exec(conn,'SELECT ALL HiQ,"HiQ HS",Vanguard FROM SLS');
SLSm = fetch(SLSm);
close(SLSm)
close(conn)
SLS=SLSm.data
as = get(hObject,'Value');
list = get(hObject,'String');
%item_selected = list{index_selected}; % Convert from cell array
disp(as);
ag=numel(as);
a=[0 0 0 ];
b=[0 0 0 ];
c=[0 0 0 ];
for j=1: ag
    if as(j)==1
        disp('seleccione alguna');
    elseif as(j)==2 
      Makina1=(SLS(:,1));
      alpha=2.46;
        [a(1),a(2),a(3)] = calcula(Makina1);
    elseif as(j)==3   
        Makina2=(SLS(:,2));
        alpha=2.399;
        [b(1), b(2),b(3)] = calcula(Makina2);            
    elseif as(j)==4   
        Makina3=(SLS(:,3));
        alpha=1.4;
        [c(1), c(2), c(3)] = calcula(Makina3);
      
    end
end
guidata(hObject,handles)
em=[a; b; c;];
disp(em);
set(handles.text30,'string',num2str(em));
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox5


% --- Executes during object creation, after setting all properties.
function listbox5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox6.
function listbox6_Callback(hObject, eventdata, handles)
global alpha
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','report','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
FDMm = exec(conn,'SELECT ALL "Prodigy Plus",Titan,Maxum FROM FDM');
FDMm = fetch(FDMm);
close(FDMm)
close(conn)
FDM=FDMm.data
as = get(hObject,'Value');
list = get(hObject,'String');
%item_selected = list{index_selected}; % Convert from cell array
disp(as);
ag=numel(as);
a=[0 0 0 ];
b=[0 0 0 ];
c=[0 0 0 ];
for j=1: ag
    if as(j)==1
        disp('seleccione alguna');
    elseif as(j)==2 
      Makina1=(FDM(:,1));
      alpha=2.46;
        [a(1),a(2),a(3)] = calcula(Makina1);
    elseif as(j)==3   
        Makina2=(FDM(:,2));
        alpha=2.399;
        [b(1), b(2),b(3)] = calcula(Makina2);            
    elseif as(j)==4   
        Makina3=(FDM(:,3));
        alpha=1.4;
        [c(1), c(2), c(3)] = calcula(Makina3);
      
     end
end

guidata(hObject,handles)
em=[a; b; c;];
disp(em);
set(handles.text28,'string',num2str(em));



% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox6


% --- Executes during object creation, after setting all properties.
function listbox6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Executes on selection change in listbox9.
function listbox9_Callback(hObject, eventdata, handles)
% hObject    handle to listbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox9


% --- Executes during object creation, after setting all properties.
function listbox9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox10.
function listbox10_Callback(hObject, eventdata, handles)
% hObject    handle to listbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox10


% --- Executes during object creation, after setting all properties.
function listbox10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox11.
function listbox11_Callback(hObject, eventdata, handles)
% hObject    handle to listbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox11


% --- Executes during object creation, after setting all properties.
function listbox11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox12.
function listbox12_Callback(hObject, eventdata, handles)
% hObject    handle to listbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox12


% --- Executes during object creation, after setting all properties.
function listbox12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit9_Callback(hObject, eventdata, handles)
global batch
batch = str2double(get(hObject, 'String'));
if isnan(batch)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.batch = batch;
guidata(hObject,handles)
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





function edit10_Callback(hObject, eventdata, handles)
global gap
gap = str2double(get(hObject, 'String'));
if isnan(gap)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.gap = gap;
guidata(hObject,handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
global teta
teta = str2double(get(hObject, 'String'));
if isnan(teta)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.teta =teta;
guidata(hObject,handles)

% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function edit20_Callback(hObject, eventdata, handles)
global Wmeca1
Wmeca = str2double(get(hObject, 'String'));
if isnan(Wmeca)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Wmeca = Wmeca;
guidata(hObject,handles)

switch Wmeca;
case 1 % User selects peaks.
   Wmeca1 = 1;
case 2
   Wmeca1 = 0.75;
case 3 % User selects sinc.
   Wmeca1 = 0.5;
case 4 % User selects sinc.
   Wmeca1 = 0.25;
end
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
global Wgeo1
Wgeo = str2double(get(hObject, 'String'));
if isnan(Wgeo)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Wgeo = Wgeo;
guidata(hObject,handles)

switch Wgeo;
case 1 % User selects peaks.
   Wgeo1 = 1;
case 2
   Wgeo1 = 0.75;
case 3 % User selects sinc.
    Wgeo1 = 0.5;
case 4 % User selects sinc.
   Wgeo1 = 0.25;
end
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
global Wape1
Wape = str2double(get(hObject, 'String'));
if isnan(Wape)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Wape = Wape;
guidata(hObject,handles)

switch Wape;
case 1 % User selects peaks.
   Wape1 = 1;
case 2
   Wape1 = 0.75;
case 3 % User selects sinc.
   Wape1 = 0.5;
case 4 % User selects sinc.
   Wape1 = 0.25;
end
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
global Wfunc1
Wfunc = str2double(get(hObject, 'String'));
if isnan(Wfunc)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.Wfunc = Wfunc;
guidata(hObject,handles)

switch Wfunc;
case 1 % User selects peaks.
   Wfunc1 = 1;
case 2
   Wfunc1 = 0.75;
case 3 % User selects sinc.
   Wfunc1 = 0.5;
case 4 % User selects sinc.
   Wfunc1 = 0.25;
end
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
slider_value = get(hObject,'Value');
set(handles.pruebat, 'String', slider_value);

% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end




% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
global Wmeca1
val = get(hObject,'Value');
switch val;
case 1 % User selects peaks.
   Wmeca1 = 1;
case 2
   Wmeca1 = 0.75;
case 3 % User selects sinc.
   Wmeca1 = 0.5;
case 4 % User selects sinc.
   Wmeca1 = 0.25;
end
    
% The user selected the second item
% proceed with callback...
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu13


% --- Executes during object creation, after setting all properties.
function popupmenu13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in popupmenu16.
function popupmenu16_Callback(hObject, eventdata, handles)
global Wgeo1
val = get(hObject,'Value');
switch val;
case 1 % User selects peaks.
   Wgeo1 = 1;
case 2
   Wgeo1 = 0.75;
case 3 % User selects sinc.
   Wgeo1 = 0.5;
case 4 % User selects sinc.
   Wgeo1 = 0.25;
end
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu16 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu16


% --- Executes during object creation, after setting all properties.
function popupmenu16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
global Wfunc1
val = get(hObject,'Value');
switch val;
case 1 % User selects peaks.
   Wfunc1 = 1;
case 2
   Wfunc1 = 0.75;
case 3 % User selects sinc.
   Wfunc1 = 0.5;
case 4 % User selects sinc.
   Wfunc1 = 0.25;
end
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu14 contents as cell array
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


% --- Executes on selection change in popupmenu15.
function popupmenu15_Callback(hObject, eventdata, handles)
global Wape1
val = get(hObject,'Value');
switch val;
case 1 % User selects peaks.
   Wape1 = 1;
case 2
   Wape1 = 0.75;
case 3 % User selects sinc.
   Wape1 = 0.5;
case 4 % User selects sinc.
   Wape1 = 0.25;
end

% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB


% --- Executes on selection change in popupmenu18.
function popupmenu18_Callback(hObject, eventdata, handles)
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
DBThicknes = exec(conn,'SELECT ALL Min,avg,Max FROM Thickness');
DBThicknes = fetch(DBThicknes);
close(DBThicknes)

DBSurface = exec(conn,'SELECT ALL Min,avg,Max FROM Surface');
DBSurface = fetch(DBSurface);
close(DBSurface)

DBTolerances = exec(conn,'SELECT ALL Min,avg,Max FROM Tolerances');
DBTolerances = fetch(DBTolerances);
close(DBTolerances)
close(conn)

DBThickness=DBThicknes.data;
DBSurfaces=DBSurface.data;
DBTolerancess=DBTolerances.data;

val = get(hObject,'Value');
switch val;
case 1 % User selects peaks.
   disp('nada');
case 2
   axes(handles.axes7);
   set(handles.axes7,'XGrid','on')
   stem(DBThickness);
case 3 % User selects sinc.
   axes(handles.axes7);
   stem(DBSurfaces);
case 4 % User selects sinc.
   axes(handles.axes7);
   stem(DBTolerancess);   
end
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu18 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu18


% --- Executes during object creation, after setting all properties.
function popupmenu18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in checkbox23.
function checkbox23_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox23


% --- Executes on button press in checkbox24.
function checkbox24_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox24


% --- Executes on button press in checkbox25.
function checkbox25_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox25


% --- Executes on button press in checkbox26.
function checkbox26_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox26


% --- Executes on button press in checkbox27.
function checkbox27_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox27


% --- Executes on button press in checkbox28.
function checkbox28_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox28


% --- Executes on button press in checkbox29.
function checkbox29_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox29


% --- Executes on button press in checkbox30.
function checkbox30_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox30


% --- Executes on button press in checkbox31.
function checkbox31_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox31


% --- Executes on button press in checkbox32.
function checkbox32_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox32


% --- Executes on button press in checkbox33.
function checkbox33_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox33



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in checkbox34.
function checkbox34_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox34


% --- Executes on button press in checkbox35.
function checkbox35_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox35


% --- Executes on button press in checkbox36.
function checkbox36_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox36


% --- Executes on button press in checkbox37.
function checkbox37_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox37


% --- Executes on button press in checkbox38.
function checkbox38_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox38


% --- Executes on button press in checkbox39.
function checkbox39_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox39


% --- Executes on button press in checkbox40.
function checkbox40_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox40


% --- Executes on button press in checkbox41.
function checkbox41_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox41


% --- Executes on button press in checkbox42.
function checkbox42_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox42


% --- Executes on button press in checkbox43.
function checkbox43_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox43


% --- Executes on button press in checkbox44.
function checkbox44_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox44



function edit23_Callback(hObject, eventdata, handles)
global NoParts
NoParts = str2double(get(hObject, 'String'));
if isnan(NoParts)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.NoParts = NoParts;
guidata(hObject,handles)


% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%==========================================================================
%
%==========================================================================
function pushbutton6_Callback(hObject, eventdata, handles)
global Volume Lvat Wvat Hvat Critic Sani FireR Elect fin Fintemp P_compatib NoParts Vbox_part maxvb 
global net1 net_MCP net_M1 Vect_SLS Vect_M1 SSS bandejas_SLS bandejas_SLM net_DMLS bf bf_SLA bandejas_M1

Vbox_part=Lvat.*Wvat.*Hvat;
%==========================================================================
%     AQUI COMIENZA EL CALCULO PARA SLS                              
%==========================================================================
    Max_parts_SLS=round(32749663.84/Vbox_part);
    NPPL_SLS =round ((370.*320)/(Lvat.*Wvat)); %No of parts per layer
    N_layers_SLS = round(NoParts/NPPL_SLS);
if Vbox_part > (370.*320.*445) %Estas son las dimensiones de la máquina de SLS Vanguard
    set(handles.Costes3,'String','Not-possible');        
elseif maxvb> 445
    set(handles.Costes3,'String','Slicing');        
elseif (Volume/15670700 >1) | (Hvat/282.33 >1) | (Vbox_part/32749663.84 >1)
    set(handles.Costes3,'String','parametric');         
else
        if NoParts == 1
            V_sls = Volume;
            Vx_sls= Vbox_part;
            H_sls = Hvat;
        elseif NoParts < Max_parts_SLS
            V_sls = Volume*NoParts;
            Vx_sls= Vbox_part*NoParts;
               if N_layers_SLS < 1
                 H_sls = Hvat;
               else
                 H_sls = Hvat.*N_layers_SLS;
               end    
        else
            V_sls = 15670700;
            Vx_sls= 32749663.84;
            H_sls = 282.33;
            bandejas_SLS = NoParts/Max_parts_SLS;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a= (H_sls/282.33);
b= (V_sls/15670700);
c= (Vx_sls/32749663.84);
Vect_SLS = [a; b; c];

SLS_te= sim(net1,Vect_SLS);
if NoParts < (32749663.84/Vbox_part)
    Salida_SLS = SLS_te;
else
    Salida_SLS = SLS_te*bandejas_SLS;
end
Salida__SLS = Salida_SLS.*31.55;
disp(Salida__SLS);

%CALCULO DE COSTES SOLO PARA SLS  (Cogido del excel rUFFO)
Indirect_costs = 24.75798547; %por hora
TOTAL_BUIDTIME = Salida__SLS; 
MATERIAL_COST  = 54;   % para el duraform standard por Kg
VB = Volume * NoParts; %volume of the build	
Material_density = 0.0000006; %kgr/mm3
mB = Material_density.*VB; %		
Alpha= 0; %  porcentaje desuso	1	
WB = ((370*320*445)-VB)*Alpha;%   wasted material	45847320	
PR = VB/(370*320*445); %					
Material_used = Material_density*(VB+WB);   %(MB)	 21.96   	
kilos_residuo = WB*Material_density; 
Cost_mB	 = MATERIAL_COST*Material_used;
Cost_tB	 = Indirect_costs*TOTAL_BUIDTIME;	
SSS= (Cost_mB+Cost_tB)/NoParts;
set(handles.Costes3,'String',SSS);
%=====================================================================
%                  TERMINA CALCULO DE COSTES
%=====================================================================

%====================================================================%
%                  AQUI COMIENZA EL CALCULO PARA SLM  M1             %  
%====================================================================%
Max_parts_M1=round(27550997.78/Vbox_part);
NPPL_M1 =round ((250*250)/(Lvat.*Wvat));
N_layers_M1 = round(NoParts/NPPL_M1);

if Vbox_part > (250.*250.*250) %Estas son las dimensiones de la máquina de SLS Vanguard
    set(handles.CostesM1,'String','Not-possible');        
elseif maxvb> 250
    set(handles.CostesM1,'String','Slicing');        
elseif (Volume/850400 >1) | (Hvat/235.32 >1) | (Vbox_part/27550997.78 >1)
    set(handles.CostesM1,'String','parametric');         
else
        if NoParts == 1
            V_M1 = Volume;
            Vx_M1= Vbox_part;
            H_M1 = Hvat;
        elseif NoParts < Max_parts_M1
            V_M1 = Volume*NoParts;
            Vx_M1= Vbox_part*NoParts;
               if N_layers_M1 < 1
                 H_M1 = Hvat;
               else
                 H_M1 = Hvat.*N_layers_M1;
               end    
        else
            V_M1 = 850400;
            Vx_M1= 27550997.78;
            H_M1 = 235.32;
            bandejas_M1 = NoParts/Max_parts_M1;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a_M1 = (H_M1/235.32);
b_M1 = (V_M1/850400);
c_M1 = (Vx_M1/27550997.78);
Vect_M1 = [a_M1; b_M1; c_M1];

SLM_te1= sim(net_M1,Vect_M1)
if NoParts < (27550997.78/Vbox_part)
    Salida_SLM = SLM_te1;
else
    Salida_SLM = SLM_te1.*bandejas_M1;
end
Salida__SLM = Salida_SLM.*133.0191728;
disp('tiempo de salida');
disp(Salida__SLM);
%CALCULO DE COSTES SOLO PARA SLM  (Cogido del excel rUFFO)
Indirect_costs_M1 = 25.28; %por hora
TOTAL_BUIDTIME_M1 = Salida__SLM; 
MATERIAL_COST_M1  = 245;   % para el duraform standard por Kg
VB = Volume * NoParts; %volume of the build	
Material_density_M1 = 0.0000082; %kgr/mm3
mB_M1 = Material_density_M1.*VB; %		
Alpha= 0; %  porcentaje desuso	1	
WB_M1 = ((250*250*250)-VB)*Alpha; %   wasted material	45847320	
PR_M1 = VB/(250*250*250); %					
Material_used_M1 = Material_density_M1*(VB+WB_M1);   %(MB)	 21.96   	
kilos_residuo_M1 = WB_M1*Material_density_M1; 
Cost_mB_M1 = MATERIAL_COST_M1*Material_used_M1;
Cost_tB_M1 = Indirect_costs_M1*TOTAL_BUIDTIME_M1;	
SSS_M1= (Cost_mB_M1+Cost_tB_M1)/NoParts;
set(handles.CostesM1,'String',SSS_M1);
%==========================================================================
%   TERMINA CALCULO DE COSTES M1
%==========================================================================

%====================================================================%
%                  AQUI COMIENZA EL CALCULO PARA DMLS  DMLS             %  
%====================================================================%
Max_parts_DMLS=round(27550997.78/Vbox_part);
NPPL_DMLS =round ((250*250)/(Lvat.*Wvat));
N_layers_DMLS = round(NoParts/NPPL_DMLS);

if Vbox_part > (250.*250.*250) %Estas son las dimensiones de la máquina de SLS Vanguard
    set(handles.CostesDMLS,'String','Not-possible');        
elseif maxvb> 250
    set(handles.CostesDMLS,'String','Slicing');        
elseif (Volume/850400 >1) | (Hvat/235.32 >1) | (Vbox_part/27550997.78 >1)
    set(handles.CostesDMLS,'String','parametric');         
else
        if NoParts == 1
            V_DMLS = Volume;
            Vx_DMLS= Vbox_part;
            H_DMLS = Hvat;
        elseif NoParts < Max_parts_DMLS
            V_DMLS = Volume*NoParts;
            Vx_DMLS= Vbox_part*NoParts;
               if N_layers_DMLS < 1
                 H_DMLS = Hvat;
               else
                 H_DMLS = Hvat.*N_layers_DMLS;
               end    
        else
            V_DMLS = 850400;
            Vx_DMLS= 27550997.78;
            H_DMLS = 235.32;
            bandejas_DMLS = NoParts/Max_parts_DMLS;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a_DMLS = (H_DMLS/235.32);
b_DMLS = (V_DMLS/850400);
c_DMLS = (Vx_DMLS/27550997.78);
Vect_DMLS = [a_DMLS; b_DMLS; c_DMLS];

DMLS_te1= sim(net_DMLS,Vect_DMLS)
if NoParts < (27550997.78/Vbox_part)
    Salida_DMLS = DMLS_te1;
else
    Salida_DMLS = DMLS_te1*bandejas_DMLS;
end
Salida__DMLS = Salida_DMLS.*133.0191728;
disp('tiempo de salida');
disp(Salida__DMLS);
%==========================================================================
%CALCULO DE COSTES SOLO PARA DMLS  (Cogido del excel rUFFO)
%==========================================================================
Indirect_costs_DMLS = 36.4539854;  % por hora
TOTAL_BUIDTIME_DMLS = Salida__DMLS; 
MATERIAL_COST_DMLS  = 235;         % para el duraform standard por Kg
VB = Volume * NoParts;             %volume of the build	
Material_density_DMLS = 0.0000082; %kgr/mm3
mB_DMLS = Material_density_DMLS.*VB; %		
Alpha= 0; %  porcentaje desuso	1	
WB_DMLS = ((250*250*250)-VB)*Alpha; %   wasted material	45847320	
PR_DMLS = VB/(250*250*250); %					
Material_used_DMLS = Material_density_DMLS*(VB+WB_DMLS);   %(MB)	 21.96   	
kilos_residuo_DMLS = WB_DMLS*Material_density_DMLS; 
Cost_mB_DMLS = MATERIAL_COST_DMLS*Material_used_DMLS;
Cost_tB_DMLS = Indirect_costs_DMLS*TOTAL_BUIDTIME_DMLS;	
SSS_DMLS= (Cost_mB_DMLS+Cost_tB_DMLS)/NoParts;
set(handles.CostesDMLS,'String',SSS_DMLS);
%==========================================================================
%   TERMINA CALCULO DE COSTES DMLS
%==========================================================================


%====================================================================%
%                  AQUI COMIENZA EL CALCULO PARA SLM  MCP             %  
%====================================================================%
Max_parts_MCP=round(27550997.78/Vbox_part);
NPPL_MCP =round ((250*250)/(Lvat.*Wvat));
N_layers_MCP = round(NoParts/NPPL_MCP);

if Vbox_part > (250.*250.*250) %Estas son las dimensiones de la máquina de SLS Vanguard
    set(handles.solaes,'String','Not-possible');        
elseif maxvb> 250
    set(handles.solaes,'String','Slicing');        
elseif (Volume/850400 >1) | (Hvat/235.32 >1) | (Vbox_part/27550997.78 >1)
    set(handles.solaes,'String','parametric');         
else
        if NoParts == 1
            V_MCP = Volume;
            Vx_MCP= Vbox_part;
            H_MCP = Hvat;
        elseif NoParts < Max_parts_MCP
            V_MCP = Volume*NoParts;
            Vx_MCP= Vbox_part*NoParts;
               if N_layers_MCP < 1
                 H_MCP = Hvat;
               else
                 H_MCP = Hvat.*N_layers_MCP;
               end    
        else
            V_MCP = 850400;
            Vx_MCP= 27550997.78;
            H_MCP = 235.32;
            bandejas_MCP = NoParts/Max_parts_MCP;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a_MCP = (H_MCP/235.32);
b_MCP = (V_MCP/850400);
c_MCP = (Vx_MCP/27550997.78);
Vect_MCP = [a_MCP; b_MCP; c_MCP];

SLM_te2= sim(net_MCP,Vect_MCP)
if NoParts < (27550997.78/Vbox_part)
    Salida_SLM_2 = SLM_te2;
else
    Salida_SLM_2 = SLM_te2*bandejas_MCP;
end
Salida__SLM_2 = Salida_SLM_2.*133.0191728;
disp('tiempo de salida');
disp(Salida__SLM_2);

%CALCULO DE COSTES SOLO PARA SLM  (Cogido del excel rUFFO)
Indirect_costs_MCP = 29.18; %por hora
TOTAL_BUIDTIME_MCP = Salida__SLM; 
MATERIAL_COST_MCP  = 235;   % para el duraform standard por Kg
VB = Volume * NoParts; %volume of the build	
Material_density_MCP = 0.0000082; %kgr/mm3
mB_MCP = Material_density_MCP.*VB; %		
Alpha= 0; %  porcentaje desuso	1	
WB_MCP = ((250*250*250)-VB)*Alpha; %   wasted material	45847320	
PR_MCP = VB/(250*250*250); %					
Material_used_MCP = Material_density_MCP*(VB+WB_MCP);   %(MB)	 21.96   	
kilos_residuo_MCP = WB_MCP*Material_density_MCP; 
Cost_mB_MCP = MATERIAL_COST_MCP*Material_used_MCP;
Cost_tB_MCP = Indirect_costs_MCP*TOTAL_BUIDTIME_MCP;	
SSS_MCP= (Cost_mB_MCP+Cost_tB_MCP)/NoParts;
set(handles.CostesM1,'String',SSS_MCP);

%==========================================================================
%   TERMINA CALCULO DE COSTES MCP
%==========================================================================
V_SLM = max(SSS_MCP, SSS_M1); 
vector_costes=[0 SSS_DMLS 0 0 bf 0 0 bf_SLA V_SLM SSS];
axes(handles.axes9);
barh(fliplr(vector_costes));


function final_CreateFcn(hObject, eventdata, handles)
% --- Executes on selection change in popupmenu20

function popupmenu20_Callback(hObject, eventdata, handles)
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM
str = get(hObject, 'String');
val = get(hObject,'Value');
guidata(hObject,handles)

p=[0.126593575	0.233426823	0.284208737	0.072327044	0.071009689	0.251402346	0.65009349	0.204402516	0.206187319	0.155405405	0.169301377	0.640829509	0.370601734	0.110572837	0.204317525	0.334650688	0.354963454	0.300866905	0.305796362	1	0.550611933	0.421341152	0.345571987	0.238526262	0.206654768	0.622896481	0.349439062	0.450705422	0.410164882	0.137132415	0.31663267	0.289775625	0.08218596	0.290030597	0.150135985	0.433282339	0.141849397	0.467661057	0.098291688	0.269165392	0.393846677	0.300569437	0.121621622	0.559195988	0.13772735	0.228837328	0.095571987	0.163989461	0.163989461	0.15017848	0.287863335	0.345741968	0.46800102	0.327893932	0.12799592	0.171128676	0.232789393	0.326194119	0.18935917	0.32963624	0.064762876	0.393676696	0.285526092	0.708609553	0.453340133	0.327893932	0.218595954	0.345741968	0.241628421	0.267508074	0.228284889	0.485381608	0.161482237	0.11809451	0.163012069	0.300569437	0.186979432	0.163989461	0.148478667	0.594339623	0.103306136	0.157785144	0.412842087	0.147076322	0.142104369	0.238738739	0.253102159	0.544620092	0.515680775	0.242138365	0.459119497	0.371834098	0.228709842	0.434854666	0.109340473	0.17491076	0.362102669	0.248045215	0.468043515	0.178267891
0.063969897	0.11079492	0.076187676	0.04033396	0.150670273	0.042956256	0.22059031	0.046554563	0.011418156	0.032878645	0.083266698	0.241427563	0.111124177	0.02883349	0.065886642	0.140228128	0.093673565	0.01292333	0.215428034	0.285747883	0.589463782	0.065804327	0.008737065	0.010865475	0.071789746	0.011288805	0.021378175	0.450223424	0.997636406	0.064604892	0.479056914	0.720484478	0.067838664	0.049247413	0.040157573	0.288476011	0.060148166	0.142403575	0.101575729	0.04446143	0.136959078	0.116686265	0.02969191	0.362335372	0.025505644	0.112429445	0.053151458	0.181267639	0.447507056	0.14474365	0.013958137	0.267250706	0.78821731	0.15567968	0.060841957	0.097283631	0.305091722	0.149176858	0.439052211	0.342803387	0.058360771	0.454703669	0.050599718	0.43238476	0.568156162	1	0.470637347	0.267497648	0.053174976	0.31576905	0.113040922	0.056232361	0.173565381	0.030362183	0.015016463	0.434677799	0.439052211	0.016792098	0.045766698	0.057737535	0.024176858	0.044085136	0.194720132	0.045249294	0.110877234	0.116874412	0.139287394	0.071683913	0.235277516	0.018015052	0.136488711	0.441850894	0.015134055	0.114169802	0.026352305	0.045954845	0.354891816	0.335853716	0.037100188	0.378668862
0.00399052	0.024849789	0.005240209	0.002207765	0.009527704	0.039816765	0.105854475	0.019482986	0.002793303	0.01102862	0.009316965	0.073788725	0.013174065	0.016737036	0.002173841	0.018251346	0.052184448	0.013262352	0.484518846	1	0.528395146	0.034573918	0.026554391	0.00663332	0.004544245	0.118315491	0.020594329	0.107238858	0.069912641	0.01076637	0.085401643	0.04080011	0.003311142	0.015858971	0.003800101	0.176690987	0.013548779	0.054565998	0.011450971	0.013621785	0.030500096	0.096574469	0.007267047	0.090485726	0.012476645	0.020672398	0.018474855	0.010015411	0.022177292	0.011546121	0.014199426	0.038989526	0.097427247	0.040061643	0.04879055	0.054057143	0.012189956	0.069975614	0.031808892	0.064632553	0.006000551	0.027857859	0.012800576	0.433951809	0.248895094	0.06563288	0.051373073	0.03898724	0.056339643	0.039568262	0.008866361	0.11274174	0.02105727	0.009139804	0.004643328	0.041012442	0.031808892	0.003153076	0.005035746	0.054662475	0.00172886	0.006783718	0.068797462	0.012667023	0.01175915	0.00817404	0.009739236	0.072917839	0.047576003	0.002475347	0.063040323	0.03090049	0.002079255	0.052727215	0.002397151	0.003214151	0.021743511	0.024019944	0.011661299	0.027220374];

t=[0.01979049	0.063203313	0.052916534	0.0071292	0.026146552	0.026391555	0.350454375	0.023255074	0.005753434	0.012486746	0.03445094	0.37809296	0.100643386	0.007791389	0.032898207	0.114682221	0.081258711	0.009502067	0.160991805	0.698316428	0.793180415	0.067757531	0.007378589	0.006333651	0.036255766	0.017184349	0.018256239	0.495895431	1	0.021650841	0.370691027	0.51021793	0.01362524	0.03490571	0.014734028	0.305456892	0.020850627	0.162750127	0.024399222	0.029246364	0.131821803	0.085710454	0.00882507	0.495158247	0.008584712	0.062874736	0.012414094	0.072644954	0.179343261	0.05312225	0.009819357	0.225808454	0.901492265	0.124748274	0.019031304	0.040684764	0.173565278	0.118917787	0.203175692	0.276152699	0.00923669	0.437459047	0.035307188	0.748766867	0.629449837	0.80131379	0.251418797	0.226017104	0.031399632	0.206431369	0.063064084	0.066702003	0.068494721	0.008762579	0.005982141	0.319287205	0.200622317	0.006729614	0.016606682	0.08386141	0.006103729	0.016999163	0.196455439	0.016263867	0.03850517	0.068188568	0.086154288	0.095407958	0.296504033	0.010660274	0.15314108	0.401507986	0.008458812	0.121329001	0.007041558	0.019643418	0.314048661	0.203587096	0.042435721	0.164968854];
% Set current data to the selected data set
Vbox_part=Lvat.*Wvat.*Hvat;
switch str{val};
    case 'Concept L-M1'
    net_2= newff([0.064762876	1; 0.008737065	1; 0.00172886 1],[6 3 1],{'tansig' 'tansig' 'tansig'}, 'trainlm','learngdm','mse'); 
    Mired_SLM_1 = init(net_2);
    net_M1 = train(Mired_SLM_1,p,t);
    

    case 'MCP 250' % User selects peaks.
    %Entrenamiento de las redes
    net_3= newff([0.064762876	1; 0.008737065	1; 0.00172886 1],[6 3 1],{'tansig' 'tansig' 'tansig'}, 'trainlm','learngdm','mse'); 
    Mired_SLM_2 = init(net_3);
    net_MCP = train(Mired_SLM_2,p,t);
 end

% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu20 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu20


% --- Executes during object creation, after setting all properties.
function popupmenu20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu19.
function popupmenu19_Callback(hObject, eventdata, handles)
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net1 Vect_SLS SSS bandejas_SLS
str = get(hObject, 'String');
val = get(hObject,'Value');
guidata(hObject,handles)
p=[0.105514823	0.194559558	0.236885914	0.060284065	0.059186059	0.209542025	0.126483193	0.075620728	0.541848192	0.170368009	0.17185563	0.129529274	0.141111465	0.043247264	0.534126731	0.308893848	0.037898913	0.092161655	0.17029717	0.278928913	0.295859455	0.082315021	0.250770375	0.254879042	0.348705416	0.288137995	0.351184784	0.288031736	0.198809903	0.172245245	0.519179683	0.044593207	0.291254914	0.375659689	0.341869444	0.11429887	0.017709772	0.932702865	0.117132434	0.263911026	0.241525874	0.068501399	0.241738391	0.125137251	0.468317217	0.361137676	0.11823044	0.389792087	0.081925406	0.224347395	0.328268338	0.147486983	0.250522438	0.086104913	0.054794035	0.101370736	0.025608331	0.466085786	0.114794744	0.607268091	0.190734247	0.079658556	0.136684022	0.136684022	0.038288528	0.036446711	0.12517267	0.239931994	0.288173414	0.129281337	0.390075444	0.273297205	0.106683668	0.142634506	0.194028265	0.271880424	0.15782949	0.071759997	0.274749407	0.878758899	0.053979386	0.32812666	0.046718379	0.23798392	0.364325435	0.044841143	0.052031311	0.819112386	0.590620905	0.377855701	0.409839549	0.318563383	0.273297205	0.182198137	0.288173414	0.20139553	0.222966033	0.145290972	0.190273793	0.048524776	0.404562037	0.134594269	0.098430914	0.135869373	0.250522438	1	0.155845996	0.136684022	0.123755888	0.495377749	0.086104913	0.131512769	0.344100875	0.122587044	0.118442957	0.198987001	0.210958807	0.453936882	0.429816173	0.201820565	0.382672759	0.309921014	0.190627989	0.362448199	0.091134488	0.145786845	0.301809939	0.206743881	0.390110863	0.148584989
0.003471447	0.006012495	0.004134468	0.002188798	0.008176406	0.002331102	0.000354802	0.00	0.011970748	0.00	0.000619628	0.001784222	0.004518624	0.000391176	0.013101521	0.006030362	0.000569853	0.001564704	0.003575462	0.007609743	0.005083372	0.001024843	0.000701309	0.011690607	0.015506646	0.03198836	0.003570996	0.000474133	0.000589635	0.003895806	0.000612608	2.55253E-06	0.001160127	0.024432221	0.054138615	0.003505906	0.00019846	0.247960844	0.000815535	0.025996924	0.039098445	0.003681393	0.002672503	0.002179226	0.188710141	0.015654693	0.003264053	0.007727798	0.005512198	0.002412783	0.007432342	0.000250786	0.0063322	0.000303752	0.001539178	0.001611287	8.93387E-06	0.01966281	0.001384112	0.060254488	0.006101195	0.002884364	0.009836829	0.024284812	0.000324172	0.00030758	0.007854786	0.000757465	0.014502862	0.000718538	0.042774094	0.008448251	0.003301703	0.005279279	0.016556376	0.008095363	0.023825994	0.000305666	0.01860287	0.116893949	0.003167057	0.02467535	0.001120563	0.002745889	0.116963505	0.00076257	0.000834041	0.495609641	0.023464172	0.030832062	0.160227048	0.069433401	0.05426688	0.025540021	0.014516263	0.00288564	0.017135801	0.000691737	0.006134378	0.001418571	0.003051555	0.009418852	0.001647661	0.000814897	0.023588608	1	0.023825994	0.000911255	0.002483616	0.003133236	0.001312003	0.002392363	0.010566854	0.002455538	0.006016962	0.00634241	0.007558692	0.003890062	0.012767777	0.000977621	0.007406817	0.02397787	0.000821278	0.006195639	0.001430057	0.002493826	0.019258872	0.018225733	0.002013311	0.020549178
0.003357067	0.020905145	0.004408381	0.001857305	0.008015281	0.03349627	0.000516985	0.001409463	0.089051186	0.016390266	0.002349895	0.009277942	0.007837994	0.000648618	0.062075538	0.01108282	0.002100019	0.014080206	0.001828767	0.015354136	0.043900713	0.005768983	0.011157092	0.054149846	0.057654039	0.102782445	0.029085671	0.022339159	0.00558035	0.003822894	0.099534146	6.26716E-05	0.017325195	0.090215813	0.058814742	0.009057322	0.000296797	0.559781213	0.01029907	0.071845027	0.03432352	0.002785533	0.013341525	0.003196875	0.167637133	0.148643143	0.011398052	0.045904217	0.009633249	0.011459469	0.025658525	0.000726337	0.081244284	0.001127108	0.009352108	0.006113479	2.90816E-05	0.076122065	0.010496109	0.189569805	0.017390871	0.015542166	0.008425569	0.018656879	0.000674043	0.000551145	0.009713295	0.011945416	0.032800347	0.007058184	0.081961692	0.033702276	0.041045561	0.045476138	0.010254928	0.058867718	0.026759563	0.000799835	0.054372812	0.223962943	0.005048026	0.023435716	0.002474747	0.010768618	0.136955761	0.002246102	0.002605478	0.346663771	0.365066505	0.209385605	0.200271362	0.072041717	0.055214348	0.043218136	0.032798424	0.047396315	0.033287215	0.001527044	0.007458919	0.001462614	0.09484517	0.017714649	0.007688956	0.003906248	0.034502146	1	0.026759563	0.002652558	0.004236374	0.045985379	0.001454422	0.005706874	0.057876585	0.010656266	0.009892508	0.006876497	0.008193235	0.061342896	0.040023811	0.002082412	0.053033332	0.025995361	0.001749195	0.044357322	0.002016629	0.002703939	0.018291956	0.020207029	0.00981019	0.022899425];

t=[0.094532488	0.136414862	0.15639197	0.073410812	0.073393203	0.143854552	0.091627047	0.080454305	0.300686741	0.125330164	0.12572636	0.106277514	0.111348829	0.065346012	0.234477901	0.158954041	0.062933615	0.142005635	0.114544814	0.198837824	0.184706815	0.08379116	0.162819158	0.165293185	0.211155133	0.18233844	0.211155133	0.181167459	0.138563127	0.12691495	0.323393203	0.065698186	0.182144744	0.222407114	0.206550449	0.099066737	0.053248811	0.384680401	0.100510653	0.187004754	0.159693608	0.077443212	0.175937665	0.103944356	0.348010213	0.227099842	0.101135763	0.239205846	0.083694312	0.150475436	0.199621412	0.114210248	0.162907202	0.085490403	0.070699067	0.092577919	0.076069731	0.264527205	0.098996302	0.335596056	0.134742032	0.083130833	0.109526325	0.110195457	0.062845571	0.062185244	0.104349357	0.1578623	0.18066561	0.105714034	0.228455714	0.173534073	0.095773904	0.112616658	0.158478605	0.172908963	0.118858954	0.078763867	0.176228209	0.463708399	0.070047544	0.199049128	0.06689558	0.156937841	0.218797323	0.066226448	0.069704173	0.511709808	0.657686212	0.226413101	0.259366086	0.194902272	0.173895052	0.131537242	0.18066561	0.139619651	0.149920761	0.113162529	0.134372249	0.067828843	0.235868991	0.109857369	0.091248459	0.131889417	0.162694136	1	0.118858954	0.109667195	0.127290016	0.278939954	0.085198098	0.110405705	0.214632858	0.102518049	0.101426307	0.138703997	0.144488466	0.259077302	0.247886952	0.140051065	0.225849621	0.191318894	0.134167987	0.200729002	0.08748019	0.113470681	0.187075189	0.142498679	0.136379644	0.115205142];

% Set current data to the selected data set
switch str{val};
    case 'SLS- Sintering'
    disp('esta no es chaval');
    case 'DTM Vanguard' % User selects peaks.
        %Entrenamiento de las redes
    net= newff([0.017709772 1;0 1;2.90816e-005 1],[7 1],{'tansig' 'tansig'}, 'trainlm','learngdm','mse'); 
    Mired_SLS = init(net);
    net1 = train(Mired_SLS,p,t);
end

% hObject    handle to popupmenu19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu19 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu19


% --- Executes during object creation, after setting all properties.
function popupmenu19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu21.
function popupmenu21_Callback(hObject, eventdata, handles)
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM net_DMLS
str = get(hObject, 'String');
val = get(hObject,'Value');
guidata(hObject,handles)

p=[0.126593575	0.233426823	0.284208737	0.072327044	0.071009689	0.251402346	0.65009349	0.204402516	0.206187319	0.155405405	0.169301377	0.640829509	0.370601734	0.110572837	0.204317525	0.334650688	0.354963454	0.300866905	0.305796362	1	0.550611933	0.421341152	0.345571987	0.238526262	0.206654768	0.622896481	0.349439062	0.450705422	0.410164882	0.137132415	0.31663267	0.289775625	0.08218596	0.290030597	0.150135985	0.433282339	0.141849397	0.467661057	0.098291688	0.269165392	0.393846677	0.300569437	0.121621622	0.559195988	0.13772735	0.228837328	0.095571987	0.163989461	0.163989461	0.15017848	0.287863335	0.345741968	0.46800102	0.327893932	0.12799592	0.171128676	0.232789393	0.326194119	0.18935917	0.32963624	0.064762876	0.393676696	0.285526092	0.708609553	0.453340133	0.327893932	0.218595954	0.345741968	0.241628421	0.267508074	0.228284889	0.485381608	0.161482237	0.11809451	0.163012069	0.300569437	0.186979432	0.163989461	0.148478667	0.594339623	0.103306136	0.157785144	0.412842087	0.147076322	0.142104369	0.238738739	0.253102159	0.544620092	0.515680775	0.242138365	0.459119497	0.371834098	0.228709842	0.434854666	0.109340473	0.17491076	0.362102669	0.248045215	0.468043515	0.178267891
0.063969897	0.11079492	0.076187676	0.04033396	0.150670273	0.042956256	0.22059031	0.046554563	0.011418156	0.032878645	0.083266698	0.241427563	0.111124177	0.02883349	0.065886642	0.140228128	0.093673565	0.01292333	0.215428034	0.285747883	0.589463782	0.065804327	0.008737065	0.010865475	0.071789746	0.011288805	0.021378175	0.450223424	0.997636406	0.064604892	0.479056914	0.720484478	0.067838664	0.049247413	0.040157573	0.288476011	0.060148166	0.142403575	0.101575729	0.04446143	0.136959078	0.116686265	0.02969191	0.362335372	0.025505644	0.112429445	0.053151458	0.181267639	0.447507056	0.14474365	0.013958137	0.267250706	0.78821731	0.15567968	0.060841957	0.097283631	0.305091722	0.149176858	0.439052211	0.342803387	0.058360771	0.454703669	0.050599718	0.43238476	0.568156162	1	0.470637347	0.267497648	0.053174976	0.31576905	0.113040922	0.056232361	0.173565381	0.030362183	0.015016463	0.434677799	0.439052211	0.016792098	0.045766698	0.057737535	0.024176858	0.044085136	0.194720132	0.045249294	0.110877234	0.116874412	0.139287394	0.071683913	0.235277516	0.018015052	0.136488711	0.441850894	0.015134055	0.114169802	0.026352305	0.045954845	0.354891816	0.335853716	0.037100188	0.378668862
0.00399052	0.024849789	0.005240209	0.002207765	0.009527704	0.039816765	0.105854475	0.019482986	0.002793303	0.01102862	0.009316965	0.073788725	0.013174065	0.016737036	0.002173841	0.018251346	0.052184448	0.013262352	0.484518846	1	0.528395146	0.034573918	0.026554391	0.00663332	0.004544245	0.118315491	0.020594329	0.107238858	0.069912641	0.01076637	0.085401643	0.04080011	0.003311142	0.015858971	0.003800101	0.176690987	0.013548779	0.054565998	0.011450971	0.013621785	0.030500096	0.096574469	0.007267047	0.090485726	0.012476645	0.020672398	0.018474855	0.010015411	0.022177292	0.011546121	0.014199426	0.038989526	0.097427247	0.040061643	0.04879055	0.054057143	0.012189956	0.069975614	0.031808892	0.064632553	0.006000551	0.027857859	0.012800576	0.433951809	0.248895094	0.06563288	0.051373073	0.03898724	0.056339643	0.039568262	0.008866361	0.11274174	0.02105727	0.009139804	0.004643328	0.041012442	0.031808892	0.003153076	0.005035746	0.054662475	0.00172886	0.006783718	0.068797462	0.012667023	0.01175915	0.00817404	0.009739236	0.072917839	0.047576003	0.002475347	0.063040323	0.03090049	0.002079255	0.052727215	0.002397151	0.003214151	0.021743511	0.024019944	0.011661299	0.027220374];

t=[0.01979049	0.063203313	0.052916534	0.0071292	0.026146552	0.026391555	0.350454375	0.023255074	0.005753434	0.012486746	0.03445094	0.37809296	0.100643386	0.007791389	0.032898207	0.114682221	0.081258711	0.009502067	0.160991805	0.698316428	0.793180415	0.067757531	0.007378589	0.006333651	0.036255766	0.017184349	0.018256239	0.495895431	1	0.021650841	0.370691027	0.51021793	0.01362524	0.03490571	0.014734028	0.305456892	0.020850627	0.162750127	0.024399222	0.029246364	0.131821803	0.085710454	0.00882507	0.495158247	0.008584712	0.062874736	0.012414094	0.072644954	0.179343261	0.05312225	0.009819357	0.225808454	0.901492265	0.124748274	0.019031304	0.040684764	0.173565278	0.118917787	0.203175692	0.276152699	0.00923669	0.437459047	0.035307188	0.748766867	0.629449837	0.80131379	0.251418797	0.226017104	0.031399632	0.206431369	0.063064084	0.066702003	0.068494721	0.008762579	0.005982141	0.319287205	0.200622317	0.006729614	0.016606682	0.08386141	0.006103729	0.016999163	0.196455439	0.016263867	0.03850517	0.068188568	0.086154288	0.095407958	0.296504033	0.010660274	0.15314108	0.401507986	0.008458812	0.121329001	0.007041558	0.019643418	0.314048661	0.203587096	0.042435721	0.164968854];
% Set current data to the selected data set
Vbox_part=Lvat.*Wvat.*Hvat;
switch str{val};
    case 'DMLS'
    set(handles.CostesDMLS,'String','Select one machine');                 
    case 'EOSINT M270' % User selects peaks.
    net_4= newff([0.064762876	1; 0.008737065	1; 0.00172886 1],[5 3 1],{'tansig' 'tansig' 'tansig'}, 'trainlm','learngdm','mse'); 
    Mired_DMLS = init(net_4);
    net_DMLS = train(Mired_DMLS,p,t);
end

% hObject    handle to popupmenu21 (see GCBO)
% --- Executes during object creation, after setting all properties.
function popupmenu21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%======================================================================
%======================================================================
function popupmenu22_Callback(hObject, eventdata, handles)
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf
str = get(hObject, 'String');
val = get(hObject,'Value');
guidata(hObject,handles)

setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
FDM_Ma = exec(conn,'SELECT ALL "Prodigy Plus",Titan,Maxum FROM FDM');
FDM_Ma = fetch(FDM_Ma);
FDM_Mak=FDM_Ma.data
close(FDM_Ma)
close(conn)

gap=5;
batch=NoParts;
teta=0;
e=2.71; 
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;
    
switch str{val};
    case 'Prodigy'
        alpha=2.4;        
L_vat = FDM_Mak(1,1);
W_vat = FDM_Mak(2,1);
H_vat = FDM_Mak(3,1);
MachC = FDM_Mak(4,1);
MaintC= FDM_Mak(5,1);
Mach_rate = FDM_Mak(6,1);
tech_rate = FDM_Mak(7,1);
ul = FDM_Mak(8,1);
Nmach = FDM_Mak(9,1);
Dscan = FDM_Mak(10,1);
Vscan = FDM_Mak(11,1);
Vjump = FDM_Mak(12,1);
Hatch =FDM_Mak(13,1);
tlayer = FDM_Mak(14,1);
Nscan = FDM_Mak(15,1);
Nscan_supp = FDM_Mak(16,1);
Zsupp_min =FDM_Mak(17,1);
supp_factor = FDM_Mak(18,1);
tdraw_delay = FDM_Mak(19,1);
tstg_down = FDM_Mak(20,1);
tstg_delay =FDM_Mak(21,1);
tsweep =FDM_Mak(22,1);
tstg_up =FDM_Mak(23,1);
tswp_delay =FDM_Mak(24,1);
tpreproc =FDM_Mak(25,1);
tprostproc =FDM_Mak(26,1);
tstartup =FDM_Mak(27,1);
MatC =FDM_Mak(28,1);
dens =FDM_Mak(29,1);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;

tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));

if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;

if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af=tiempo;
bf= COCO/batch;
%CANTIDAD
cf=Nbuilds;
sola=[af, bf, cf];
set(handles.sola,'String',bf);        

   case 'Titan'
   
alpha=2.4;
           
L_vat = FDM_Mak(1,2);
W_vat = FDM_Mak(2,2);
H_vat = FDM_Mak(3,2);
MachC = FDM_Mak(4,2);
MaintC= FDM_Mak(5,2);
Mach_rate = FDM_Mak(6,2);
tech_rate = FDM_Mak(7,2);
ul = FDM_Mak(8,2);
Nmach = FDM_Mak(9,2);
Dscan = FDM_Mak(10,2);
Vscan = FDM_Mak(11,2);
Vjump = FDM_Mak(12,2);
Hatch =FDM_Mak(13,2);
tlayer = FDM_Mak(14,2);
Nscan = FDM_Mak(15,2);
Nscan_supp = FDM_Mak(16,2);
Zsupp_min =FDM_Mak(17,2);
supp_factor = FDM_Mak(18,2);
tdraw_delay = FDM_Mak(19,2);
tstg_down = FDM_Mak(20,2);
tstg_delay =FDM_Mak(21,2);
tsweep =FDM_Mak(22,2);
tstg_up =FDM_Mak(23,2);
tswp_delay =FDM_Mak(24,2);
tpreproc =FDM_Mak(25,2);
tprostproc =FDM_Mak(26,2);
tstartup =FDM_Mak(27,2);
MatC =FDM_Mak(28,2);
dens =FDM_Mak(29,2);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;

tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));

if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;

%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);

%TIEMPO
af=tiempo;
bf= COCO/batch;
%CANTIDAD
cf=Nbuilds;

sola=[af, bf, cf];
set(handles.sola,'String',bf);        

   case 'Maxum'

       alpha=2.4;
           
L_vat = FDM_Mak(1,3);
W_vat = FDM_Mak(2,3);
H_vat = FDM_Mak(3,3);
MachC = FDM_Mak(4,3);
MaintC= FDM_Mak(5,3);
Mach_rate = FDM_Mak(6,3);
tech_rate = FDM_Mak(7,3);
ul = FDM_Mak(8,3);
Nmach = FDM_Mak(9,3);
Dscan = FDM_Mak(10,3);
Vscan = FDM_Mak(11,3);
Vjump = FDM_Mak(12,3);
Hatch =FDM_Mak(13,3);
tlayer = FDM_Mak(14,3);
Nscan = FDM_Mak(15,3);
Nscan_supp = FDM_Mak(16,3);
Zsupp_min =FDM_Mak(17,3);
supp_factor = FDM_Mak(18,3);
tdraw_delay = FDM_Mak(19,3);
tstg_down = FDM_Mak(20,3);
tstg_delay =FDM_Mak(21,3);
tsweep =FDM_Mak(22,3);
tstg_up =FDM_Mak(23,3);
tswp_delay =FDM_Mak(24,3);
tpreproc =FDM_Mak(25,3);
tprostproc =FDM_Mak(26,3);
tstartup =FDM_Mak(27,3);
MatC =FDM_Mak(28,3);
dens =FDM_Mak(29,3);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;

tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));

if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;

if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;

%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af=tiempo;
bf= COCO/batch;
%CANTIDAD
cf=Nbuilds;
sola=[af, bf, cf];
set(handles.sola,'String',bf);        
            
end

% hObject    handle to popupmenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu22 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu22


% --- Executes during object creation, after setting all properties.
function popupmenu22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu23.
function popupmenu23_Callback(hObject, eventdata, handles)
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf_SLA
str = get(hObject, 'String');
val = get(hObject,'Value');
guidata(hObject,handles)

setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
SLA_e = exec(conn,'SELECT ALL "SLA 250","SLA 5000","SLA 7000","SLA viper" FROM SLA');
SLA_e = fetch(SLA_e);
SLA_es=SLA_e.data
close(SLA_e)

gap=5;
batch=NoParts;
teta=0;
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;

switch str{val};
       case 'SLA 250'
                alpha=2;       
L_vat = SLA_es(1,1);
W_vat = SLA_es(2,1);
H_vat = SLA_es(3,1);
MachC = SLA_es(4,1);
MaintC= SLA_es(5,1);
Mach_rate = SLA_es(6,1);
tech_rate = SLA_es(7,1);
ul = SLA_es(8,1);
Nmach = SLA_es(9,1);
Dscan = SLA_es(10,1);
Vscan = SLA_es(11,1);
Vjump = SLA_es(12,1);
Hatch =SLA_es(13,1);
tlayer = SLA_es(14,1);
Nscan = SLA_es(15,1);
Nscan_supp = SLA_es(16,1);
Zsupp_min =SLA_es(17,1);
supp_factor = SLA_es(18,1);
tdraw_delay = SLA_es(19,1);
tstg_down = SLA_es(20,1);
tstg_delay =SLA_es(21,1);
tsweep =SLA_es(22,1);
tstg_up =SLA_es(23,1);
tswp_delay =SLA_es(24,1);
tpreproc =SLA_es(25,1);
tprostproc =SLA_es(26,1);
tstartup =SLA_es(27,1);
MatC =SLA_es(28,1);
dens =SLA_es(29,1);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;
tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));
if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af=tiempo;
bf_SLA= COCO/batch;
%CANTIDAD
cf=Nbuilds;
sola=[af, bf_SLA, cf];
set(handles.solaes,'String',bf_SLA);        

    case 'SLA 5000'
                alpha=1.5;       
L_vat = SLA_es(1,1);
W_vat = SLA_es(2,1);
H_vat = SLA_es(3,1);
MachC = SLA_es(4,1);
MaintC= SLA_es(5,1);
Mach_rate = SLA_es(6,1);
tech_rate = SLA_es(7,1);
ul = SLA_es(8,1);
Nmach = SLA_es(9,1);
Dscan = SLA_es(10,1);
Vscan = SLA_es(11,1);
Vjump = SLA_es(12,1);
Hatch =SLA_es(13,1);
tlayer = SLA_es(14,1);
Nscan = SLA_es(15,1);
Nscan_supp = SLA_es(16,1);
Zsupp_min =SLA_es(17,1);
supp_factor = SLA_es(18,1);
tdraw_delay = SLA_es(19,1);
tstg_down = SLA_es(20,1);
tstg_delay =SLA_es(21,1);
tsweep =SLA_es(22,1);
tstg_up =SLA_es(23,1);
tswp_delay =SLA_es(24,1);
tpreproc =SLA_es(25,1);
tprostproc =SLA_es(26,1);
tstartup =SLA_es(27,1);
MatC =SLA_es(28,1);
dens =SLA_es(29,1);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;
tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));
if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af=tiempo;
bf_SLA= COCO/batch;
%CANTIDAD
cf=Nbuilds;
sola=[af, bf_SLA, cf];
set(handles.solaes,'String',bf_SLA);        

    case 'SLA 7000'
                alpha=1;       
L_vat = SLA_es(1,3);
W_vat = SLA_es(2,3);
H_vat = SLA_es(3,3);
MachC = SLA_es(4,3);
MaintC= SLA_es(5,3);
Mach_rate = SLA_es(6,3);
tech_rate = SLA_es(7,3);
ul = SLA_es(8,3);
Nmach = SLA_es(9,3);
Dscan = SLA_es(10,3);
Vscan = SLA_es(11,3);
Vjump = SLA_es(12,3);
Hatch =SLA_es(13,3);
tlayer = SLA_es(14,3);
Nscan = SLA_es(15,3);
Nscan_supp = SLA_es(16,3);
Zsupp_min =SLA_es(17,3);
supp_factor = SLA_es(18,3);
tdraw_delay = SLA_es(19,3);
tstg_down = SLA_es(20,3);
tstg_delay =SLA_es(21,3);
tsweep =SLA_es(22,3);
tstg_up =SLA_es(23,3);
tswp_delay =SLA_es(24,3);
tpreproc =SLA_es(25,3);
tprostproc =SLA_es(26,3);
tstartup =SLA_es(27,3);
MatC =SLA_es(28,3);
dens =SLA_es(29,3);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;
tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));
if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af=tiempo;
bf_SLA= COCO/batch;
%CANTIDAD
cf=Nbuilds;
sola=[af, bf_SLA, cf];
set(handles.solaes,'String',bf_SLA);        

end
        
        % hObject    handle to popupmenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu23 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu23


% --- Executes during object creation, after setting all properties.
function popupmenu23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu24.
function popupmenu24_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu24 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu24


% --- Executes during object creation, after setting all properties.
function popupmenu24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton7.
function listbox13_Callback(hObject, eventdata, handles)  
global Volume Lvat Wvat Hvat Critic Sani FireR Elect fin Fintemp P_compatib NoParts net1 Vbox_part maxvb net_DMLS
iSelected = get(hObject,'Value');
nano= length(iSelected)

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;
Vbox_part=Lvat.*Wvat.*Hvat;

for i = 1: nano
     nas= iSelected(i)
switch nas
case 1 
     disp('1');

%==========================================================================     
case 2 % User selects peaks.
%==========================================================================
for cac = 1: (NoParts+500)
    gap=5;
    batch=NoParts;
    alpha=1;
    teta=0;
    e=2.71; 
    vol_part= Volume;

    Max_parts_DMLS=round(27550997.78/Vbox_part);
    NPPL_DMLS =round ((250.*250)/(Lvat.*Wvat)); %No of parts per layer
    Indirect_costs_DMLS = 24.75798547; %por hora
    MATERIAL_COST_DMLS  = 54;   % para el duraform standard por Kg

    VB = Volume * cac; %volume of the build	
    N_layers_DMLS = round(cac/NPPL_DMLS);
    Material_density = 0.0000006; %kgr/mm3
    mB = Material_density.*VB; %		
    Alpha= 0; %  porcentaje desuso	1	
    WB_DMLS = ((250*250*250)-VB)*Alpha;%   wasted material	45847250	
    PR_DMLS = VB/(250*250*250); %					
    Material_used_DMLS = Material_density*(VB+WB_DMLS);   %(MB)	 21.96   	
    kilos_residuo_DMLS = WB_DMLS*Material_density; 
    Cost_mB_DMLS(cac)= MATERIAL_COST_DMLS*Material_used_DMLS;
if Vbox_part > (250.*250.*250) %Estas son las dimensiones de la máquina de DMLS Vanguard
    set(handles.Salida3,'String','Not possible');        
elseif maxvb> 250
    set(handles.Salida3,'String','Consider slicing');        
elseif (Volume/850400 >1) | (Hvat/235.32 >1) | (Vbox_part/27550997.78 >1)
    set(handles.Salida3,'String','Use parametric');         
else
        if cac == 1
            V_DMLS = Volume;
            Vx_DMLS= Vbox_part;
            H_DMLS = Hvat;
        elseif cac < Max_parts_DMLS
            V_DMLS = Volume*cac;
            Vx_DMLS= Vbox_part*cac;
               if N_layers_DMLS < 1
                 H_DMLS = Hvat;
               else
                 H_DMLS = Hvat.*N_layers_DMLS;
               end    
        else
            V_DMLS = 850400;
            Vx_DMLS= 27550997.78;
            H_DMLS = 235.32;
            bandejas_DMLS = cac/Max_parts_DMLS;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a_DMLS(cac)= (H_DMLS/235.32);
b_DMLS(cac)= (V_DMLS/850400);
c_DMLS(cac)= (Vx_DMLS/27550997.78);
end
hm_DMLS = [a_DMLS; b_DMLS; c_DMLS];
%%SIMULAR LA RED DE DMLS
for cac = 1 : (NoParts+500)
das(cac)=cac;    
hm__DMLS=hm_DMLS(:,cac);

te_DMLS= sim(net_DMLS,hm__DMLS);

if cac < (27550997.78/Vbox_part)
    Salida_DMLS(cac) = te_DMLS;
else
    Salida_DMLS(cac) = te_DMLS*bandejas_DMLS;
end
    Salida__DMLS(cac)= Salida_DMLS(cac)*31.55;
    Cost_tB_DMLS(cac)= Indirect_costs_DMLS*Salida__DMLS(cac);
    SSS_DMLS(cac)= (Cost_mB_DMLS(cac)+Cost_tB_DMLS(cac))/cac;
end
axes(handles.axes10);
plot(das, SSS_DMLS,'-.r');
hold on
%==========================================================================
case 3 % User selects sinc.
%======================================================================
     disp('3');
%==========================================================================
case 4 % User selects sinc.
%======================================================================
     disp('4');
%=======================================================================
case 5 % User selects sinc.
%======================================================================

%=======================================================================     
case 6 % User selects sinc.    
%=======================================================================
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
FDM_Ma = exec(conn,'SELECT ALL "Prodigy Plus",Titan,Maxum FROM FDM');
FDM_Ma = fetch(FDM_Ma);
FDM_Mak=FDM_Ma.data
close(FDM_Ma)
close(conn)

gap=5;
teta=0;
e=2.71; 
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;
    
alpha=2.4;        
L_vat = FDM_Mak(1,1);
W_vat = FDM_Mak(2,1);
H_vat = FDM_Mak(3,1);
MachC = FDM_Mak(4,1);
MaintC= FDM_Mak(5,1);
Mach_rate = FDM_Mak(6,1);
tech_rate = FDM_Mak(7,1);
ul = FDM_Mak(8,1);
Nmach = FDM_Mak(9,1);
Dscan = FDM_Mak(10,1);
Vscan = FDM_Mak(11,1);
Vjump = FDM_Mak(12,1);
Hatch =FDM_Mak(13,1);
tlayer = FDM_Mak(14,1);
Nscan = FDM_Mak(15,1);
Nscan_supp = FDM_Mak(16,1);
Zsupp_min =FDM_Mak(17,1);
supp_factor = FDM_Mak(18,1);
tdraw_delay = FDM_Mak(19,1);
tstg_down = FDM_Mak(20,1);
tstg_delay =FDM_Mak(21,1);
tsweep =FDM_Mak(22,1);
tstg_up =FDM_Mak(23,1);
tswp_delay =FDM_Mak(24,1);
tpreproc =FDM_Mak(25,1);
tprostproc =FDM_Mak(26,1);
tstartup =FDM_Mak(27,1);
MatC =FDM_Mak(28,1);
dens =FDM_Mak(29,1);

for cac = 1: (NoParts+500)
das(cac)=cac;
batch=cac;
phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;

tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));

if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann=(((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;

if batch < Nbuilds
    tiempo = tbuild2;
else
    tiempo = (batch/Nbuilds)*tbuild2;
end
    Nppd =(24.*Nbuild)/tiempo;  

%COSTES POR PIEZA
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af(cac)=tiempo;
FDM1(cac)= COCO/batch;
%CANTIDAD
cf(cac)=Nbuilds;
end
axes(handles.axes10);
plot(das, FDM1,'-g');
hold on
 
%=======================================================================
case 7 % User selects sinc.    
%=======================================================================
 global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf

setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
FDM_Ma = exec(conn,'SELECT ALL "Prodigy Plus",Titan,Maxum FROM FDM');
FDM_Ma = fetch(FDM_Ma);
FDM_Mak=FDM_Ma.data
close(FDM_Ma)
close(conn)

gap=5;
batch=NoParts;
teta=0;
e=2.71; 
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;
alpha=2.4;        
        
for cac = 1: (NoParts+500)
das(cac)=cac;
batch=cac;
L_vat = FDM_Mak(1,2);
W_vat = FDM_Mak(2,2);
H_vat = FDM_Mak(3,2);
MachC = FDM_Mak(4,2);
MaintC= FDM_Mak(5,2);
Mach_rate = FDM_Mak(6,2);
tech_rate = FDM_Mak(7,2);
ul = FDM_Mak(8,2);
Nmach = FDM_Mak(9,2);
Dscan = FDM_Mak(10,2);
Vscan = FDM_Mak(11,2);
Vjump = FDM_Mak(12,2);
Hatch =FDM_Mak(13,2);
tlayer = FDM_Mak(14,2);
Nscan = FDM_Mak(15,2);
Nscan_supp = FDM_Mak(16,2);
Zsupp_min =FDM_Mak(17,2);
supp_factor = FDM_Mak(18,2);
tdraw_delay = FDM_Mak(19,2);
tstg_down = FDM_Mak(20,2);
tstg_delay =FDM_Mak(21,2);
tsweep =FDM_Mak(22,2);
tstg_up =FDM_Mak(23,2);
tswp_delay =FDM_Mak(24,2);
tpreproc =FDM_Mak(25,2);
tprostproc =FDM_Mak(26,2);
tstartup =FDM_Mak(27,2);
MatC =FDM_Mak(28,2);
dens =FDM_Mak(29,2);

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;

tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));

if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;

%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);

%TIEMPO
af_2(cac)=tiempo;
FDM2(cac)= COCO/batch;
%CANTIDAD
cf_2(cac)=Nbuilds;
end
axes(handles.axes10);
plot(das, FDM2,'--g');
hold on

case 8 % User selects sinc.    
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
FDM_Ma = exec(conn,'SELECT ALL "Prodigy Plus",Titan,Maxum FROM FDM');
FDM_Ma = fetch(FDM_Ma);
FDM_Mak=FDM_Ma.data
close(FDM_Ma)
close(conn)

gap=5;
batch=NoParts;
teta=0;
e=2.71; 
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;
alpha=2.4;        
                  
L_vat = FDM_Mak(1,3);
W_vat = FDM_Mak(2,3);
H_vat = FDM_Mak(3,3);
MachC = FDM_Mak(4,3);
MaintC= FDM_Mak(5,3);
Mach_rate = FDM_Mak(6,3);
tech_rate = FDM_Mak(7,3);
ul = FDM_Mak(8,3);
Nmach = FDM_Mak(9,3);
Dscan = FDM_Mak(10,3);
Vscan = FDM_Mak(11,3);
Vjump = FDM_Mak(12,3);
Hatch =FDM_Mak(13,3);
tlayer = FDM_Mak(14,3);
Nscan = FDM_Mak(15,3);
Nscan_supp = FDM_Mak(16,3);
Zsupp_min =FDM_Mak(17,3);
supp_factor = FDM_Mak(18,3);
tdraw_delay = FDM_Mak(19,3);
tstg_down = FDM_Mak(20,3);
tstg_delay =FDM_Mak(21,3);
tsweep =FDM_Mak(22,3);
tstg_up =FDM_Mak(23,3);
tswp_delay =FDM_Mak(24,3);
tpreproc =FDM_Mak(25,3);
tprostproc =FDM_Mak(26,3);
tstartup =FDM_Mak(27,3);
MatC =FDM_Mak(28,3);
dens =FDM_Mak(29,3);

for cac = 1: (NoParts+500)
das(cac)=cac;
batch=cac;
phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;

tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));

if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;

if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;

%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af_3(cac)=tiempo;
FDM3(cac)= COCO/batch;
cf_3(cac)=Nbuilds;
end
axes(handles.axes10);
plot(das, FDM3,'-.g');
hold on
    
    
case 9 % User selects sinc.    
     disp('9');
case 10 % User selects sinc.    
     disp('10');
case 11 % User selects sinc.    
     disp('11');       
case 12 % User selects sinc.    
global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf_SLA
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
SLA_e = exec(conn,'SELECT ALL "SLA 250","SLA 5000","SLA 7000","SLA viper" FROM SLA');
SLA_e = fetch(SLA_e);
SLA_es=SLA_e.data
close(SLA_e)
gap=5;
batch=NoParts;
teta=0;
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;

alpha=2;       
L_vat = SLA_es(1,1);
W_vat = SLA_es(2,1);
H_vat = SLA_es(3,1);
MachC = SLA_es(4,1);
MaintC= SLA_es(5,1);
Mach_rate = SLA_es(6,1);
tech_rate = SLA_es(7,1);
ul = SLA_es(8,1);
Nmach = SLA_es(9,1);
Dscan = SLA_es(10,1);
Vscan = SLA_es(11,1);
Vjump = SLA_es(12,1);
Hatch =SLA_es(13,1);
tlayer = SLA_es(14,1);
Nscan = SLA_es(15,1);
Nscan_supp = SLA_es(16,1);
Zsupp_min =SLA_es(17,1);
supp_factor = SLA_es(18,1);
tdraw_delay = SLA_es(19,1);
tstg_down = SLA_es(20,1);
tstg_delay =SLA_es(21,1);
tsweep =SLA_es(22,1);
tstg_up =SLA_es(23,1);
tswp_delay =SLA_es(24,1);
tpreproc =SLA_es(25,1);
tprostproc =SLA_es(26,1);
tstartup =SLA_es(27,1);
MatC =SLA_es(28,1);
dens =SLA_es(29,1);

for cac = 1: (NoParts+500)
das(cac)=cac;
batch=cac;
phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;
tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));
if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af_SLA1(cac)=tiempo;
bf_SLA1(cac)= COCO/batch;
cfSLA1(cac)=Nbuilds;
end
axes(handles.axes10);
plot(das,bf_SLA1,'-b');
hold on
        
case 13 % User selects sinc.
    global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf_SLA
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
SLA_e = exec(conn,'SELECT ALL "SLA 250","SLA 5000","SLA 7000","SLA viper" FROM SLA');
SLA_e = fetch(SLA_e);
SLA_es=SLA_e.data
close(SLA_e)

gap=5;
batch=NoParts;
teta=0;
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;

alpha=1.5;       
L_vat = SLA_es(1,2);
W_vat = SLA_es(2,2);
H_vat = SLA_es(3,2);
MachC = SLA_es(4,2);
MaintC= SLA_es(5,2);
Mach_rate = SLA_es(6,2);
tech_rate = SLA_es(7,2);
ul = SLA_es(8,2);
Nmach = SLA_es(9,2);
Dscan = SLA_es(10,2);
Vscan = SLA_es(11,2);
Vjump = SLA_es(12,2);
Hatch =SLA_es(13,2);
tlayer = SLA_es(14,2);
Nscan = SLA_es(15,2);
Nscan_supp = SLA_es(16,2);
Zsupp_min =SLA_es(17,2);
supp_factor = SLA_es(18,2);
tdraw_delay = SLA_es(19,2);
tstg_down = SLA_es(20,2);
tstg_delay =SLA_es(21,2);
tsweep =SLA_es(22,2);
tstg_up =SLA_es(23,2);
tswp_delay =SLA_es(24,2);
tpreproc =SLA_es(25,2);
tprostproc =SLA_es(26,2);
tstartup =SLA_es(27,2);
MatC =SLA_es(28,2);
dens =SLA_es(29,2);

for cac = 1: (NoParts+500)
das(cac)=cac;
batch=cac;
phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;
tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));
if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af_SLA2(cac)=tiempo;
bf_SLA2(cac)= COCO/batch;
cfSLA2(cac)=Nbuilds;
end
axes(handles.axes10);
plot(das,bf_SLA2,'--b');
hold on

    
case 14 % User selects sinc.    
    
    global Vbox_part maxvb Volume Lvat Wvat Hvat NoParts net_MCP net_M1 Vect_M1 bandejas_SLM bf_SLA
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'numeric','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
SLA_e = exec(conn,'SELECT ALL "SLA 250","SLA 5000","SLA 7000","SLA viper" FROM SLA');
SLA_e = fetch(SLA_e);
SLA_es=SLA_e.data
close(SLA_e)

gap=5;
batch=NoParts;
teta=0;
vol_part= Volume;

Lpart = Lvat;
Hpart = Hvat;
Wpart = Wvat;
Zpart=Hpart;

alpha=1;       
L_vat = SLA_es(1,3);
W_vat = SLA_es(2,3);
H_vat = SLA_es(3,3);
MachC = SLA_es(4,3);
MaintC= SLA_es(5,3);
Mach_rate = SLA_es(6,3);
tech_rate = SLA_es(7,3);
ul = SLA_es(8,3);
Nmach = SLA_es(9,3);
Dscan = SLA_es(10,3);
Vscan = SLA_es(11,3);
Vjump = SLA_es(12,3);
Hatch =SLA_es(13,3);
tlayer = SLA_es(14,3);
Nscan = SLA_es(15,3);
Nscan_supp = SLA_es(16,3);
Zsupp_min =SLA_es(17,3);
supp_factor = SLA_es(18,3);
tdraw_delay = SLA_es(19,3);
tstg_down = SLA_es(20,3);
tstg_delay =SLA_es(21,3);
tsweep =SLA_es(22,3);
tstg_up =SLA_es(23,3);
tswp_delay =SLA_es(24,3);
tpreproc =SLA_es(25,3);
tprostproc =SLA_es(26,3);
tstartup =SLA_es(27,3);
MatC =SLA_es(28,3);
dens =SLA_es(29,3);

for cac = 1: (NoParts+500)
das(cac)=cac;
batch=cac;

phi= (Volume/(Lvat*Hvat*Wvat));
Fphi= (phi*(2.71.^(alpha*(1-phi))));
Vbb= Lpart* Hpart * Wpart;
Aavg= (Vbb*Fphi)/Zpart;
Vavg= ((Vscan * Fphi)+ (Vjump*(1- Fphi)));
Zsupp= Zsupp_min + ((Lpart*sin(teta))/2);
Ztotal=(Lpart*sin(teta))+ (Zpart*cos(teta));
tdraww= (((Nscan* Aavg)/(   Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tdraw=tdraww/3600;
tdelayy = (Ztotal/tlayer)*(tdraw_delay + tstg_down + tstg_delay + tstg_up + tsweep + tswp_delay);
tdelay=(tdelayy)/3600;
tbuild= tdraw + tdelay + tstartup;
Nbuilds= (W_vat/(Wpart+gap))* (L_vat/(Lpart+gap));%*(H_vat/(Hpart+gap));
if  batch > Nbuilds
    Nbuild = Nbuilds;
else
    Nbuild = batch;
end
w= (((Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscann = (((Nbuild * Nscan * Aavg)/(Dscan * Vavg * Hatch))*(Ztotal/tlayer))+ (((Nbuild * Nscan_supp * Aavg* supp_factor)/(Dscan* Vavg * Hatch))*(Zsupp/tlayer));
tscan = tscann/3600;
tbuild2= tscan + tdelay + tstartup;
Nppd =(24* Nbuild)/tbuild2;
if batch < Nbuilds
    tiempo= tbuild2;
else
    tiempo= (batch/Nbuilds)*tbuild2;
end
Nppd =(24.* Nbuild)/tiempo;
%por pieza
Cmaterial=((vol_part*Nbuild/1000)*dens*(1+supp_factor)*(MatC/1000));
Cmaintenance =((MaintC*Nmach)/(365*24));
Cmachine=(MachC*Nmach)/(365*24*ul);
Cbuild =Mach_rate/3.2;
Clabor =(tpreproc+tprostproc)*(tech_rate);
%por pieza
COCO = Clabor+Cmaterial+((Cmaintenance+Cmachine+Cbuild)*tiempo);
%TIEMPO
af_SLA3(cac)=tiempo;
bf_SLA3(cac)= COCO/batch;
cf_SLA3(cac)=Nbuilds;

end
axes(handles.axes10);
plot(das,bf_SLA3,'-.b');
hold on
%==========================================================    
case 15 % User selects sinc.    
%==========================================================
     disp('15');
case 16 % User selects sinc.    
global Volume Lvat Wvat Hvat Critic Sani FireR Elect fin Fintemp P_compatib NoParts Vbox_part maxvb 
global net1 net_MCP net_M1 Vect_SLS Vect_M1 SSS bandejas_SLS bandejas_SLM net_DMLS bf bf_SLA

Vbox_part=Lvat.*Wvat.*Hvat;
Max_parts_M1=round(27550997.78/Vbox_part);
NPPL_M1 =round ((250*250)/(Lvat.*Wvat));
Indirect_costs_M1 = 25.28; %por hora
MATERIAL_COST_M1  = 245;   % para el duraform standard por Kg

for cac = 1: (NoParts+500)
VB = Volume * cac; %volume of the build	
N_layers_M1 = round(cac/NPPL_M1);
Material_density_M1 = 0.0000082; %kgr/mm3
mB_M1 = Material_density_M1.*VB; %		
Alpha= 0; %  porcentaje desuso	1	
WB_M1= ((250*250*250)-VB)*Alpha; %   wasted material	45847320	
PR_M1= VB/(250*250*250); %					
Material_used_M1= Material_density_M1*(VB+WB_M1);   %(MB)	 21.96   	
kilos_residuo_M1= WB_M1*Material_density_M1; 
Cost_mB_M1(cac) = MATERIAL_COST_M1*Material_used_M1;

if Vbox_part > (250.*250.*250) %Estas son las dimensiones de la máquina de SLS Vanguard
    %set(handles.CostesM1,'String','Not-possible');        
elseif maxvb> 250
    %set(handles.CostesM1,'String','Slicing');        
elseif (Volume/850400 >1) | (Hvat/235.32 >1) | (Vbox_part/27550997.78 >1)
    %set(handles.CostesM1,'String','parametric');         
else
        if cac == 1
            V_M1 = Volume;
            Vx_M1= Vbox_part;
            H_M1 = Hvat;
        elseif NoParts < Max_parts_M1
            V_M1 = Volume*cac;
            Vx_M1= Vbox_part*cac;
               if N_layers_M1 < 1
                 H_M1 = Hvat;
               else
                 H_M1 = Hvat.*N_layers_M1;
               end    
        else
            V_M1 = 850400;
            Vx_M1= 27550997.78;
            H_M1 = 235.32;
            bandejas_M1 = cac/Max_parts_M1;
        end  
end
%Se dividen los vectores por el valor de la pieza mas grande
a_M1(cac) = (H_M1/235.32);
b_M1(cac) = (V_M1/850400);
c_M1(cac) = (Vx_M1/27550997.78);
end
bandejas_M1 = cac/Max_parts_M1;
Vect_M1 = [a_M1; b_M1; c_M1];
%%SIMULAR LA RED DE SLS
for cac = 1 : (NoParts+500)
das(cac)=cac;    
hm__M1=Vect_M1(:,cac);
SLM_te1= sim(net_M1,hm__M1);

if cac < (27550997.78/Vbox_part)
    Salida_SLM(cac) = SLM_te1;
else
    Salida_SLM(cac) = SLM_te1* bandejas_M1;
end
Salida__SLM(cac) = Salida_SLM(cac)*133.0191728;
TOTAL_BUIDTIME_M1(cac) = Salida__SLM(cac); 
Cost_tB_M1(cac) = Indirect_costs_M1*TOTAL_BUIDTIME_M1(cac);	
SSS_M1(cac)= (Cost_mB_M1(cac)+Cost_tB_M1(cac))/cac;
end
axes(handles.axes10);
plot(das, SSS_M1,':m');
hold on
      
case 17 % User selects sinc.    
global Volume Lvat Wvat Hvat Critic Sani FireR Elect fin Fintemp P_compatib cac Vbox_part maxvb 
global net1 net_MCP net_M1 Vect_SLS Vect_M1 SSS bandejas_SLS bandejas_SLM net_DMLS bf bf_SLA
Vbox_part=Lvat.*Wvat.*Hvat;
Max_parts_MCP=round(27550997.78/Vbox_part);
NPPL_MCP =round ((250*250)/(Lvat.*Wvat));
Indirect_costs_MCP = 29.18; %por hora
MATERIAL_COST_MCP  = 235;   % para el duraform standard por Kg

for cac = 1 : (NoParts+500)
VB = Volume * cac; %volume of the build	
N_layers_MCP = round(cac/NPPL_MCP);
Material_density_MCP = 0.0000082; %kgr/mm3
mB_MCP = Material_density_MCP.*VB; %		
Alpha= 0; %  porcentaje desuso	1	
WB_MCP = ((250*250*250)-VB)*Alpha; %   wasted material	45847320	
PR_MCP = VB/(250*250*250); %	
Material_used_MCP = Material_density_MCP*(VB+WB_MCP);   %(MB)	 21.96   	
kilos_residuo_MCP = WB_MCP*Material_density_MCP; 
Cost_mB_MCP(cac) = MATERIAL_COST_MCP*Material_used_MCP;
				

if Vbox_part > (250.*250.*250) %Estas son las dimensiones de la máquina de SLS Vanguard
    %set(handles.solaes,'String','Not-possible');        
elseif maxvb> 250
    %set(handles.solaes,'String','Slicing');        
elseif (Volume/850400 >1) | (Hvat/235.32 >1) | (Vbox_part/27550997.78 >1)
    %set(handles.solaes,'String','parametric');         
else
        if cac == 1
            V_MCP = Volume;
            Vx_MCP= Vbox_part;
            H_MCP = Hvat;
        elseif cac < Max_parts_MCP
            V_MCP = Volume*cac;
            Vx_MCP= Vbox_part*cac;
               if N_layers_MCP < 1
                 H_MCP = Hvat;
               else
                 H_MCP = Hvat.*N_layers_MCP;
               end    
        else
            V_MCP = 850400;
            Vx_MCP= 27550997.78;
            H_MCP = 235.32;
            bandejas_MCP = cac/Max_parts_MCP;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a_MCP(cac) = (H_MCP/235.32);
b_MCP(cac) = (V_MCP/850400);
c_MCP(cac) = (Vx_MCP/27550997.78);
end
bandejas_MCP = cac/Max_parts_MCP;
Vect_MCP = [a_MCP; b_MCP; c_MCP];

for cac = 1 : (NoParts+500)
das(cac)=cac;    
hm__MCP= Vect_MCP(:,cac);
SLM_te3= sim(net_MCP,hm__MCP);

if cac < (27550997.78/Vbox_part)
    Salida_SLM_3(cac) = SLM_te3;
else
    Salida_SLM_3(cac) = SLM_te3*bandejas_MCP;
end

Salida__SLM_3(cac) = Salida_SLM_3(cac).*133.0191728;
TOTAL_BUIDTIME_MCP(cac) = Salida__SLM_3(cac); 
Cost_tB_MCP(cac) = Indirect_costs_MCP*TOTAL_BUIDTIME_MCP(cac);	
SSS_MCP(cac)= (Cost_mB_MCP(cac)+Cost_tB_MCP(cac))/cac;


end
axes(handles.axes10);
plot(das, SSS_MCP,'--m');
hold on


    
case 18 % User selects sinc.    
     global Volume Lvat Wvat Hvat Critic Sani FireR Elect fin Fintemp P_compatib NoParts net1 Vbox_part maxvb
    Vbox_part=Lvat.*Wvat.*Hvat;
    Max_parts_SLS=round(32749663.84/Vbox_part);
    NPPL_SLS =round ((370.*320)/(Lvat.*Wvat)); %No of parts per layer
    Indirect_costs_SLS = 24.75798547; %por hora
    MATERIAL_COST_SLS  = 54;   % para el duraform standard por Kg

for cac = 1: (NoParts+500)
    VB = Volume * cac; %volume of the build	
    N_layers_SLS = round(cac/NPPL_SLS);
    Material_density = 0.0000006; %kgr/mm3
    mB = Material_density.*VB; %		
    Alpha= 0; %  porcentaje desuso	1	
    WB_SLS = ((370*320*445)-VB)*Alpha;%   wasted material	45847320	
    PR_SLS = VB/(370*320*445); %					
    Material_used_SLS = Material_density*(VB+WB_SLS);   %(MB)	 21.96   	
    kilos_residuo_SLS = WB_SLS*Material_density; 
    Cost_mB_SLS(cac)= MATERIAL_COST_SLS*Material_used_SLS;
if Vbox_part > (370.*320.*445) %Estas son las dimensiones de la máquina de SLS Vanguard
    set(handles.Salida3,'String','Not possible');        
elseif maxvb> 445
    set(handles.Salida3,'String','Consider slicing');        
elseif (Volume/15670700 >1) | (Hvat/282.33 >1) | (Vbox_part/32749663.84 >1)
    set(handles.Salida3,'String','Use parametric');         
else
        if cac == 1
            V_SLS = Volume;
            Vx_SLS= Vbox_part;
            H_SLS = Hvat;
        elseif cac < Max_parts_SLS
            V_SLS = Volume*cac;
            Vx_SLS= Vbox_part*cac;
               if N_layers_SLS < 1
                 H_SLS = Hvat;
               else
                 H_SLS = Hvat.*N_layers_SLS;
               end    
        else
            V_SLS = 15670700;
            Vx_SLS= 32749663.84;
            H_SLS = 282.33;
            bandejas_SLS = cac/Max_parts_SLS;
        end  
end            
%Se dividen los vectores por el valor de la pieza mas grande
a_SLS(cac)= (H_SLS/282.33);
b_SLS(cac)= (V_SLS/15670700);
c_SLS(cac)= (Vx_SLS/32749663.84);
end
hm_SLS = [a_SLS; b_SLS; c_SLS];
%%SIMULAR LA RED DE SLS
for cac = 1 : (NoParts+500)
das(cac)=cac;    
hm__SLS=hm_SLS(:,cac);

te_SLS= sim(net1,hm__SLS);

if cac < (32749663.84/Vbox_part)
    Salida_SLS(cac) = te_SLS;
else
    Salida_SLS(cac) = te_SLS*bandejas_SLS;
end
Salida__SLS(cac)= Salida_SLS(cac)*31.55;
Cost_tB_SLS(cac)= Indirect_costs_SLS*Salida__SLS(cac);
SSS_SLS(cac)= (Cost_mB_SLS(cac)+Cost_tB_SLS(cac))/cac;
end
axes(handles.axes10);
plot(das, SSS_SLS,':k');
hold on
end

end




% hObject    handle to listbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox13


% --- Executes during object creation, after setting all properties.
function listbox13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in CLEAR.
function CLEAR_Callback(hObject, eventdata, handles)
axes(handles.axes10);
cla
% hObject    handle to CLEAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --------------------------------------------------------------------
function Materials_Callback(hObject, eventdata, handles)
set(handles.General_menu,'visible','off');
set(handles.Cost_menu,'visible','off');
set(handles.Materials_menu,'visible','on');
% hObject    handle to Materials (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in checkbox45.
function checkbox45_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox45


% --- Executes on button press in checkbox46.
function checkbox46_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox46


% --- Executes on button press in checkbox47.
function checkbox47_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox47


% --- Executes on button press in checkbox48.
function checkbox48_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox48


% --- Executes on selection change in popupmenu25.
function popupmenu25_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu25 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu25


% --- Executes during object creation, after setting all properties.
function popupmenu25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu26.
function popupmenu26_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu26 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu26


% --- Executes during object creation, after setting all properties.
function popupmenu26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu27.
function popupmenu27_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu27 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu27


% --- Executes during object creation, after setting all properties.
function popupmenu27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu28.
function popupmenu28_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu28 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu28


% --- Executes during object creation, after setting all properties.
function popupmenu28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu29.
function popupmenu29_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu29 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu29


% --- Executes during object creation, after setting all properties.
function popupmenu29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu30.
function popupmenu30_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu30 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu30


% --- Executes during object creation, after setting all properties.
function popupmenu30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox14.
function listbox14_Callback(hObject, eventdata, handles)
% hObject    handle to listbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox14


% --- Executes during object creation, after setting all properties.
function listbox14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox15.
function listbox15_Callback(hObject, eventdata, handles)
% hObject    handle to listbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox15


% --- Executes during object creation, after setting all properties.
function listbox15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
global BO1 BO2 BO3 BO4 BO5 BO6 BO7 mayor menor BOA

setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Coste_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Coste (Dlls/ kg)" FROM MATERIALS');
Coste_low = fetch(Coste_low);
close(Coste_low)
close(conn)
mat_Coste_low=Coste_low.data;
rt=mat_Coste_low(:,2)
rt2=cell2mat(rt);
at=mat_Coste_low(:,1);
for i=1 : numel(rt2)

if  (rt2(i)> menor) && (rt2(i)< mayor)
	Alo(i)=at(i);
else
	Alo(i)={'no'};
end
end

es1=intersect(BO1,BO2);
es2=intersect(BO3,BO4);
A=intersect(es1,es2);
es3=intersect(BO5,BO6);
B=intersect(es3,A);
C=intersect(Alo,BO7);
D=intersect(B,C);
E=intersect(D,BOA);

set(handles.listbox15,'String',E);

% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu31.
function popupmenu31_Callback(hObject, eventdata, handles)

% hObject    handle to popupmenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu31 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu31


% --- Executes during object creation, after setting all properties.
function popupmenu31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in checkbox49.
function checkbox49_Callback(hObject, eventdata, handles)
global BO7
str = get(hObject, 'String');
val = get(hObject,'Value');

%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Electrical_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Electrical" FROM MATERIALS WHERE "Electrical" = ''1''  ');
Electrical_high = fetch(Electrical_high);
close(Electrical_high)
Electrical_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Electrical" FROM MATERIALS');
Electrical_low = fetch(Electrical_low);
close(Electrical_low)

close(conn)

mat_Electrical_high=Electrical_high.data;
hihi=mat_Electrical_high(:,1);
mat_Electrical_low=Electrical_low.data;
lolo=mat_Electrical_low(:,1);
% hObject    handle to checkbox50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject,'Value') == get(hObject,'Min'))
    BO7 = lolo;
else
 % checkbox i not checked-take approriate action
    BO7 = hihi;
end
% hObject    handle to checkbox49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox49


% --- Executes on button press in checkbox50.
function checkbox50_Callback(hObject, eventdata, handles)
global BO6
str = get(hObject, 'String');
val = get(hObject,'Value');

%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Fire_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Fire" FROM MATERIALS WHERE "Fire" = ''1''  ');
Fire_high = fetch(Fire_high);
close(Fire_high)
Fire_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Fire" FROM MATERIALS');
Fire_low = fetch(Fire_low);
close(Fire_low)

close(conn)

mat_Fire_high=Fire_high.data;
hihi=mat_Fire_high(:,1);
mat_Fire_low=Fire_low.data;
lolo=mat_Fire_low(:,1);
% hObject    handle to checkbox50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (get(hObject,'Value') == get(hObject,'Min'))
    BO6 = lolo;
else
 % checkbox i not checked-take approriate action
    BO6 = hihi;
end
% Hint: get(hObject,'Value') returns toggle state of checkbox50


% --- Executes on button press in checkbox51.
function checkbox51_Callback(hObject, eventdata, handles)
global BO5
str = get(hObject, 'String');
val = get(hObject,'Value');

%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Sanitary_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Sanitary" FROM MATERIALS WHERE "Sanitary" = ''1''  ');
Sanitary_high = fetch(Sanitary_high);
close(Sanitary_high)
Sanitary_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Sanitary" FROM MATERIALS');
Sanitary_low = fetch(Sanitary_low);
close(Sanitary_low)

close(conn)

mat_Sanitary_high=Sanitary_high.data;
hihi=mat_Sanitary_high(:,1);
mat_Sanitary_low=Sanitary_low.data;
lolo=mat_Sanitary_low(:,1);
% hObject    handle to checkbox51 (see GCBO)
if (get(hObject,'Value') == get(hObject,'Min'))
    BO5 = lolo;
else
 % checkbox i not checked-take approriate action
    BO5 = hihi;
end

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox51


% --- Executes on button press in checkbox52.
function checkbox52_Callback(hObject, eventdata, handles)
global BO4
str = get(hObject, 'String');
val = get(hObject,'Value');
%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
Critical_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Critical" FROM MATERIALS WHERE "Critical" = ''1''  ');
Critical_high = fetch(Critical_high);
close(Critical_high)
Critical_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Critical" FROM MATERIALS');
Critical_low = fetch(Critical_low);
close(Critical_low)
close(conn)

mat_Critical_high=Critical_high.data;
hihi=mat_Critical_high(:,1);
mat_Critical_low=Critical_low.data;
lolo=mat_Critical_low(:,1);

if (get(hObject,'Value') == get(hObject,'Min'))
    BO4 = lolo;
else
 % checkbox i not checked-take approriate action
    BO4 = hihi;
end

% Hint: get(hObject,'Value') returns toggle state of checkbox52


% --- Executes on selection change in popupmenu32.
function popupmenu32_Callback(hObject, eventdata, handles)
global BO1
str = get(hObject, 'String');
val = get(hObject,'Value');

%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
wear_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Wear resistance" FROM MATERIALS WHERE "Wear resistance" = ''High''  ');
wear_high = fetch(wear_high);
close(wear_high)
wear_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Wear resistance" FROM MATERIALS');
wear_low = fetch(wear_low);
close(wear_low)
wear_avg = exec(conn,'SELECT ALL "Nombre/ fabricante","Wear resistance" FROM MATERIALS WHERE "Wear resistance" = ''Average''  OR "Wear resistance" = ''High''  ');
wear_avg = fetch(wear_avg);
close(wear_avg)
close(conn)

mat_wear_high=wear_high.data;
hihi=mat_wear_high(:,1);
mat_wear_low=wear_low.data;
lolo=mat_wear_low(:,1);
mat_wear_avg=wear_avg.data;
avav=mat_wear_avg(:,1);


% Set current data to the selected data set.
switch str{val};
case '-'
    BO1=lolo;
    %    set(handles.listbox15,'String',lolo);
case 'High' % User selects peaks.
    BO1=hihi;    
    %set(handles.listbox15,'String',hihi);
case 'Average'
    BO1=avav;
    %set(handles.listbox15,'String',avav);
case 'Low' % User selects sinc.
    BO1=lolo;
    %set(handles.listbox15,'String',lolo);
end
% hObject    handle to popupmenu32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = get(hObject,'String') returns popupmenu32 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu32


% --- Executes during object creation, after setting all properties.
function popupmenu32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu33.
function popupmenu33_Callback(hObject, eventdata, handles)
global BO2
str = get(hObject, 'String');
val = get(hObject,'Value');

%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
corr_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Corrosion" FROM MATERIALS WHERE "Corrosion" = ''High''  ');
corr_high = fetch(corr_high);
close(corr_high)
corr_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Corrosion" FROM MATERIALS');
corr_low = fetch(corr_low);
close(corr_low)
corr_avg = exec(conn,'SELECT ALL "Nombre/ fabricante","Corrosion" FROM MATERIALS WHERE "Corrosion" = ''Average''  OR "Corrosion" = ''High''  ');
corr_avg = fetch(corr_avg);
close(corr_avg)
close(conn)

mat_corr_high=corr_high.data;
hihi2=mat_corr_high(:,1);

mat_corr_low=corr_low.data;
lolo2=mat_corr_low(:,1);

mat_corr_avg=corr_avg.data;
avav2=mat_corr_avg(:,1);


% Set current data to the selected data set.
switch str{val};
case '-'
   BO2= lolo2;
    %set(handles.listbox15,'String',lolo2);
case 'High' % User selects peaks.
   BO2= hihi2;
   %set(handles.listbox15,'String',hihi2);
case 'Average'
   BO2= avav2;
%    set(handles.listbox15,'String',avav2);
case 'Low' % User selects sinc.
   BO2= lolo2;
%    set(handles.listbox15,'String',lolo2);
end
% hObject    handle to popupmenu33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu33 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu33


% --- Executes during object creation, after setting all properties.
function popupmenu33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu34.
function popupmenu34_Callback(hObject, eventdata, handles)
global BO3
str = get(hObject, 'String');
val = get(hObject,'Value');
%IMPORTAR DISCRIMINADAMENTE
setdbprefs({'DataReturnFormat','ErrorHandling','NullNumberRead','NullNumberWrite','NullStringRead','NullStringWrite','JDBCDataSourceFile'},{'cellarray','store','NaN','NaN','null','null',''});
conn = database('DATABASE','','');
absor_high = exec(conn,'SELECT ALL "Nombre/ fabricante","Absorptivity" FROM MATERIALS WHERE "Absorptivity" = ''High''  ');
absor_high = fetch(absor_high);
close(absor_high)
absor_low= exec(conn,'SELECT ALL "Nombre/ fabricante","Absorptivity" FROM MATERIALS');
absor_low = fetch(absor_low);
close(absor_low)
absor_avg = exec(conn,'SELECT ALL "Nombre/ fabricante","Absorptivity" FROM MATERIALS WHERE "Absorptivity" = ''Average''  OR "Absorptivity" = ''High''  ');
absor_avg = fetch(absor_avg);
close(absor_avg)
close(conn)

mat_absor_high=absor_high.data;
hihi=mat_absor_high(:,1);
mat_absor_low=absor_low.data;
lolo=mat_absor_low(:,1);
mat_absor_avg=absor_avg.data;
avav=mat_absor_avg(:,1);

% Set current data to the selected data set.
switch str{val};
case '-'
    BO3=lolo;
    %    set(handles.listbox15,'String',lolo);
case 'Low' % User selects peaks.
    BO3=lolo;    
    %set(handles.listbox15,'String',hihi);
case 'Average'
    BO3=avav;
    %set(handles.listbox15,'String',avav);
case 'High' % User selects sinc.
    BO3=hihi;
    %set(handles.listbox15,'String',lolo);
end

% hObject    handle to popupmenu34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu34 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu34


% --- Executes during object creation, after setting all properties.
function popupmenu34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function General_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to General_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function edit26_Callback(hObject, eventdata, handles)
global menor
menor = str2double(get(hObject, 'String'));
if isnan(menor)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.menor = menor;
guidata(hObject,handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
global mayor
mayor = str2double(get(hObject, 'String'));
if isnan(mayor)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
handles.metricdata.mayor = mayor;
guidata(hObject,handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)

imagen = importdata('pug.jpg');% hObject    handle to pushbutton13 (see GCBO)
axes(handles.axes13);
image(imagen);
axis off
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on selection change in listbox17.
function listbox17_Callback(hObject, eventdata, handles)
str = get(hObject, 'String');
val = get(hObject,'Value');



switch str{val};
case '- Cost'
imagen = importdata('1.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Elongation to break (%)'
imagen = importdata('2.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Heat Deflection T ·C'
imagen = importdata('3.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- CTE mm/mm/Cx10 (6)'
imagen = importdata('4.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Impact (Izod Notched Rating) J/cr'
imagen = importdata('5.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa)  / Material'
imagen = importdata('6.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Strenght (MPa)/ Material'
imagen = importdata('7.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa) / Flexural Strenght (MPa)'
imagen = importdata('8.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa) / Elongation to Break %'
imagen = importdata('9.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Heat Deflection T 0C  / CTE mm/mm/Cx10'
imagen = importdata('10.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa) / Impact (Izod Notched Rating) J/cr'
imagen = importdata('11.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
end
% hObject    handle to listbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = get(hObject,'String') returns listbox17 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox17


% --- Executes during object creation, after setting all properties.
function listbox17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on selection change in popupmenu37.
function popupmenu37_Callback(hObject, eventdata, handles)
str = get(hObject, 'String');
val = get(hObject,'Value');



switch str{val};
case '- Cost'
imagen = importdata('1.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Elongation to break (%)'
imagen = importdata('2.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Heat Deflection T ·C'
imagen = importdata('3.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- CTE mm/mm/Cx10 (6)'
imagen = importdata('4.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Impact (Izod Notched Rating) J/cr'
imagen = importdata('5.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa)  / Material'
imagen = importdata('6.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Strenght (MPa)/ Material'
imagen = importdata('7.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa) / Flexural Strenght (MPa)'
imagen = importdata('8.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa) / Elongation to Break %'
imagen = importdata('9.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Heat Deflection T 0C  / CTE mm/mm/Cx10'
imagen = importdata('10.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
case '- Flexural Modulus (MPa) / Impact (Izod Notched Rating) J/cr'
imagen = importdata('11.jpg'); 
axes(handles.axes13);
image(imagen);
axis off    
end
% hObject    handle to popupmenu37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu37 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu37


% --- Executes during object creation, after setting all properties.
function popupmenu37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


