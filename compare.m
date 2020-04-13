%文件名：compare.m
%作者:颜思颖
%编写时间：2020.4.12
%函数功能：本函数完成显示optb算法嵌入前后的图像的区别
%输入格式举例：F=compare('lena.bmp','lena_sec.bmp')
%参数说明
%input：载体图片
%file：隐藏信息
%sec_cover:生成图像矩阵

function F=compare(original,hided)

W=imread(original);
W=double(W)/255;

E=imread(hided);
E=double(E)/255;

F=E-W;
imshow(mat2gray(F))
