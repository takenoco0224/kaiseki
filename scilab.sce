//282211117 中山孟紀

x=[0:0.2:2]';
y =[4.9 3.02 4.00 2.98 3.79 4.57 3.78 4.24 5.88 6.88 8.66]';

A = [ones(11,1),x,x^2]

function f=STfunc(p)
    f=norm(y-A*p)^2;
endfunction

function [f,g,ind]=STfuncCost(p,ind)
    f=STfunc(p);
    g=numderivative(STfunc,p);
endfunction

[fopt,popt, gopt]=optim(STfuncCost,[0;0;0])

fopt
popt

//plot(x,y,'o'x,y_m,'r')

p_left=A\y
printf("左除算")
p_left
