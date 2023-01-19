clc;
clear all;
load('Testdata.mat');
load('TargetData.mat');
inputs = Testdata;
targets=TargetData;
numHiddenNeurons =1;  % Adjust as desired
net = newpnn(inputs,targets,numHiddenNeurons);
% [net,tr] = train(net,inputs,targets);
outputs= sim(net,inputs);

plotregression(targets,outputs)
plotconfusion(targets,outputs)
