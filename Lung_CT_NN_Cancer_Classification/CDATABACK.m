clc;
clear all;
close all;
load('I.mat');
load('T.mat');
inputs = I';
targets=T';
numHiddenNeurons =30;  % Adjust as desired
net = newpr(inputs,targets,numHiddenNeurons);
%TRAINLM, TRAINBFG, TRAINRP, TRAINGD
% net.layers=2;
% Train and Apply Network

net = configure(net,inputs,targets);
[net,tr] = trainoss(net,inputs,targets);
outputs = sim(net,inputs);
%traingdm, traingda, traingdx, trainlm.
% plotfit(net,inputs,targets)
plotregression(targets,outputs)
plotperf(tr)
plotconfusion(targets,outputs)

% Plottrainstate(tr);
% plotperform(tr)

load('S.mat');
sampleTests=S;
TestOutputs =round((net(sampleTests'))');
% TestOutputs =round(TestOutputs,2,'significant');
load('des.mat');
% desired = des;

count=0;
for i=1:170
    if des(i)==TestOutputs(i)
        count =count+1;
    end
end
disp('correct=');
disp(count)

acc=(count/170)*100;

disp('acc');
disp(acc)
