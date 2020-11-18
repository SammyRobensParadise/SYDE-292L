% Sammy Robens-Paradise
% get array of frequencies
freq = [100 200 300 400 500 600 700 800 900 1000 2000 4000 10000];

% setup default values for equation
R=18000;
C=1.20135e-8;
j=sqrt(-1);
% loop through and calculate Vout then display
for f=1:13
    current_freq=freq(f);
    voltage_gain=abs((1)/((R*C)*((j*2*pi*current_freq)+(1/(R*C)))));
    dBGain=20*log10(voltage_gain);
    disp('frequency Hz')
    disp(current_freq)
    disp('voltage Gain')
    disp(abs(voltage_gain));
    disp('dB gain')
    disp(dBGain)
    disp('________________________')
end