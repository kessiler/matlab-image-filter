lenaNoise = imread('results/LenaNoise.jpg');
lenaNoise_Mask_1_9 = mean_filter(lenaNoise, 1/9 * [1 1 1; 1 1 1; 1 1 1]);
imwrite(lenaNoise_Mask_1_9, 'results/LenaNoise_Mask_1_9.jpg');