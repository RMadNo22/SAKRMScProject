close all
clear all
clear

hres = 3840;
vres = 2160;

ohres = 1024;

pic = zeros(vres, hres, 3);

max_val = 65535;

x = 1:hres;
y = 1:vres;
h10 = floor(x*ohres/hres)*(floor(65535/ohres));
h8 = floor(x*(ohres/4)/hres)*(floor(65535/(ohres/4)));
%h10 = floor(x*max_val/(hres));
%h8 = floor(floor(x/4*max_val)/(hres));
zup = ones(vres/2,1)*h10;
zlow = ones(vres/2,1)*h8;
p = uint16([zup; zlow]);
image(p);colormap(gray(256));

pic(:,:,1) = p;
pic(:,:,2) = p;
pic(:,:,3) = p;

for f = 1 : 99,
    
   name = ['C:\Users\Sahil\Desktop\Research Project\Data\Testing.4k.', sprintf('%02d',f), '.tif']
   imwrite(uint16(pic), name); 
    
end;