%%�㷨�Ľ������������Ѿ�������������
for num1=51:52  %%%%%%%��������mat�ļ�%%%%%%%%%%%%%%%%%%%%%%%
eval(['A'  '= importdata(''',num2str(num1),'.txt'')']); %num1��ʾ�����mat�ļ���
A=round(A);%��A��������Ԫ����������ȡ����
n = 19; %���岽������10��ʾȡ�������Ա�������������ݣ����ȡֵ
m=20; %��ʾ�����ά�� 40*40
for num2= 1:9000 %num2��ʾ���ɵ�csv�ļ�������
       i = 1;  %�����ж��Ƿ��ظ��߹�ĳ��
%      dropout=0;%�����ʾ�������ʮ���㣬ֻ���ȡ5����
while(i ~= n) %i��0��n
    X = randi([4 37]); Y = randi([4 37]); %40*40�ľ���ȡ����ΧΪ1~40
    lattice = zeros(2*m , 2*m);%lattice��ʾ���ɵľ���zeros��ʾ���ɵ�0����1��λ�ñ�ʾ����������λ��
    matric = lattice;%matricΪ������������˵ľ��󣬲���
    path = [X Y]; %��ʾ���ɵ����ʼλ�ã�X,Y���������
    lattice(X, Y) = 1;%��ʾ���ɵĵ�һ�����Ӧ����λ�ø�ֵΪ1******����Ҫ
    for i = 1:n 
         U = rand; %�ڣ�0,1��֮���������һ����
         if U < 1/2 %���ѡ����һ���X,Yֵ(U < 1/4)��ʾ
             X = X + 2 * (U < 1/4) - 1;
         else
             Y = Y + 2 * (U < 3/4) - 1;
         end
         path_addition = [X Y]; %��ʾ���ɵ��λ�������¼
         path = [path; path_addition]; %��¼������߸����λ����Ϣ�����滭ͼʹ�ã�,2��
         lattice_x = X;  %��ʾ�ھ����еĶ�Ӧ��
         lattice_y = Y;  %��ʾ�ھ����еĶ�Ӧ��
         if(X < 1||X > 40||Y < 1||Y > 40||((17<=X&&X<=40)&&(20<=Y&&Y<=21))) %������ھ�����������ѡ��,2mǽ�ڲ�ѡ��
             i = 1;
             break;
         else
             if lattice(lattice_x, lattice_y) == 1 %lattice������Ӧλ���Ƿ��Ѿ��߹�i = 1;%��ʾ�Ѿ��߹��˸õ�,����ѡ��
             i = 1;
             break;
             else
                 lattice(lattice_x, lattice_y) = 1;%��lattice������Ӧλ�ø�ֵΪ1
             end
         end
     end
end
     matric(path(1,1),path(1,2)) = 1 ;
     matric(path(3,1),path(3,2)) = 1 ;
     matric(path(5,1),path(5,2)) = 1 ;
     matric(path(7,1),path(7,2)) = 1 ;
     matric(path(9,1),path(9,2)) = 1 ;
     matric(path(11,1),path(11,2)) = 1 ;
     matric(path(13,1),path(13,2)) = 1 ;
     matric(path(15,1),path(15,2)) = 1 ;
     matric(path(17,1),path(17,2)) = 1 ;
     matric(path(19,1),path(19,2)) = 1 ;
     B=A.*matric;
     eval(['csvwrite(''',num2str(num1),'_',num2str(num2),'.csv'',','B',')'])% ��������CSV�ļ�
end
end