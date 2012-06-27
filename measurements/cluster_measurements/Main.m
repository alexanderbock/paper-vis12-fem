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

procentClusters = zeros(13, 1);
errorClusters = zeros(13, 1);

%Read Blank Image
blankImg = imread('.\blank.png');

 %If the input image is rgb, convert it to gray image
noOfDim = ndims(blankImg);
if(noOfDim == 3)
    blankImg = rgb2gray(blankImg);
end

blankSize = size(blankImg);

set(gca,'FontSize',12)


%Start New Cluster Image Measurment Here
for j=1:4

    %Read Black Image
    blackImg = imread(strcat('.\teaser', int2str(j), '\black.png'));

     %If the input image is rgb, convert it to gray image
    noOfDim = ndims(blackImg);
    if(noOfDim == 3)
        blackImg = rgb2gray(blackImg);
    end

    %Size Validation
    blackSize = size(blackImg);
    sizErr = isequal(blankSize, blackSize);
    if(sizErr == 0)
        disp('Error: Blank & Black Image should be of same dimensions');
        return;
    end

    %Maximum Normalized Absolute Error (Reference against blank image)
    maxNAE = NormalizedAbsoluteError(blankImg, blackImg);

    %Read Highest Quality Distored Image
    origImg = imread(strcat('.\teaser', int2str(j), '\pass.png'));

     %If the input image is rgb, convert it to gray image
    noOfDim = ndims(origImg);
    if(noOfDim == 3)
        origImg = rgb2gray(origImg);
    end
    
    origSiz = size(origImg);

    array_i = 1;
    i = minClusters;

    while(i<=maxClusters)   
         distImg = imread(strcat('.\teaser', int2str(j), '\cluster', int2str(i), '.png'));

         %If the input image is rgb, convert it to gray image
        noOfDim = ndims(distImg);
        if(noOfDim == 3)
            distImg = rgb2gray(distImg);
        end

        %Size Validation
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
    disp(strcat('Normalized Absolute Error For Teaser',  int2str(j), ' with Clusters (Divided with  maximum NAE) ',  int2str(minClusters), ':', int2str(maxClusters), ' = '));
    disp(errorClusters);

    if j == 1
       loglog(procentClusters, errorClusters, '-rs','LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor','r','MarkerSize',4);
    elseif j == 2
       hold all;
       loglog(procentClusters, errorClusters, '-gs','LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor','g','MarkerSize',4);
    elseif j == 3
       hold all;
       loglog(procentClusters, errorClusters, '-bs','LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor','b','MarkerSize',4);
    elseif j == 4
       hold all;
       loglog(procentClusters, errorClusters, '-ys','LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor','y','MarkerSize',4);
    end
            
end % End For Loop

% Next we plot to SVG add a title, ylabel, grid, box on
cd('../plot2svg');
title('Image Error Measurement for Varying Cluster Sizes');
ylabel('Normalized Absolute Error (NAE)');
legend('Image of Radial Strain','Image of Circumferential Strain', 'Image of Longitudinal Strain', 'Image of Combined Strains');
xlabel('Number of clusters in relation to the number of curves');
plot2svg('../cluster_measurements/clusterErrorPlot.svg');

cd('../cluster_measurements');




