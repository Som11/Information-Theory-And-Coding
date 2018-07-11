n=6;k=3;
par=[1 0 1;0 1 1;1 1 0];
genmat=[eye(3),par];
msg=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1];
code=encode(msg,n,k,'linear',genmat)
rec=[1 1 0 0 1 0];
h=[par',eye(3)]
trt=syndtable(h)
syn=rem(rec*h',2)
syn_de=bi2de(syn,'left-msb')
disp(['syndrome=',num2str(syn_de),'(decimal),',num2str(syn),'(binary)'])
corrvect=trt(1+syn_de,:)
correctedcode=rem(corrvect+rec,2)

