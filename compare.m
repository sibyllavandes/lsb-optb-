%�ļ�����compare.m
%����:��˼ӱ
%��дʱ�䣺2020.4.12
%�������ܣ������������ʾoptb�㷨Ƕ��ǰ���ͼ�������
%�����ʽ������F=compare('lena.bmp','lena_sec.bmp')
%����˵��
%input������ͼƬ
%file��������Ϣ
%sec_cover:����ͼ�����

function F=compare(original,hided)

W=imread(original);
W=double(W)/255;

E=imread(hided);
E=double(E)/255;

F=E-W;
imshow(mat2gray(F))
