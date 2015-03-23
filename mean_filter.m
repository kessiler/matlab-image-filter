function gr = mean_filter(image, mask)
	gr = image;

	Lint = fix(size(mask,1)/2);
    Pint = fix(size(mask,2)/2);

	% Lines
	for l = Lint+1 : size(image,1)-Lint
        % Pixels
        for p = Pint+1 : size(image,2)-Pint
            % Extract of sub-image (window)
            window = image(l-Lint : l+Lint, p-Pint : p+Pint);
            % convolution between sub-image and mask
            gr(l,p) = sum(sum(double(window) .* mask));
        end
    end
end
