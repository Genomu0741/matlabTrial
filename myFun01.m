function output = myFun01(x)
%myFun01 return the value 0.5*exp(x/3)-x*x*sin(x)
if isscalar(x)
    output = 0.5*exp(x/3)-x*x*sin(x);
else
    sx=size(x);
    ro=sx(1);
    co=sx(2);
    arr=ones(ro,co);
    for k = 1:ro
       for g = 1:co
          idx=x(k,g);
          arr(k,g) = 0.5*exp(idx/3)-idx*idx*sin(idx);
       end
    end
    output = arr;
end