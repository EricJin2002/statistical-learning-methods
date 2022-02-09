clear;clc;
[x1,x2]=meshgrid(1:10,1:10);
x=[x1(:)';x2(:)'];
y=(x(1,:)+x(2,:)<10)+1;
scatter(x(1,y==1),x(2,y==1),'blue')
hold on
scatter(x(1,y==2),x(2,y==2),'red')

for k=1:200
    i=rand()*9+1;
    j=rand()*9+1;
    if knn(x,y,[i;j],5)==1
        scatter(i,j,'blue','filled')
    else
        scatter(i,j,'red','filled')
    end
end