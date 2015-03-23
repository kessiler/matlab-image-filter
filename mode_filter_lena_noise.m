lenaNoise = imread('images/LenaNoise.jpg');
lenaSmooth = mode_filter(lenaNoise);
imwrite(lenaSmooth, 'results/LenaSmooth_Mode_Filter.jpg');