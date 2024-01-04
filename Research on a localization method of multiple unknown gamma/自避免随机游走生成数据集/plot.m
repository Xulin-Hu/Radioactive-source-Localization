% figure('name', 'plot_matA1')
% imagesc(MeV);
% colorbar;
% clear all
% figure('name', 'plot_matA1')
% A=Mev;
% imagesc(A); %画图
% colorbar;
%load 能量沉积.mat;
figure(1)
%B=A;%A表示所得能量沉积MeV
imagesc(A);
colormap(hot);
colorbar;
% axis off
%set(gca,'YDir','normal');
% set(gca,'XTickLabel',{' 3.5 ','7','10.5','14','17.5','21','24.5','28','31.5','35'});
%set(gca,'YTickLabel',{'40','35','30','25','20','15','10','5','0'});
%set(gca,'xtick',(0:1:10));
title('能量沉积分布(MeV）'); %设置标题
xlabel('x (m)'), ylabel('y (m)');
%save('能量沉积.mat','A')

% figure(2)
% %吸收剂量=能量沉积/质量（Gy=J/kg）
% C=A*1.6021892*1e-13*60/(1.29*0.4);%空气的密度为1.29千克/立方米,0.35立方米，1MeV=1.6021892*10^-13 J
% imagesc(C);
% colormap(jet);
% colorbar;
% % axis off
% set(gca,'YDir','normal');
% set(gca,'XTickLabel',{' 3.5 ','7','10.5','14','17.5','21','24.5','28','31.5','35'});
% set(gca,'YTickLabel',{' 3.5 ','7','10.5','14','17.5','21','24.5','28','31.5','35'});
% %set(gca,'xtick',(0:5:35));
% title('空间剂量分布(Gy/h）'); %设置标题
% xlabel('x (m)'), ylabel('y (m)');

