function gr = morphology_close_filter(image)
gr = morphology_erode_filter(morphology_dilate_filter(image));
end
