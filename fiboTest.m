function output=fiboTest()

disp('first test');
timer1=tic;
n=1:30;
time1=zeros(1,30);
for i=1:length(n)
   timer2=tic;
   z=fibo01(n(i));
   time1(i)=toc(timer2);
end
elapsedtime=toc(timer1);
fprintf('Overall time = %f sec\n', elapsedtime);
% plot(n,time1,'-');
% title('FiboAlgorithm test-01');
% xlabel('Numbers of term');
% ylabel('Elapsed time (in sec)');


disp('second test');
timer1=tic;
time2=zeros(1,30);
for i=1:length(n)
    timer2=tic;
    z=fibo02(n(i));
    time2(i)=toc(timer2);
end
elapsedtime=toc(timer1);
fprintf('Overall time = %f sec\n', elapsedtime);
% plot(n,time2,'-');
% title('FiboAlgorithm test-02');
% xlabel('Numbers of term');
% ylabel('Elapsed time (in sec)');


disp('third test');
timer1=tic;
time3=zeros(1,30);
for i=1:length(n)
    timer2=tic;
    z=fibo02(n(i));
    time3(i)=toc(timer2);
end
elapsedtime=toc(timer1);
fprintf('Overall time = %f sec\n', elapsedtime);
plot(n,time3,'-');
title('FiboAlgorithm test-03');
xlabel('Numbers of term');
ylabel('Elapsed time (in sec)');
output = elapsedtime;