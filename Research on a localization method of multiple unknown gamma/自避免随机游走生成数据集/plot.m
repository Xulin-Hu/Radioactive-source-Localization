% figure('name', 'plot_matA1')
% imagesc(MeV);
% colorbar;
% clear all
% figure('name', 'plot_matA1')
% A=Mev;
% imagesc(A); %��ͼ
% colorbar;
%load ��������.mat;
figure(1)
%B=A;%A��ʾ������������MeV
imagesc(A);
colormap(hot);
colorbar;
% axis off
%set(gca,'YDir','normal');
% set(gca,'XTickLabel',{' 3.5 ','7','10.5','14','17.5','21','24.5','28','31.5','35'});
%set(gca,'YTickLabel',{'40','35','30','25','20','15','10','5','0'});
%set(gca,'xtick',(0:1:10));
title('���������ֲ�(MeV��'); %���ñ���
xlabel('x (m)'), ylabel('y (m)');
%save('��������.mat','A')

% figure(2)
% %���ռ���=��������/������Gy=J/kg��
% C=A*1.6021892*1e-13*60/(1.29*0.4);%�������ܶ�Ϊ1.29ǧ��/������,0.35�����ף�1MeV=1.6021892*10^-13 J
% imagesc(C);
% colormap(jet);
% colorbar;
% % axis off
% set(gca,'YDir','normal');
% set(gca,'XTickLabel',{' 3.5 ','7','10.5','14','17.5','21','24.5','28','31.5','35'});
% set(gca,'YTickLabel',{' 3.5 ','7','10.5','14','17.5','21','24.5','28','31.5','35'});
% %set(gca,'xtick',(0:5:35));
% title('�ռ�����ֲ�(Gy/h��'); %���ñ���
% xlabel('x (m)'), ylabel('y (m)');

