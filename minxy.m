
function [minValue, minIndex] = minxy(arr)
sa=size(arr);
ro=sa(1);
val = Inf;
index = [1,1];
x=min(arr);
val=min(x');
idx=find(arr==val);
index(2)=floor((idx-1)/ro)+1;
index(1)=(idx-ro*floor((idx-1)/ro));
minValue=val;
minIndex=index;