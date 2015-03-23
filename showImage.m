function showImage(x,y)

    fprintf ('Displaying the image (Press <Enter>)');
    image(x);
    input ('');
    
    fprintf ('Keeping aspect of relationship with axis image (Press <Enter>)');
    axis image;
    input ('');
    
    fprintf ('Inferring colors with colormap');
    colormap(y);
    input ('');
end
