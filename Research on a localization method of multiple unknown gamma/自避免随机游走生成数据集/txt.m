% for num1=1:1
%   eval(['A'  '= importdata(''',num2str(num1),'.mat'')']);
%   imagesc(A);
%   colormap(hot);
%   colorbar;
%   set(gca,'xtick',0:4:40)
%   set(gca,'ytick',0:4:40)
%   set(gca,'XTickLabel',{'10','1','2','3','4','5','6','7','8','9'});
%   set(gca,'YTickLabel',{'10','1','2','3','4','5','6','7','8','9'});
%   xlabel('x (m)'), ylabel('y (m)');
%   h=colorbar;
%   set(get(h,'Title'),'string','MeV');
%   h1=gcf ;
%   saveas(h1, ['E:\核辐射检测\辐射地图与salam建图融合研究\离散数据绘制辐射分布图\', num2str(num1), '.jpg']);
% end
% A=importdata('1000.txt');
%  eval('A','=','importdata ',num2str(num1) ,'.txt']); %num1表示读入的mat文件数
% set(gca,'YDir','normal');        %将y轴方向设置为普通(从下到上递增)
imagesc(B);
% colormap(hot);