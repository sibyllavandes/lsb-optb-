%�ļ�����optbencode.m
%����:��˼ӱ
%��дʱ�䣺2020.4.12
%�������ܣ����������optb�㷨������ͼ����Ƕ��������Ϣ
%�����ʽ������sec_cover=optbencode('lenna.bmp','schoolsymblo.bmp')
%����˵��
%input������ͼƬ
%file��������Ϣ
%sec_cover:����ͼ�����

function sec_cover=optbencode(input,file)

threShold=128;
count=1;

%����ͼ������
sec_cover=imread(input);
si = size(sec_cover);
width=si(2);
height=si(1);

%������Ϣ
msg=imread(file);
%sm=size(msg);
countmax=numel(msg);

%Ƕ��
for i=1:1:width
  for j=1:1:height
     if sec_cover(i,j)>=threShold
            tmp=sec_cover(i,j);
            x1=msg(count);
            x2=msg(count+1);
            a1=rem(sec_cover(i,j),2);%��ͱ���λ��rem��ȡ��
            temp3=tmp/2;
            a2=rem(floor(temp3),2);%�����ڶ�λ
            temp2=tmp/4;
            tmp1=floor(temp2);
            a3=rem(tmp1,2);%��������λ
      if(x1~=xor(a1,a3))&(x2~=xor(a2,a3))
          if a3==0
              sec_cover(i,j)=sec_cover(i,j)+4;
          else
              sec_cover(i,j)=sec_cover(i,j)-4;
          end
      end
      if(x1~=xor(a1,a3))&(x2==xor(a2,a3))
          if a1==0
              sec_cover(i,j)=sec_cover(i,j)+1;
          else
              sec_cover(i,j)=sec_cover(i,j)-1;
          end
      end
      if(x1==xor(a1,a3))&(x2~=xor(a2,a3))
          if a2==0
              sec_cover(i,j)=sec_cover(i,j)+2;
          else
              sec_cover(i,j)=sec_cover(i,j)-2;
          end
      end
      if count<countmax-1
          count=count+2;
      else
          break;
      end
    end
 end
end





              