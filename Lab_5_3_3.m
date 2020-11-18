% Sammy Robens-Paradise
% get array of frequencies
freq = [100 200 300 400 500 600 700 800 900 1000 2000 4000 100000];

% setup default values for equation
Q=0.707;
FreqC=736;
Omega=(2*pi*FreqC);
Omega_Squared=(Omega)^2;
j=sqrt(-1);
G=1;
% loop through and calculate Vout then display
for f=1:13
    current_freq=freq(f);
    current_Omega =(j*2*pi*current_freq);
    current_Omega_Squared=(current_Omega)^2;
    ratio=(Omega/Q);
    voltage_gain=abs((G*Omega_Squared)/(current_Omega_Squared+(ratio*current_Omega)+Omega_Squared));
    dBGain=20*log10(voltage_gain);
    disp('frequency Hz')
    disp(current_freq)
    disp('voltage Gain')
    disp(abs(voltage_gain));
    disp('dB gain')
    disp(dBGain)
    disp('________________________')
end