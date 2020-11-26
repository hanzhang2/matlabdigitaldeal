clear;
fs = 100000;
t = 0:1/fs:0.003;
f1 = 10000;
f2 = 20000;
signal1 = sin(2*pi*f1*t);
signal2 = sin(2*pi*f2*t);
y= signal1+signal2;
plot(y);
hold on;
plot(signal1,'r')
legend('bad','good')
figure(2)
Hd = myfliter;
output = filter(Hd,y);
plot(output);
