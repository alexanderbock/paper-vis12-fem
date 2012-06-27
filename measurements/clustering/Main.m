clc;
clear all;
close all;

path(path, '../legendflex');
path(path, '../plot2svg');

abcissa = 1:50;

set(gca,'FontSize',13)

data32 = [
    1,
    0.65598737,
    0.604828266,
    0.589124458,
    0.580374802,
    0.573858788,
    0.568592773,
    0.563756969,
    0.558527124,
    0.553601807,
    0.549864539,
    0.547209873,
    0.545322034,
    0.543935283,
    0.542862408,
    0.541972142,
    0.541117565,
    0.540282343,
    0.539514137,
    0.538828318,
    0.538104988,
    0.537326092,
    0.536486548,
    0.535619641,
    0.534825413,
    0.534077443,
    0.533347207,
    0.53270088,
    0.532024048,
    0.531341972,
    0.530648186,
    0.529945873,
    0.529229349,
    0.528481699,
    0.527789054,
    0.527115145,
    0.526374541,
    0.525548087,
    0.524750816,
    0.523941776,
    0.523233839,
    0.522480965,
    0.521797087,
    0.52113863,
    0.5204399,
    0.519732103,
    0.519026528,
    0.518291428,
    0.517531368,
    0.516759178];
    
data64 = [
    0.752186248,
    0.531687474,
    0.494371119,
    0.479231191,
    0.471360472,
    0.466272523,
    0.461742228,
    0.457613801,
    0.453378266,
    0.449456087,
    0.446130055,
    0.442746235,
    0.440293415,
    0.438309456,
    0.436775385,
    0.435434091,
    0.434350267,
    0.433334719,
    0.432480262,
    0.431581769,
    0.430802734,
    0.430035408,
    0.429238538,
    0.428512206,
    0.427788516,
    0.427049613,
    0.426331908,
    0.425640604,
    0.424975542,
    0.424273589,
    0.423640473,
    0.423015583,
    0.422439373,
    0.421847971,
    0.421235571,
    0.420674654,
    0.420198626,
    0.419703322,
    0.419171028,
    0.418614774,
    0.418067207,
    0.417483611,
    0.417001878,
    0.416608618,
    0.416154187,
    0.415730962,
    0.415313061,
    0.414887174,
    0.41445328,
    0.413951751];
    
data128 = [
    0.445393174,
    0.32967926,
    0.305149734,
    0.293556259,
    0.285890807,
    0.280383015,
    0.276707757,
    0.27403844,
    0.271749253,
    0.27012657,
    0.268723866,
    0.267186012,
    0.265987094,
    0.265015782,
    0.264221394,
    0.263577368,
    0.263045515,
    0.262594527,
    0.262176646,
    0.261781404,
    0.261375072,
    0.2609923,
    0.260662711,
    0.260364068,
    0.260046989,
    0.259684714,
    0.25936201,
    0.259090189,
    0.258888204,
    0.258687801,
    0.258353788,
    0.258234331,
    0.258114053,
    0.258011309,
    0.257928701,
    0.257859985,
    0.257769291,
    0.257659942,
    0.257545909,
    0.257427613,
    0.257305593,
    0.257182273,
    0.257066899,
    0.256964455,
    0.256858028,
    0.256747358,
    0.256620074,
    0.256519372,
    0.25645514,
    0.25638196];
    
data256 = [
    0.346009779,
    0.240530172,
    0.224209381,
    0.216562424,
    0.211132656,
    0.207429836,
    0.204880256,
    0.203233693,
    0.202005812,
    0.200942965,
    0.19990636,
    0.199312916,
    0.198854001,
    0.198429095,
    0.198008352,
    0.197689351,
    0.197353838,
    0.19702489,
    0.196695201,
    0.196389972,
    0.19608164,
    0.195812221,
    0.195580371,
    0.195370821,
    0.195091413,
    0.194832722,
    0.194567525,
    0.194359055,
    0.19419292,
    0.194065356,
    0.193961471,
    0.193894937,
    0.193843135,
    0.193784046,
    0.193721956,
    0.193639569,
    0.193581221,
    0.193510323,
    0.193454718,
    0.193395129,
    0.193311501,
    0.19324897,
    0.193211319,
    0.193201812,
    0.193203193,
    0.1931881,
    0.193168785,
    0.193157075,
    0.193141662,
    0.193127751];
    
data512 = [
    0.22136436,
    0.164320056,
    0.148806784,
    0.142124774,
    0.138670016,
    0.136635837,
    0.13502008,
    0.133574381,
    0.132416496,
    0.131540362,
    0.130867053,
    0.130404896,
    0.129970782,
    0.12960052,
    0.12934297,
    0.129165685,
    0.129041143,
    0.128925709,
    0.128773665,
    0.128691158,
    0.128601125,
    0.128512592,
    0.128413972,
    0.128325059,
    0.128245875,
    0.128059082,
    0.127927695,
    0.127855036,
    0.127743925,
    0.127652931,
    0.127593062,
    0.127551508,
    0.127490819,
    0.127471083,
    0.127461395,
    0.127453348,
    0.127458733,
    0.127452628,
    0.127429009,
    0.127428608,
    0.127416558,
    0.127409873,
    0.127384712,
    0.127346161,
    0.127333431,
    0.127326765,
    0.127305508,
    0.127288174,
    0.127287693,
    0.127278186];
    
