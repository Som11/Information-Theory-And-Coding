clc; clear all; close all;
message=input('Enter a string: ','s');
cs=input('Are the characters equally likely?: ');
if cs
    ent=log2(26);
else
    ent=ComputeEntropy(message);
end
disp('The entropy of the given string is :')
disp(ent);


