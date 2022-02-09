function [y_instance] = knn(x,y,x_instance,k,p)
if(nargin<5)
    p=2;
end
d=sum((x-x_instance).^p,1).^(1/p);
sorted_d=sortrows([d;y]')';
cnt=zeros(1,length(y));
m=0;
y_instance=0;
for i=1:k
    cnt(sorted_d(2,i))=cnt(sorted_d(2,i))+1;
    if(m<cnt(sorted_d(2,i)))
        m=cnt(sorted_d(2,i));
        y_instance=sorted_d(2,i);
    end
end

end