data1024 = [
    0.164747305,
    0.114310609,
    0.102642073,
    0.097283482,
    0.093985112,
    0.092082581,
    0.090722091,
    0.089777721,
    0.088921743,
    0.088321533,
    0.087829632,
    0.087480988,
    0.087176599,
    0.086847891,
    0.086558395,
    0.086325025,
    0.086048219,
    0.085913329,
    0.085796354,
    0.085692609,
    0.085610082,
    0.085578977,
    0.085499972,
    0.085373529,
    0.08531356,
    0.085249248,
    0.085205032,
    0.085147565,
    0.085089878,
    0.085089938,
    0.085075646,
    0.085102148,
    0.085126868,
    0.085127889,
    0.085123185,
    0.085074825,
    0.084999804,
    0.084961373,
    0.084939935,
    0.08489688,
    0.084873801,
    0.084827043,
    0.084775041,
    0.084744156,
    0.084731045,
    0.084721077,
    0.084715192,
    0.08465166,
    0.084648398,
    0.084657185,
];

data2048 = [
    0.121952162,
    0.083571039,
    0.073532251,
    0.068876434,
    0.066291366,
    0.064573485,
    0.062992175,
    0.062233296,
    0.061729746,
    0.061294891,
    0.060939201,
    0.060640017,
    0.060261848,
    0.059961543,
    0.059769787,
    0.059661459,
    0.059542121,
    0.059424886,
    0.05927034,
    0.05920919,
    0.059146599,
    0.059102443,
    0.059049219,
    0.059020416,
    0.058996917,
    0.058937668,
    0.058865389,
    0.058809244,
    0.058748634,
    0.05866965,
    0.058647692,
    0.058622071,
    0.058605117,
    0.058613904,
    0.058603216,
    0.05862121,
    0.058617087,
    0.058622892,
    0.058616426,
    0.058625053,
    0.058629477,
    0.05862119,
    0.058624593,
    0.058621751,
    0.058628376,
    0.05860832,
    0.058614765,
    0.058577575,
    0.058550593,
    0.05852237];
    
data4096 = [
    0.091506451,
    0.059306449,
    0.050544263,
    0.046202562,
    0.044059714,
    0.042516355,
    0.041816164,
    0.041224642,
    0.040923276,
    0.040521408,
    0.040395626,
    0.040140998,
    0.0400449,
    0.039859168,
    0.039842915,
    0.039650258,
    0.039659445,
    0.039483542,
    0.039503598,
    0.039365366,
    0.039374133,
    0.039253074,
    0.03929761,
    0.039167925,
    0.039258619,
    0.039177592,
    0.039221268,
    0.039120666,
    0.039218926,
    0.039103712,
    0.039177432,
    0.039050869,
    0.03911372,
    0.039008915,
    0.039056994,
    0.038960055,
    0.039048387,
    0.038949046,
    0.039031814,
    0.038911776,
    0.039006253,
    0.038923565,
    0.03897845,
    0.03887971,
    0.038971164,
    0.038876967,
    0.038967081,
    0.038858392,
    0.038947205,
    0.038878689];

data8192 = [
    0.067872535,
    0.040529955,
    0.03292171,
    0.030087319,
    0.028512134,
    0.027621327,
    0.026930284,
    0.026492987,
    0.026285298,
    0.026176549,
    0.026101288,
    0.026026687,
    0.025961454,
    0.025676862,
    0.0256011,
    0.025291327,
    0.025240386,
    0.025121489,
    0.025064582,
    0.02497549,
    0.024862617,
    0.024797024,
    0.024735214,
    0.024668679,
    0.024636933,
    0.024564314,
    0.024531307,
    0.024490054,
    0.02447308,
    0.024412691,
    0.024378463,
    0.024371177,
    0.024372998,
    0.024364651,
    0.024366853,
    0.024360068,
    0.024363911,
    0.024357786,
    0.024361028,
    0.024354963,
    0.024358706,
    0.02435114,
    0.024354083,
    0.024347077,
    0.02435126,
    0.024345936,
    0.024349739,
    0.024343914,
    0.024348078,
    0.024342413];
    
data16384 = [
    0.052400297,
    0.027408274,
    0.020481344,
    0.018546046,
    0.017361179,
    0.016814313,
    0.016520574,
    0.016200993,
    0.016055675,
    0.015969244,
    0.015800587,
    0.015636333,
    0.015563914,
    0.0155232,
    0.015474541,
    0.015433287,
    0.015344995,
    0.015304642,
    0.015261547,
    0.015195013,
    0.015177158,
    0.015135664,
    0.015072613,
    0.015038445,
    0.015019249,
    0.014991707,
    0.014963704,
    0.014935961,
    0.014918627,
    0.014904496,
    0.014884239,
    0.014871109,
    0.014851673,
    0.01482387,
    0.014804354,
    0.014790363,
    0.014776271,
    0.014764001,
    0.014748689,
    0.014731134,
    0.014720105,
    0.014703832,
    0.014697287,
    0.014678051,
    0.014666382,
    0.014655553,
    0.014631653,
    0.014608695,
    0.014594743,
    0.014577909];

markersize = 3;
limit = 15;
    
hold all;
axis([1,15,0,0.82]);
axis on;
plot(abcissa(1:limit), data32(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data64(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data128(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data256(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data512(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data1024(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data2048(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data4096(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
plot(abcissa(1:limit), data8192(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);
%plot(abcissa(1:limit), data16384(1:limit), '-s', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerSize', markersize);

set(gca, 'Box', 'on');

title('Error introduced by clustering')
xlabel('Iteration');
ylabel('Normalized Error');
%cd('../legendflex');
legendflex({'32', '64', '128', '256', '512', '1024', '2048', '4096', '8192', '16384'}, 'Location', [0.7 0.457 0.1669 0.455], 'ncol', 4);
%cd('../plot2svg');
%legend('32', '64', '128', '256', '512', '1024', '2048', '4096', '8192', '16384', 'Location', [0.7 0.457 0.1669 0.455]);
plot2svg('../clustering/clustering_error.svg');
%cd('../clustering');
