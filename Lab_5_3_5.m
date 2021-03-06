% Sammy Robens-Paradise
% get array of frequencies
freq = [100 200 500 2000 5000 10000];

% setup default values for equation
Rg=1e6;
Rd=1e6;
R=10e3;
C=15e-9;
j=sqrt(-1);
one_over_Rg_C=((1)/(Rg*C));
one_over_R_C_Sqrd=((1)/((R*C)^2));
Rd_C=(Rd*C);
% loop through and calculate Vout then display
for f=1:6
    current_freq=freq(f);
    s =(j*2*pi*current_freq);
    s_qrd=(s)^2;
    voltage_gain=abs(((-1)*one_over_Rg_C*s)/(s_qrd+(s/Rd_C)+one_over_R_C_Sqrd));
    dBGain=20*log10(voltage_gain);
    disp('frequency Hz')
    disp(current_freq)
    disp('voltage Gain')
    disp(voltage_gain);
    disp('dB gain')
    disp(dBGain)
    disp('________________________')
end