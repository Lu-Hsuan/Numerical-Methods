posi = [1 11 5;2 6 7; 3 13 9;12 7 16;14 3 25;19 18 22;23 13 29;24 4 28]; 
heigh = zeros(size(posi,1),31)
for index = 1:size(posi,1)
   heigh(index, posi(index,1)+1:posi(index,3)) = posi(index,2)
end
h_est = max(heigh,[],1);
stairs(0:30,h_est);
set(gca,'xtick',0:2:30)
ylim([0,20])