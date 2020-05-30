function output =fibo03(n)

if isscalar(n)
    output=(((1+sqrt(5))/2)^(n-1)-((1-sqrt(5))/2)^(n-1))/sqrt(5);
else
    sx=size(n);
    ro=sx(1);
    co=sx(2);
    arr=ones(ro,co);
    for k = 1:ro
       for g = 1:co
          idx=n(k,g);
          arr(k,g) = fibo03(idx);
       end
    end
    output = arr;
end