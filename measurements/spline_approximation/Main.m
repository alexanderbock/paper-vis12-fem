clc;
clear all;
close all;

abcissa = 2:20;

heartData = [
    0.02875026731662125600,
    0.00274825956844097640,
    0.00021757953774322861,
    0.00004746025979648747,
    0.00001456266234415161,
    0.00000580652744253723,
    0.00000290574354736542,
    0.00000176513206150563,
    0.00000125335051044070,
    0.00000098738326048822,
    0.00000084687993805093,
    0.00000075837542631283,
    0.00000070371750536387,
    0.00000066577064117580,
    0.00000063969932034956,
    0.00000062022578522290,
    0.00000060636101559777,
    0.00000059528732590031,
    0.00000058816021081711];

heartDataNormalized = heartData / heartData(1);

semilogy(abcissa, heartDataNormalized, '-rs','LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor','r','MarkerSize',4);
cd('../plot2svg');
title('Error introduced by approximating bent ray by a spline');
xlabel('Number of control points');
ylabel('Normalized error');
plot2svg('../spline_approximation/spline_approximation.svg');
cd('../spline_approximation');