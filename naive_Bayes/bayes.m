function [y_instance] = bayes(x,y,x_instance,S,K,lambda)
[n,N]=size(x);
I_Y=zeros(1,1,K);
I_XY=zeros(n,max(S),K);
for i=1:N
    I_Y(y(i))=I_Y(y(i))+1;
    for j=1:n
        I_XY(j,x(j,i),y(i))=I_XY(j,x(j,i),y(i))+1;
    end
end
P_XY=(I_XY+lambda)./(I_Y+S*lambda);
P_Y=(I_Y+lambda)./(N+K*lambda);

value=P_Y;
for j=1:n
    value=value.*P_XY(j,x_instance(j),:);
end
[~,y_instance]=max(value);
end

