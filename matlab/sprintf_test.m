clear all
data = [1.1 3.45; 2 1.2];
%data_str = string(data);
%round to 2 decimal places

for i = 1:numel(data)
    data_str = sprintf('%.2f',data(i))
end