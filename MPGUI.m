function varargout = MPGUI(varargin)
% MPGUI MATLAB code for MPGUI.fig
%      MPGUI, by itself, creates a new MPGUI or raises the existing
%      singleton*.
%
%      H = MPGUI returns the handle to a new MPGUI or the handle to
%      the existing singleton*.
%
%      MPGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MPGUI.M with the given input arguments.
%
%      MPGUI('Property','Value',...) creates a new MPGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MPGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MPGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MPGUI

% Last Modified by GUIDE v2.5 12-Feb-2020 01:34:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MPGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MPGUI_OutputFcn, ...
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


% --- Executes just before MPGUI is made visible.
function MPGUI_OpeningFcn(hObject, eventdata, handles, varargin)
clc;
cla reset;
% Update handles structure

 



% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MPGUI (see VARARGIN)

% Choose default command line output for MPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MPGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MPGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in BLUE_BAND.
function BLUE_BAND_Callback(hObject, eventdata, handles)

IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;

switch get(handles.GREEN_BAND,'Value') 
    
  case 2
    cc(:,:,3)= band2(:,:,1);
  case 3
    cc(:,:,3)= band3(:,:,1);
  case 4
    cc(:,:,3)= band4(:,:,1);
  case 5
    cc(:,:,3)= band5(:,:,1);  
  otherwise
end 
handles.cc=cc;
% Choose default command line output for MPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% hObject    handle to BLUE_BAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns BLUE_BAND contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BLUE_BAND


% --- Executes during object creation, after setting all properties.
function BLUE_BAND_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BLUE_BAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RED.
function RED_Callback(hObject, eventdata, handles)


IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;

switch get(handles.RED,'Value') 
    
  case 2
    cc(:,:,1)= band2(:,:,1);
  case 3
    cc(:,:,1)= band3(:,:,1);
  case 4
    cc(:,:,1)= band4(:,:,1);
  case 5
    cc(:,:,1)= band5(:,:,1);  
  otherwise
end 
handles.cc=cc;
% Choose default command line output for MPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% hObject    handle to RED (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RED contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RED


% --- Executes during object creation, after setting all properties.
function RED_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RED (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in GREEN_BAND.
function GREEN_BAND_Callback(hObject, eventdata, handles)

IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;

switch get(handles.GREEN_BAND,'Value') 
    
  case 2
    cc(:,:,2)= band2(:,:,1);
  case 3
    cc(:,:,2)= band3(:,:,1);
  case 4
    cc(:,:,2)= band4(:,:,1);
  case 5
    cc(:,:,2)= band5(:,:,1);  
  otherwise
end 
handles.cc=cc;
% Choose default command line output for MPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% hObject    handle to GREEN_BAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns GREEN_BAND contents as cell array
%        contents{get(hObject,'Value')} returns selected item from GREEN_BAND


% --- Executes during object creation, after setting all properties.
function GREEN_BAND_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GREEN_BAND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in UPLOAD_FILE.
function UPLOAD_FILE_Callback(hObject, eventdata, handles)
% hObject    handle to UPLOAD_FILE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[IMAGE,path] = uigetfile('.L-3');
handles.IMAGE=IMAGE
guidata(hObject,handles)

if isequal(handles.IMAGE,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,IMAGE)]);
end



fileID = fopen(IMAGE);
A = fread(fileID);
a=573;
b=6929;
I1=zeros(5976,6357);
cc=zeros(5976,6357,3);
for i=1:1:5976
I1(i,:)=A(a:b);
a=a+25920;
b=b+25920;
end
band2=uint8(I1);
d=7052;
e=13408;
I2=zeros(5976,6357);
 for i=1:1:5976
   I2(i,:)=A(d:e);
   d=d+25920;
   e=e+25920;
 end
 band3=uint8(I2);
 g=7052+6479;
h=13408+6479;
I3=zeros(5976,6357);
 for i=1:1:5976
   I3(i,:)=A(g:h);
   g=g+25920;
   h=h+25920;
 end
 band4=uint8(I3);
 j=7052+6479+6479;
