%%算法改进了批量导入已经批量导出问题
for num1=51:52  %%%%%%%批量导入mat文件%%%%%%%%%%%%%%%%%%%%%%%
eval(['A'  '= importdata(''',num2str(num1),'.txt'')']); %num1表示读入的mat文件数
A=round(A);%对A矩阵所有元素四舍五入取整数
n = 19; %定义步长数，10表示取五个点的自避免随机行走数据，间隔取值
m=20; %表示矩阵的维度 40*40
for num2= 1:9000 %num2表示生成的csv文件的数量
       i = 1;  %用来判断是否重复走过某点
%      dropout=0;%这里表示随机行走十个点，只间隔取5个点
while(i ~= n) %i从0到n
    X = randi([4 37]); Y = randi([4 37]); %40*40的矩阵取整范围为1~40
    lattice = zeros(2*m , 2*m);%lattice表示生成的矩阵，zeros表示生成的0矩阵，1的位置表示随机点的生成位置
    matric = lattice;%matric为与能量沉积相乘的矩阵，步长
    path = [X Y]; %表示生成点的起始位置；X,Y的坐标放入
    lattice(X, Y) = 1;%表示生成的第一个点对应矩阵位置赋值为1******很重要
    for i = 1:n 
         U = rand; %在（0,1）之间随机生成一个数
         if U < 1/2 %随机选择下一点的X,Y值(U < 1/4)表示
             X = X + 2 * (U < 1/4) - 1;
         else
             Y = Y + 2 * (U < 3/4) - 1;
         end
         path_addition = [X Y]; %表示生成点的位置坐标记录
         path = [path; path_addition]; %记录随机行走各点的位置信息（后面画图使用）,2列
         lattice_x = X;  %表示在矩阵中的对应行
         lattice_y = Y;  %表示在矩阵中的对应列
         if(X < 1||X > 40||Y < 1||Y > 40||((17<=X&&X<=40)&&(20<=Y&&Y<=21))) %如果不在矩阵内则重新选择,2m墙内不选择
             i = 1;
             break;
         else
             if lattice(lattice_x, lattice_y) == 1 %lattice矩阵相应位置是否已经走过i = 1;%表示已经走过了该点,重新选择
             i = 1;
             break;
             else
                 lattice(lattice_x, lattice_y) = 1;%将lattice矩阵相应位置赋值为1
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
     eval(['csvwrite(''',num2str(num1),'_',num2str(num2),'.csv'',','B',')'])% 批量生成CSV文件
end
end