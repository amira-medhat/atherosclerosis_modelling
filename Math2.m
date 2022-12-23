syms s v a L h T P lam r seta
s=2;
r=2;
lam=6750.555;
% the eq. of the plaque volume.
eq1=((s^2)/sin(a))*((a/sin(a))-cos(a))==2.362994320804836
%solve the eq. to get the value of the angle a.
a=solve(eq1,a) %radian value.
seta=a*(180/3.14) %degree value.
%the length of the arc.
L=(2*a*s)/(sin(a)); %in mm.
%the outward growth.
h=(s/sin(a))*(1-cos(a)); %in mm.
%The tension in the outer wall.
T=lam*(L-2*s);
%The resistive pressure exerted by the outer wall
P=(T/r); %in mm.Hg
L
h
T
P