lenaNoise = imread('results/LenaNoise.jpg');
lenaNoise_Mask_1_4 = mean_filter(lenaNoise, 1/4 * [1 0 0; 1 0 1; 0 1 0]);
imwrite(lenaNoise_Mask_1_4, 'results/LenaNoise_Mask_1_4.jpg');