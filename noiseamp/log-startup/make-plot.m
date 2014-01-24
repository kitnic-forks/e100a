M = csvread ('log-fixed.csv');
times = M(:,1);
values = M(:,2);

plot (times, values);
title ('Noise Amplifier Settling');
xlabel ('Time (s)');
ylabel ('Output (V)');
print -deps 'plot.eps';

plot (times, values);
title ('Noise Amplifier Settling');
xlabel ('Time (s)');
ylabel ('Output (V)');
axis ([-inf inf -.5 .5]);
print -deps 'plot2.eps';
