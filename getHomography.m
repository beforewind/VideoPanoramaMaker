function [H H_err] = getHomography(im1, im2)

    % Constants:
    NUM_ITERATIONS = 100;
    DIST_THRESHOLD = 0.6;
    INLIER_THRESHOLD = 0;
    QUICK_SIFT = 0;
    
    % Match Feature Points:    
    [x_1 x_2] = getMatchingPoints(im1, im2, QUICK_SIFT);
    
    % Perform RANSAC:
    [H H_err] = RANSAC(x_1, x_2, NUM_ITERATIONS, DIST_THRESHOLD, INLIER_THRESHOLD);
    
end