% Sammy Robens-Paradise
% get array of frequencies
freq = [100 200 500 2000 5000 100000];

% setup default values for equation
Rg=1e6;
Rd=1e6;
R=10e3;
C=15e-9;
j=sqrt(-1);
neg_1_over_Rg_C=((-1)/(Rg*C));
one_over_R_C_Sqrd=((1)/((R*C)^2));
% loop through and calculate Vout then display
for f=1:6
    current_freq=freq(f);
    current_Omega =(j*2*pi*current_freq);
    current_Omega_Squared=(current_Omega)^2;
    voltage_gain=((neg_1_over_Rg_C*current_Omega)/(current_Omega_Squared+(current_Omega_Squared/(Rd*C))+one_over_R_C_Sqrd));
    dBGain=20*log10(abs(voltage_gain));
    disp('frequency Hz')
    disp(current_freq)
    disp('voltage Gain')
    disp(abs(voltage_gain));
    disp('dB gain')
    disp(dBGain)
    disp('________________________')
end