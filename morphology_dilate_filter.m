function gr = morphology_dilate_filter(image)

	gr = image;

    Lint = 1;
	Pint = 1;

	% Lines
	for l = Lint+1 : size(image,1)-Lint
        % Pixels
        for p = Pint+1 : size(image,2)-Pint
            % Extract of sub-image (window)
            window = image(l-Lint : l+Lint, p-Pint : p+Pint);
            % Search the max value in the window
            maxValue = max(max(window));
            gr(l,p) = maxValue;
        end
    end
end
