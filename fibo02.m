function output =fibo02(n)
if isscalar(n)
    f_1=0;
    f_2=1;
    sum=n-1;
    for k = 3:n
        sum=f_1+f_2;
        f_1=f_2;
        f_2=sum;
    end
    output=sum;
else
    sx=size(n);
    ro=sx(1);
    co=sx(2);
    arr=ones(ro,co);
    for k = 1:ro
       for g = 1:co
          idx=n(k,g);
          arr(k,g) = fibo02(idx);
       end
    end
    output = arr;
end