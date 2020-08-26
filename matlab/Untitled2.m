clear;
close;
direct = [1,0;
          -1,0;
          0,1;
          0,-1]
code =[1;
        -1;
        5;
        -5];
n = 100000; 
num = 0;
point = [0,0];
po = 0;
num_p=0;

for i= 1:n
    point = [0,0];
    po = 0;
   % for j = 1:4
        t = ceil(4*rand(1,4));     
        point = sum(direct(t,:),1) + point;
        
        po = po+sum(code(t),1);
    %end
    if(point == [0,0])
        num = num + 1;
    end
    if(po == 0)
        num_p = num_p + 1;
    end
end
pos = num/n;
pos_p = num_p/n;