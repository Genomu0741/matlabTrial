function output=piFun01(n)
if isscalar(n)
    sum=0.0;
    REPS = 1000;minTime = Inf;tic;
    for k = 1:n
        tstart = tic;
        if mod(k,2)==1
            sum=sum+1/(2*k-1);
        else
            sum=sum-1/(2*k-1);
        end
        telapsed = toc(tstart);
        minTime = min(telapsed,minTime);
    end
    averageTime = toc/REPS;
    disp('­pºâ®É¶¡');
    disp(averageTime);
    output=4*sum;
else
    disp('Please use scalar parameter.');
    output = 0;
end