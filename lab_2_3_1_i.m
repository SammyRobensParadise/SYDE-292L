% setup range
w=-42:200;

%variables

R2=500;
R3=10E6;
C4=47E-6;

% equation
Av=R3./((w*C4*R3*R2)+R3+R2);
AvEq=20*log(Av);

% plot
plot(w,AvEq);
title('Gain/Frequency Fig 2.2');
ylabel('A(w)');
xlabel('w');
legend({'20log(Vb(w)/Va(w))'},'Location','southwest')