k=13408+6479+6479;
I4=zeros(5976,6357);
 for i=1:1:5976
   I4(i,:)=A(j:k);
   j=j+25920;
   k=k+25920;
 end
 band5=uint8(I4);
 cc(:,:,1)= band3(:,:,1);
 cc(:,:,2)= band5(:,:,1);
cc(:,:,3)= band4(:,:,1); 
imshow(uint8(cc))



handles.band2=band2; %Example vector data
handles.band3=band3;
handles.band4=band4;
handles.band5=band5;
handles.cc=cc;
% Choose default command line output for MPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in SAVE_AS.
function SAVE_AS_Callback(hObject, eventdata, handles)

% hObject    handle to SAVE_AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in CROP.
function CROP_Callback(hObject, eventdata, handles)
IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;
 x = inputdlg({'X_min','X_max','Y_min','Y_max'},...
             'Crop', [1 20; 1 20; 1 20; 1 20]);
  X_min=str2num(x{1});   
  X_max=str2num(x{2}); 
  Y_min=str2num(x{3}); 
  Y_max=str2num(x{4}); 
         
         I2 = imcrop(cc,[X_min Y_min X_max Y_max]);
         imshow(uint8(I2))

% hObject    handle to CROP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in FILE_FORMAT.
function FILE_FORMAT_Callback(hObject, eventdata, handles)
% hObject    handle to FILE_FORMAT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns FILE_FORMAT contents as cell array
%        contents{get(hObject,'Value')} returns selected item from FILE_FORMAT


% --- Executes during object creation, after setting all properties.
function FILE_FORMAT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FILE_FORMAT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SHOW_IMAGE.
function SHOW_IMAGE_Callback(hObject, eventdata, handles)

IMAGE=handles.IMAGE
band2=handles.band2;    %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;

imshow(uint8(cc))
handles.cc=cc;
% Choose default command line output for MPGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% hObject    handle to SHOW_IMAGE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in FCC234.
function FCC234_Callback(hObject, eventdata, handles)
IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;

% hObject    handle to FCC234 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cc(:,:,1)= band2(:,:,1);
cc(:,:,2)= band3(:,:,1);
cc(:,:,3)= band4(:,:,1); 
imshow(uint8(cc))























% --- Executes on button press in SAVE_PNG.
function SAVE_PNG_Callback(hObject, eventdata, handles)
IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;
saveas(cc,'output.png');
% hObject    handle to SAVE_PNG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SAVE_JPEG.
function SAVE_JPEG_Callback(hObject, eventdata, handles)
IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;
saveas(cc,'output.jpeg');
% hObject    handle to SAVE_JPEG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SAVE_BMP.
function SAVE_BMP_Callback(hObject, eventdata, handles)
% hObject    handle to SAVE_BMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SAVE_TIFF.
function SAVE_TIFF_Callback(hObject, eventdata, handles)
% hObject    handle to SAVE_TIFF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Grey.
function Grey_Callback(hObject, eventdata, handles)
IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;
 cc(:,:,1)= band3(:,:,1);
 cc(:,:,2)= band3(:,:,1);
cc(:,:,3)= band3(:,:,1); 
imshow(uint8(cc))
% hObject    handle to Grey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LUT.
function LUT_Callback(hObject, eventdata, handles)
IMAGE=handles.IMAGE
band2=handles.band2; %Example vector data
band3=handles.band3;
band4=handles.band4;
band5=handles.band5;
cc=handles.cc;
 x = inputdlg({'DN_min','DN_max'},...
             'LUT', [1 20; 1 20;]);
  DN_min=str2num(x{1});   
  DN_max=str2num(x{2}); 
  
  y = ((DN_max - DN_min)/255)*cc + DN_min;
  imshow(uint8(y))
 
% hObject    handle to LUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in HELP.
function HELP_Callback(hObject, eventdata, handles)
figure;
% hObject    handle to HELP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
