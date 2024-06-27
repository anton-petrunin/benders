input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
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
endfig;



end
