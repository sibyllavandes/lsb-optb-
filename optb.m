%ת���ɻҶ�ͼ
%s = imread('schoool.bmp');
%stegoed= rgb2gray(s);
%imwrite(stegoed,'grayschool.bmp');

% ���������㷨������������д��Ӳ��
%stegoed =optbencode('lena512�Ҷ�ͼ.bmp','grayschool.bmp');
%imwrite(stegoed, 'lena_sec.bmp', 'bmp');

%compare('��׼lena.bmp','lena_sec.bmp');

%������ȡ�㷨������ȡ��������Ϣд��Ӳ��
stegoed=optbdecode('lena_sec.bmp');
imwrite(stegoed,'secretmsg.bmp','bmp');


