clc;
clear all;
close all;
load('I.mat');
load('T.mat');
load('S.mat');
load('des.mat');
sample=S;
training = I;
group = T;
% desired = d;
c =knnclassify(sample,training,group,4);
count=0;
for i=1:170
    if des(i)==c(i)
        count =count+1;
    end
end
disp('correct=');
disp(count);

acc=(count/170)*100;

disp('acc');
disp(acc)