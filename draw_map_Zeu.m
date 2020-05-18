function draw_map(Lat, Lon, x)
%绘制东海水域真光层深度分布图
%输入参数：经度、纬度、数据
h = pcolor(Lon, Lat, x');
mcolor = load('mcolor.mat');
mcolor = mcolor.mcolor;
colormap(mcolor) 
set(h, 'LineStyle', 'none'); 

%colorbar
h = colorbar('Ticks', [0 20 40 60 80 100 120 140]);
set(get(h, 'title'), 'string', 'm');

box on
axis([117,131,23,34]); %设置坐标范围，此范围为东海的大致位置
set(gca, 'XTick', [118 122 126 130], 'YTick', [24 27 30 33]); %设定坐标宽度

fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('Latitude (°N)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Longitude (°E)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
set(gcf, 'unit', 'centimeters', 'position', [1 5 20 15]); %前两项为距离屏幕左下角的距离，x方向和y方向，后两项为图片的大小
set(gcf, 'color', 'white');