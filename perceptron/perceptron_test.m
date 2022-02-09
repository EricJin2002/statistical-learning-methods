clear;clc;
x=[1 2 3 3 3 4 5 3 4 2 ;
   3 2 4 5 2 3 4 1 2 2];
y=[1 1 -1 -1 1 -1 -1 1 1 1];
scatter(x(1,y==1),x(2,y==1),'r')
hold on
scatter(x(1,y==-1),x(2,y==-1),'b')
[w,b,a]=perceptron_dual(x,y)
fimplicit(@(x1,x2)w'*[x1;x2]+b,[0 5])
