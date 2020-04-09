d=dir('Sprecher*');
for i=1:length(d)
    cd(d(i).name)
    dd = dir('*.wav');
    num_sen(i) = length(dd);
    cd ..
end
sum(num_sen)