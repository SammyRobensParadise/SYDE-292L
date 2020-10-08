% get array of frequencies
frequencies = [100 500 1000 5000 10000 50000 100000 500000 1000000];

% setup default values for equation
R=20000;
C=75e-12;
Vin=10;
% loop through and calculate Vout then display
for f=1:9
    % get expression
    
    % calculating output voltage
    V=(Vin-(50*((10)/((50)+((0.03*2*pi*frequencies(f)+20000)/((3E-6)*2*pi*frequencies(f)+1))))));
    
    % calculating gain
     Xc=((1)/(2*pi*frequencies(f)*C));
    denom=sqrt((R^2)+(Xc^2));
    ratio=Xc/denom;
    Vout=V*ratio;
    Gain=(20)*(log10(Vout/Vin));
    % displaying answers
    disp(frequencies(f));
    disp('Output Voltage V into voltage divider: ');
    disp(V);
    disp('Output Voltage Vout from voltage divider: ');
    disp(Vout);
    disp('Gain for Freq');
    disp(Gain);
    disp('_____________________');
end