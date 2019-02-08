clc;

for iAngle = 1:180
    str1 = sprintf('bitmap {filename = "gabor_%03d.bmp";}  gabor_%03d;', iAngle, iAngle);
    str2 = sprintf('bitmap {filename = "gabor_%03d_alt.bmp";}  gabor_%03d_alt;', iAngle, iAngle);
    str3 = sprintf('bitmap {filename = "gabor_%03d_framed.bmp";}  gabor_%03d_framed;', iAngle, iAngle);
    disp(str1);
    disp(str2);
    disp(str3);
end