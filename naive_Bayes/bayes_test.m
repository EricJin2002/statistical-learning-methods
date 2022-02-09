clear;clc;
x=[1 1 1 1 1 2 2 2 2 2 3 3 3 3 3;
   1 2 2 1 1 1 2 2 3 3 3 2 2 3 3];
y=[2 2 1 1 2 2 2 1 1 1 1 1 1 1 2];
x_instance=[2;1];
S=[3;3];
K=2;
lambda=1;
bayes(x,y,x_instance,S,K,lambda)