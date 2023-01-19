%
clc;
clear all;
close all;
load('Input.mat');
load('Target.mat');
load('Target.mat');
load('sampleTest.mat');
inputs = Input';
targets=Target';
sampleTests=sampleTest';
net = feedforwardnet(10);
[net,tr] = train(net,Input',Target');
view(net)
Outputs =round(net(sampleTest')');
perf = perform(net,Outputs,Target');

plotperf(tr)
plotconfusion(targets,Outputs)

% Plottrainstate(tr);
plotperform(tr)
load('d.mat');
desired = d';

count=0;
for i=1:259
    if desired(i)==Outputs(i)
        count =count+1;
    end
end
disp('correct=');
disp(count);

acc=(count/259)*100;

disp('acc');
disp(acc)


% plotfit(net,inputs,targets)
% plotregression(targets',Outputs)
% plotperf(tr)
% plotconfusion(targets,Outputs)

% net=fitnet(10,'trainlm');
% net.divideParam.trainRatio=.7;
% net.divideParam.valRatio=.7;
% net.divideParam.testRatio=.15;
% [net, pr] = train(net,Input',Target');
% output = net(testing')';
% 
% net = feedforwardnet;
% net = configure(net,Input',Target');
% [net,tr] = train(net,Input',Target');


% 
% [x,t] = simplefit_dataset;
% net = fitnet(10);
% net = train(net,x,t);
% view(net)
% y = net(x);
% perf = perform(net,y,t)
%    inputs = input';
%   targets = output';
% % Create a Fitting Network
% hiddenLayerSize = [31,31];
% net = fitnet(hiddenLayerSize);
% net.layers{1}.transferFcn = 'logsig';
% net.layers{2}.transferFcn = 'logsig';
% net.layers{3}.transferFcn = 'purelin';
% % net.layers{4}.transferFcn = 'purelin'
% % Set up Division of Data for Training, Validation, Testing
% net.divideParam.trainRatio = 70/100;
% net.divideParam.valRatio = 15/100;
% net.divideParam.testRatio = 15/100;
% % Train the Network
% [net,tr] = train(net,inputs,targets);
% % Test the Network
% outputs = net(inputs);
% errors = gsubtract(outputs,targets);
% performance = perform(net,targets,outputs)
% % View the Network
% view(net)
% % Uncomment the following lines to enable various plots.
% % figure, plotperform(tr)
% % figure, plottrainstate(tr)
% % figure, plotfit(targets,outputs)
% % figure, plotregression(targets,outputs)
% % figure, ploterrhist(errors)