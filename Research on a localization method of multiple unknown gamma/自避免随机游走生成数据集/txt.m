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
%   saveas(h1, ['E:\�˷�����\�����ͼ��salam��ͼ�ں��о�\��ɢ���ݻ��Ʒ���ֲ�ͼ\', num2str(num1), '.jpg']);
% end
% A=importdata('1000.txt');
%  eval('A','=','importdata ',num2str(num1) ,'.txt']); %num1��ʾ�����mat�ļ���
% set(gca,'YDir','normal');        %��y�᷽������Ϊ��ͨ(���µ��ϵ���)
imagesc(B);
% colormap(hot);