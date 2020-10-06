% get array of frequencies
frequencies = [100 200 300 400 500 600 700 800 900 1000 2000 4000 10000];

% setup default values for equation
R=4700;
C=0.033e-6;
Vin=10;

% loop through and calculate Vout then display
for f=1:13
    % get expression
    
    % calculating output voltage
    X=((2*pi*frequencies(f)*C*R));
 
    denom=sqrt((1)+(X^2));
    ratio=X/denom;
    Vout=Vin*ratio;
    
    % calculating gain
    
    % displaying answers
    disp(frequencies(f));
    disp('Output Voltage V: ');
    disp(Vout);
end