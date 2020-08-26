clear
close
n = 1e+4;
num = 0;
a = [];
%figure(1);
for i=1:n
   x = rand(1,1);
   y = rand(1,1);
   z = rand(1,1);
   
   if(x+y > z && x+z > y && y+z > x)
      num = num + 1; 
      a = [a;x,y,z];
   else
      %plot3(x,y,z,'bx');
   end
end
pos = num/n;
plot3(a(:,1),a(:,2),a(:,3),'ko', "markedgesize", .5);
pos

