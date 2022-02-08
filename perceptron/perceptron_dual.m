function [w,b,a] = perceptron_dual(x,y,eta)
%f(x)=sign(w'*x+b)
    [n,N]=size(x);
    a=zeros(1,N);
    b=0;
    %Gram matrix
    G=x'*x;
    flag=true;
    while flag
        flag=false;
        for i=1:N
            if(y(i)*(a.*y*G(:,i)+b)<=0)
                flag=true;
                a(i)=a(i)+eta;
                b=b+eta*y(i);
            end
        end
    end
    w=x*(a.*y)';
end