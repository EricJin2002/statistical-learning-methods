function [w,b] = perceptron(x,y,eta)
%f(x)=sign(w'*x+b)
    [n,N]=size(x);
    w=zeros(n,1);
    b=0;
    flag=true;
    while flag
        flag=false;
        for i=1:N
            if(y(i)*(w'*x(:,i)+b)<=0)
                flag=true;
                w=w+eta*y(i)*x(:,i);
                b=b+eta*y(i);
            end
        end
    end
end