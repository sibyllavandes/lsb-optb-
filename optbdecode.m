%�ļ�����optbencode.m
%����:��˼ӱ
%��дʱ�䣺2020.4.12
%�������ܣ����������optb�㷨������ͼ������ȡ������Ϣ
%�����ʽ������result=optbdecode('lenna.bmp')
%����˵��

function result=optbdecode(output)

I=imread(output);

si = size(I);
width=si(2);
height=si(1);

threShold=128;
count=1;

result=zeros(60);
countmax=numel(result);

%sm=size(msg);
%countmax=sm(1)*sm(2);

for i=1:1:width
    for j=1:1:height
        if I(i,j)>=threShold
            a1=rem(I(i,j),2);
            a2=rem(floor(I(i,j)/2),2);
            a3=rem(floor(I(i,j)/4),2);
            result(count)=xor(a1,a3);
            result(count+1)=xor(a2,a3);
            if count<countmax-1
               count=count+2;
            else
                break;
            end
        end
    end
end

