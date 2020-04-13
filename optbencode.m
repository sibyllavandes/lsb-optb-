%文件名：optbencode.m
%作者:颜思颖
%编写时间：2020.4.12
%函数功能：本函数完成optb算法在载体图像中嵌入隐藏信息
%输入格式举例：sec_cover=optbencode('lenna.bmp','schoolsymblo.bmp')
%参数说明
%input：载体图片
%file：隐藏信息
%sec_cover:生成图像矩阵

function sec_cover=optbencode(input,file)

threShold=128;
count=1;

%载体图像数据
sec_cover=imread(input);
si = size(sec_cover);
width=si(2);
height=si(1);

%隐藏信息
msg=imread(file);
%sm=size(msg);
countmax=numel(msg);

%嵌入
for i=1:1:width
  for j=1:1:height
     if sec_cover(i,j)>=threShold
            tmp=sec_cover(i,j);
            x1=msg(count);
            x2=msg(count+1);
            a1=rem(sec_cover(i,j),2);%最低比特位，rem是取余
            temp3=tmp/2;
            a2=rem(floor(temp3),2);%倒数第二位
            temp2=tmp/4;
            tmp1=floor(temp2);
            a3=rem(tmp1,2);%倒数第三位
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





              