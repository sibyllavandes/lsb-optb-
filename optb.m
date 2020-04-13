%转化成灰度图
%s = imread('schoool.bmp');
%stegoed= rgb2gray(s);
%imwrite(stegoed,'grayschool.bmp');

% 调用隐藏算法，把隐蔽载体写至硬盘
%stegoed =optbencode('lena512灰度图.bmp','grayschool.bmp');
%imwrite(stegoed, 'lena_sec.bmp', 'bmp');

%compare('标准lena.bmp','lena_sec.bmp');

%调用提取算法，把提取的秘密信息写至硬盘
stegoed=optbdecode('lena_sec.bmp');
imwrite(stegoed,'secretmsg.bmp','bmp');


