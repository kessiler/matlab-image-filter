lenaNoise = imread('images/LenaNoise.jpg');
lenaNoise_Mask_1_10 = mean_filter(lenaNoise, 1/10 * [1 1 1; 1 2 1; 1 1 1]);
imwrite(lenaNoise_Mask_1_10, 'results/LenaNoise_Mask_1_10.jpg');