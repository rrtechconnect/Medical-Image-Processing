net=newff(minmax(P), [5,1], {'tansig','purelin'},'traingd');

net.trainParam.show = 50; % The result is shown at every 50th iteration (epoch)
net.trainParam.lr = 0.05; % Learning rate used in some gradient schemes
net.trainParam.epochs =1000; % Max number of iterations
net.trainParam.goal = 1e-3; % Error tolerance; stopping criterion

%Train network
net1 = train(net,P',T'); % Iterates gradient type of loop

% % Simulate how good a result is achieved: Input is the same input vector P.
% % Output is the output of the neural network, which should be compared with output data
% a= sim(net1,P);
% % Plot result and compare
% plot(P,a-T, P,T); grid;

