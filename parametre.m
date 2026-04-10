 %parametre du système
k=5;%N/m
m=20;%kg
A=[ 0      1;
   -(k/m)  0 ];

B=[0;1/m]
C=[1 0]
D=[]

sys1 = ss(A,B,C,D)

step(sys1)

%mise en place de pôle
%A-L*C
%A'-C'*L'
%A-B*K
poleplace= [ -2+2i ; -2-2i];
Lt=place(A',C',poleplace);
L=Lt';

Acl=A-L*C;
eig(Acl);




