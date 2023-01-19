clc;
clear all;
close all;
load('Input.mat');
load('Target.mat');
inputs = Input';
targets=Target';
numHiddenNeurons =30;  % Adjust as desired
net = newpr(inputs,targets,numHiddenNeurons);
% net.layers=2;
% Train and Apply Network

net = configure(net,inputs,targets);
[net,tr] = train(net,inputs,targets);
outputs = sim(net,inputs);

% plotfit(net,inputs,targets)
% plotregression(targets,outputs)
plotperf(tr)
plotconfusion(targets,outputs)

% Plottrainstate(tr);
plotperform(tr)

load('sampleTest.mat');
sampleTests=sampleTest';
TestOutputs =round(net(sampleTests));
% TestOutputs =round(TestOutputs,2,'significant');
load('d.mat');
desired = d';

count=0;
for i=1:259
    if desired(i)==TestOutputs(i)
        count =count+1;
    end
end
disp('correct=');
disp(count);

acc=(count/259)*100;

disp('acc');
disp(acc)
