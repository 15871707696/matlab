clc;
clear;
x = [1021.38000000000;510.690000000000;340.460000000000;170.230000000000;10.2138000000000;5.10690000000000];
y = [205.314268900000;115.215933900000;80.8430899600000;44.5827599300000;3.73718974000000;2.68359683400000];
plot(x, y, 'r*')
syms t
f = fittype('a + b * x^c', 'independent', 'x', 'coefficients', {'a', 'b', 'c'});
[cfun, R_squre] = fit(x, y, f);
xi = 0:1:1050;
yi = cfun(xi);
plot(x, y, 'r*', xi, yi, 'b-');
xlim([0, 1200])
ylim([0, 250])
cfun.a
cfun.b
cfun.c
R_squre.rsquare