%Program for Image / Picture Quality Measures Calculation

%Author : Athi Narayanan S
%M.E, Embedded Systems,
%K.S.R College of Engineering
%Erode, Tamil Nadu, India.
%http://sites.google.com/site/athisnarayanan/
%s_athi1983@yahoo.co.in

%Program Description
%This program is the main entry of the application.
%This program calculates the difference Image/Picture Quality Measures

%Clear Memory & Command Window
clc;
clear all;
close all;

allClusters = 46656;
minClusters = 1;
maxClusters = 4096;
i = minClusters;

procentClusters = zeros(13, 1);
errorClusters = zeros(13, 1);

%Read Original & Distorted Images
origImg = imread('.\heart3PassCompare.png');
distImg = imread(strcat('.\blank.png'));
     
 %If the input image is rgb, convert it to gray image
noOfDim = ndims(origImg);
if(noOfDim == 3)
    origImg = rgb2gray(origImg);
end

noOfDim = ndims(distImg);
if(noOfDim == 3)
    distImg = rgb2gray(distImg);
end

%Size Validation
origSiz = size(origImg);
distSiz = size(distImg);
sizErr = isequal(origSiz, distSiz);
if(sizErr == 0)
    disp('Error: Original Image & Distorted Image should be of same dimensions');
    return;
end

%Maximum Normalized Absolute Error (Reference against blank image)
maxNAE = NormalizedAbsoluteError(origImg, distImg);

array_i = 1;

while(i<=maxClusters)    
     distImg = imread(strcat('.\clustered\heart3Cluster', int2str(i), '.png'));
     
     %If the input image is rgb, convert it to gray image
    noOfDim = ndims(origImg);
    if(noOfDim == 3)
        origImg = rgb2gray(origImg);
    end

    noOfDim = ndims(distImg);
    if(noOfDim == 3)
        distImg = rgb2gray(distImg);
    end

    %Size Validation
    origSiz = size(origImg);
    distSiz = size(distImg);
    sizErr = isequal(origSiz, distSiz);
    if(sizErr == 0)
        disp('Error: Original Image & Distorted Image should be of same dimensions');
        return;
    end

    %Normalized Absolute Error
    NAE = NormalizedAbsoluteError(origImg, distImg);
    
    procentClusters(array_i) = i/allClusters;
    errorClusters(array_i) = NAE/maxNAE;

    i = i*2;
    array_i = array_i + 1;
end

formatSpec = '%2.10f\n';
disp(strcat('Normalized Absolute Error For Clusters (Divided with NAE towards blank image) -',  int2str(minClusters), ':', int2str(maxClusters), ' = '));
disp(errorClusters);

h = loglog(procentClusters, errorClusters, '-rs','LineWidth',2,...
                'MarkerEdgeColor','b',...
                'MarkerFaceColor','b',...
                'MarkerSize',4);

cd('../heart3/plot2svg_20101128');

% Next we add a title, ylabel, grid, box on
title('Image Error Measurement for Varying Cluster Sizes');
ylabel('Normalized Absolute Error (NAE)');
xlabel('Number of clusters in relation to the number of curves');
set(h,'LineWidth',2)
plot2svg('../clusterErrorPlot.svg');

cd('../');




