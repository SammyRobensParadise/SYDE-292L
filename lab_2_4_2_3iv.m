% get array of frequencies


% setup default values for equation
R=20000;
C=75e-12;
Vin=1;

    
    % calculating output voltage
%     V=(Vin-(50*((10)/((50)+((0.03*2*pi*f+20000)/((3E-6)*2*pi*f+1))))));
%     
%     % calculating gain
%      Xc=((1)/(2*pi*f*C));
%     denom=sqrt((R^2)+(Xc^2));
%     ratio=Xc/denom;
%     Vout=V*ratio;
%     Gain=(20)*(log10(Vout/Vin));
    
 S=solve(0.7079==(20)*(log10((1-(50*((10)/((50)+((0.03*2*pi*f+20000)/((3E-6)*2*pi*f+1))))))*(Xc/(sqrt((R^2)+((((1)/(2*pi*f*C)))^2)))/1))),f);
 disp(S);