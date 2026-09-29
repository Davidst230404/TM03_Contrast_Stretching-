I = imread('pout.tif');

a = double(min(I(:)));
b = double(max(I(:)));

c = 5;
d = 255;

x = 0:255;
y = ((x - a) / (b - a)) * (d - c) + c;

T = uint8(round(y));
I2 = T(double(I) + 1);

figure;

subplot(1,2,1);
imshow(I);
title('Citra Input');

subplot(1,2,2);
imshow(I2);
title('Citra Hasil Contrast Stretching');

figure;

subplot(1,2,1);
histogram(I(:), 'BinEdges', -0.5:255.5);
title('Histogram Citra Input');
xlabel('Intensitas');
ylabel('Frekuensi');
xlim([0 255]);

subplot(1,2,2);
histogram(I2(:), 'BinEdges', -0.5:255.5);
title('Histogram Citra Hasil Contrast Stretching');
xlabel('Intensitas');
ylabel('Frekuensi');
xlim([0 255]);
