clear all;clc;
InPath = 'C:\Users\��ά��\Desktop\SRTP\';
name = 'GDCSM_Argo_201003.nc';
[salt,Lat,Lon] = read_x_nc(InPath,name,'salt');
salt=salt(:,:,1,1)
salt=reshape(salt,172,121)
% ind1=find(Lon>100,1);
% ind2=find(Lon>130,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<0,1)
% ind4 = find(Lat<42,1)
% lat1 = Lat(ind4:ind3)
% draw_map(lat1,lon1,bbp_443(ind1:ind2,ind4:ind3),'bbp\_443\_gsm')
draw_map(Lat,Lon,salt,'salt')