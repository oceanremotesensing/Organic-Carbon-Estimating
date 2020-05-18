function draw_map_SCS(Lat, Lon, x)
%绘制南海水域POC含量分布图
%输入参数：经度、纬度、数据
h = pcolor(Lon, Lat, x');
mcolor = load('mcolor.mat');
mcolor = mcolor.mcolor;
colormap(mcolor) 
set(h, 'LineStyle', 'none'); 

%colorbar
h = colorbar('Ticks', [0 100 200 300 400 500 600 700 800]);
set(get(h, 'title'), 'string', 'mg/m^3');

box on
axis([109,122,3,24]); %设置坐标范围，此范围为南海的大致位置
set(gca, 'XTick', [109 115 121], 'YTick', [3 10 17 24]); %设定坐标宽度

fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('Latitude (°N)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Longitude (°E)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
set(gcf, 'unit', 'centimeters', 'position', [1 5 20 15]); %前两项为距离屏幕左下角的距离，x方向和y方向，后两项为图片的大小
set(gcf, 'color', 'white');