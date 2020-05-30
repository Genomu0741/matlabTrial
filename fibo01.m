function output =fibo01(n)

if isscalar(n)
    if n <= 2
       output = n-1;
    else
        output = fibo01(n-1)+fibo01(n-2);
    end
else
    sx=size(n);
    ro=sx(1);
    co=sx(2);
    arr=ones(ro,co);
    for k = 1:ro
       for g = 1:co
          idx=n(k,g);
          arr(k,g) = fibo01(idx);
       end
    end
    output = arr;
end