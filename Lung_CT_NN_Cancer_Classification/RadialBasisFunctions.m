clc;
clear all;
close all;
load('Testdata.mat');
load('TargetData.mat');
inputs = Testdata;
targets=TargetData;
numHiddenNeurons = 2;  % Adjust as desired
%net =newrbe(inputs,targets,numHiddenNeurons);
%[net,tr] = train(net,inputs,targets);
net =newrb(inputs,targets,numHiddenNeurons);
% [net,tr] = train(net,inputs,targets);

outputs= sim(net,inputs);

plotfit(net,inputs,targets)
plotregression(targets,outputs)
% plotperf(tr)
plotconfusion(targets,outputs)
% Plottrainstate(tr);
% plotperform(tr)

