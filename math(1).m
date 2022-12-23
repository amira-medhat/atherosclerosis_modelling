
dxdt=@(t,W) [ 
    %the differential eq. of the concentration of pro-inflammatory mediators . 
    %we choose the value of A coorsponding to the number of effect damage .
(0.05*((heaviside(4*pi-t)*(sin(t))^2))+ W(4)^2/(0.01+(W(4)^2))+((0.04*(W(5)^2))/(0.01+W(5)^2))-W(1));
    %the differential eq. of the concentration of monocytes .
(W(1)-0.05*W(2)-0.01*W(2));
    %the differential eq. of the concentration of macrophages .
(0.05*W(2)-0.2*W(3)*W(4)-0.1*W(3)) ; 
    %the differential eq. of the concentration of oxidised ldl .
(0.2*W(3)-0.2*W(3)*W(4)-W(4)) ; 
     %the differential eq. of the concentration of foam cells . 
(0.2*W(3)*W(4)-0.25*W(5)*W(6)-0.015*W(5)) ;
     %the differential eq. of the concentration of hdl .
(0.3*W(5)-0.25*W(5)*W(6)-0.05*W(6));
     %the differential eq. of the volume.
(((0.6*W(7))/(10^-8))*((10^-17)*((W(1)-0.05*W(2)-0.01*W(2)))+(10^-14)*((0.05*W(2)-0.2*W(3)*W(4)-0.1*W(3)))...
+(10^-21)*((0.2*W(3)-0.2*W(3)*W(4)-W(4)))+(10^-8)*((0.2*W(3)*W(4)-0.25*W(5)*W(6)-0.015*W(5)))+(10^-16)*((0.3*W(5)-0.25*W(5)*W(6)-0.05*W(6)))));
];
 
     % using the ode15s routine to solve it and get change in it . 
[t,W] = ode15s(dxdt,[0 1500],[0;0;0;0;0;0;1]);
plot(t,W)
legend('C','m','M','L','F','H','V');
