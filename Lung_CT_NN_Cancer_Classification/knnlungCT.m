clc;
clear all;
load('Input.mat');
load('Target.mat');
load('sampleTest.mat');
load('d.mat');
sample=sampleTest;
training = Input;
group = Target;
% desired = d;
c =knnclassify(sample,training,group,10);
count=0;
for i=1:259
    if d(i)==c(i)
        count =count+1;
    end
end
disp('correct=');
disp(count);

acc=(count/259)*100;

disp('acc');
disp(acc)