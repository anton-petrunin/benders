input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[twoside]{book}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(5) 
save u, p, n;
path p[];
u:=.2cm;
n:=52;

x.r=(1+sqrt 5 )/2;

for i=0 upto n:
draw (0,i)*u--(n+.5,i)*u penhair;
draw (i,0)*u--(i,n+.5)*u penhair;
endfor

Dot (0,0)*u;
for i=1 upto (n+1)/(x.r*x.r):
Dot (floor(i*x.r),floor(i*x.r*x.r))*u, (floor(i*x.r*x.r),floor(i*x.r))*u;
endfor

drawarrow (13+23,8+23)*u--(13+.5,8+.5)*u penbold;
drawarrow (13+23,8+23)*u--(13+23,22+.5)*u penbold;
drawarrow (13+23,8+23)*u--(19+.5,8+23)*u penbold;
dOt (13+23,8+23)*u;

drawarrow (22,5)*u--(3+.5,5)*u penbold;
dOt (22,5)*u;

drawarrow (24,11)*u--(18+.5,11)*u penbold;
dOt (24,11)*u;

drawarrow (4+5,7+5)*u--(4+.5,7+.5)*u penbold;
dOt (4+5,7+5)*u;
endfig;

beginfig(10) 
save u, p, a, b;
path p[];
u:=2.8cm;
a:=93.5;

x.b= 4*(a-90);

z.o=origin;
z.r0=(0,1)*u;
z.r1=z.r0 rotated -a;
z.r2=z.r1 rotated -a;
z.r3=z.r2 rotated -a;
z.l1=z.r1 rotated x.b;
z.l2=z.r2 rotated x.b;
z.l3=z.r3 rotated x.b;

z.a1=.8*z.r0 rotated ((-a+x.b)/2);
z.a2=z.a1 rotated -a;
z.a3=z.a2 rotated -a;
z.a4=z.a3 rotated -a;

z.b1=.8*z.r0 rotated (-a+x.b/2);
z.b2=z.b1 rotated -a;
z.b3=z.b2 rotated -a;

labelarcsprof(z.r0, z.o, z.r1, 27, 14, btex $x$ etex rotated (-a/2));
labelarcsprof(z.r0, z.o, z.l1, 34, 31, btex $x-4z$ etex rotated ((x.b-a)/2));
labelarcsprof(z.r2, z.o, z.l2, 40, 40, btex $4z$ etex);

draw circle (z.o,z.r0);
draw z.o--z.r0;
draw z.o--z.r1;
draw z.o--z.r2;
draw z.o--z.r3;
draw z.o--z.l1;
draw z.o--z.l2;
draw z.o--z.l3;

label(btex $A_1$ etex, z.a1);
label(btex $A_2$ etex, z.a2);
label(btex $A_3$ etex, z.a3);
label(btex $A_4$ etex, z.a4);
label(btex $B_1$ etex, z.b1);
label(btex $B_2$ etex, z.b2);
label(btex $B_3$ etex, z.b3);
endfig;

end
