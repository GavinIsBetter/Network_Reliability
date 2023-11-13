%% Network Reliability Model Project
% Gavin Versaw
% Network Engineering
%% Clear
%Deletes all values that may be saved
clc;
close all;
clear all;

%% Task 1 - Simulate a Single Link Network
%Intializing Variables
n= 1000;
k1=1;
k2=5;
k3=15;
k4=50;
k5=100;
simulationAverage1 = zeros(100,1);
simulationAverage2 = zeros(100,1);
simulationAverage3 = zeros(100,1);
simulationAverage4 = zeros(100,1);
simulationAverage5 = zeros(100,1);
calculatedAverage1 = zeros(100,1);
calculatedAverage2 = zeros(100,1);
calculatedAverage3 = zeros(100,1);
calculatedAverage4 = zeros(100,1);
calculatedAverage5 = zeros(100,1);

%Calculations and Simulations
for p= 1:1:100
    realP = (p-1)/100;
    simulationAverage1(p) = runSingleLinkSim(k1,realP,n);
    simulationAverage2(p) = runSingleLinkSim(k2,realP,n);
    simulationAverage3(p) = runSingleLinkSim(k3,realP,n);
    simulationAverage4(p) = runSingleLinkSim(k4,realP,n);
    simulationAverage5(p) = runSingleLinkSim(k5,realP,n);
    calculatedAverage1(p) = k1/(1-realP);
    calculatedAverage2(p) = k2/(1-realP);
    calculatedAverage3(p) = k3/(1-realP);
    calculatedAverage4(p) = k4/(1-realP);
    calculatedAverage5(p) = k5/(1-realP);
    
end
p= 0:0.01:0.99;

%Graphs for a Single Link Network
figure;
semilogy(p,simulationAverage1, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage1, 'Color', 'b');
title("Single Link 1 Packet");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage2, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage2, 'Color', 'b');
title("Single Link 5 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage3, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage3, 'Color', 'b');
title("Single Link 15 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage4, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage4, 'Color', 'b');
title("Single Link 50 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage5, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage5, 'Color', 'b');
title("Single Link 100 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage1, 'O');
hold on;
semilogy(p,simulationAverage2, 'O');
semilogy(p,simulationAverage3, 'O');
semilogy(p,simulationAverage4, 'O');
semilogy(p,simulationAverage5, 'O');
semilogy(p,calculatedAverage1);
semilogy(p,calculatedAverage2);
semilogy(p,calculatedAverage3);
semilogy(p,calculatedAverage4);
semilogy(p,calculatedAverage5);
title("Single Link All Simulations");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

%% Task 2 - Simulate a Two Series Link Network
%Intializing Variables
n= 1000;
k1=1;
k2=5;
k3=15;
k4=50;
k5=100;
simulationAverage1 = zeros(100,1);
simulationAverage2 = zeros(100,1);
simulationAverage3 = zeros(100,1);
simulationAverage4 = zeros(100,1);
simulationAverage5 = zeros(100,1);
calculatedAverage1 = zeros(100,1);
calculatedAverage2 = zeros(100,1);
calculatedAverage3 = zeros(100,1);
calculatedAverage4 = zeros(100,1);
calculatedAverage5 = zeros(100,1);

%Calculations and Simulations
for p= 1:1:100
    realP = (p-1)/100;
    simulationAverage1(p) = runTwoSeriesLinkSim(k1,realP,n);
    simulationAverage2(p) = runTwoSeriesLinkSim(k2,realP,n);
    simulationAverage3(p) = runTwoSeriesLinkSim(k3,realP,n);
    simulationAverage4(p) = runTwoSeriesLinkSim(k4,realP,n);
    simulationAverage5(p) = runTwoSeriesLinkSim(k5,realP,n);
    calculatedAverage1(p) = k1/((1-realP)^2);
    calculatedAverage2(p) = k2/((1-realP)^2);
    calculatedAverage3(p) = k3/((1-realP)^2);
    calculatedAverage4(p) = k4/((1-realP)^2);
    calculatedAverage5(p) = k5/((1-realP)^2);
end
p= 0:0.01:0.99;

%Graphs for a Two Series Links Network
figure;
semilogy(p,simulationAverage1, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage1, 'Color', 'b');
title("Two Series Links 1 Packet");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage2, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage2, 'Color', 'b');
title("Two Series Links 5 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage3, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage3, 'Color', 'b');
title("Two Series Links 15 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage4, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage4, 'Color', 'b');
title("Two Series Links 50 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage5, 'O', 'Color', 'k');
hold on;
semilogy(p,calculatedAverage5, 'Color', 'b');
title("Two Series Links 100 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage1, 'O');
hold on;
semilogy(p,simulationAverage2, 'O');
semilogy(p,simulationAverage3, 'O');
semilogy(p,simulationAverage4, 'O');
semilogy(p,simulationAverage5, 'O');
semilogy(p,calculatedAverage1);
semilogy(p,calculatedAverage2);
semilogy(p,calculatedAverage3);
semilogy(p,calculatedAverage4);
semilogy(p,calculatedAverage5);
title("Two Series Link All Simulations");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;
%% Task 3 - Simulate a Two Parellel Link Network
%Intializing Variables
n= 1000;
k1=1;
k2=5;
k3=15;
k4=50;
k5=100;
simulationAverage1 = zeros(100,1);
simulationAverage2 = zeros(100,1);
simulationAverage3 = zeros(100,1);
simulationAverage4 = zeros(100,1);
simulationAverage5 = zeros(100,1);

%Simulations
for p= 1:1:100
    realP = (p-1)/100;
    simulationAverage1(p) = runTwoParralelLinkSim(k1,realP,n);
    simulationAverage2(p) = runTwoParralelLinkSim(k2,realP,n);
    simulationAverage3(p) = runTwoParralelLinkSim(k3,realP,n);
    simulationAverage4(p) = runTwoParralelLinkSim(k4,realP,n);
    simulationAverage5(p) = runTwoParralelLinkSim(k5,realP,n);
end
p= 0:0.01:0.99;

%Graphs for a Parrellel Links Network
figure;
semilogy(p,simulationAverage1, 'O', 'Color', 'k');
hold on;
title("Parralel Links 1 Packet");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage2, 'O', 'Color', 'k');
hold on;
title("Two Parralel Links 5 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage3, 'O', 'Color', 'k');
hold on;
title("Two Parralel Links 15 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage4, 'O', 'Color', 'k');
hold on;
title("Two Parralel Links 50 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage5, 'O', 'Color', 'k');
hold on;
title("Two Parralel Links 100 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage1, 'O');
hold on;
semilogy(p,simulationAverage2, 'O');
semilogy(p,simulationAverage3, 'O');
semilogy(p,simulationAverage4, 'O');
semilogy(p,simulationAverage5, 'O');
title("Two Parrelel Links All Simulations");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;
%% Task 4 - Simulate a Compund Network
%Intializing Variables
n= 1000;
k1=1;
k2=5;
k3=15;
k4=50;
k5=100;
simulationAverage1 = zeros(100,1);
simulationAverage2 = zeros(100,1);
simulationAverage3 = zeros(100,1);
simulationAverage4 = zeros(100,1);
simulationAverage5 = zeros(100,1);

%Simulations
for p= 1:1:100
    realP = (p-1)/100;
    simulationAverage1(p) = runCompoundNetworkSim(k1,realP,n);
    simulationAverage2(p) = runCompoundNetworkSim(k2,realP,n);
    simulationAverage3(p) = runCompoundNetworkSim(k3,realP,n);
    simulationAverage4(p) = runCompoundNetworkSim(k4,realP,n);
    simulationAverage5(p) = runCompoundNetworkSim(k5,realP,n);
end
p= 0:0.01:0.99;

%Graphs for a Compound Network
figure;
semilogy(p,simulationAverage1, 'O', 'Color', 'k');
hold on;
title("Compound Network 1 Packet");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage2, 'O', 'Color', 'k');
hold on;
title("Compound Network 5 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage3, 'O', 'Color', 'k');
hold on;
title("Compound Network 15 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage4, 'O', 'Color', 'k');
hold on;
title("Compound Network 50 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage5, 'O', 'Color', 'k');
hold on;
title("Compound Network 100 Packets");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage1, 'O');
hold on;
semilogy(p,simulationAverage2, 'O');
semilogy(p,simulationAverage3, 'O');
semilogy(p,simulationAverage4, 'O');
semilogy(p,simulationAverage5, 'O');
title("Compound Network All Simulations");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;
%% Task 5 - Now with different Probabilities
%Intializing Variables
n= 1000;
k1=1;
k2=5;
k3=10;
p10=0.1;
p60 = 0.6;
simulationAverage1_1 = zeros(100,1);
simulationAverage1_5 = zeros(100,1);
simulationAverage1_10 = zeros(100,1);
simulationAverage2_1 = zeros(100,1);
simulationAverage2_5 = zeros(100,1);
simulationAverage2_10 = zeros(100,1);
simulationAverage3_1 = zeros(100,1);
simulationAverage3_5 = zeros(100,1);
simulationAverage3_10 = zeros(100,1);
simulationAverage4_1 = zeros(100,1);
simulationAverage4_5 = zeros(100,1);
simulationAverage4_10 = zeros(100,1);
simulationAverage5_1 = zeros(100,1);
simulationAverage5_5 = zeros(100,1);
simulationAverage5_10 = zeros(100,1);
simulationAverage6_1 = zeros(100,1);
simulationAverage6_5 = zeros(100,1);
simulationAverage6_10 = zeros(100,1);

%Simulations
for p= 1:1:100
    realP = (p-1)/100;
    simulationAverage1_1(p) = runCustomCompoundNetworkSim(k1,p10,p60,realP,n);
    simulationAverage1_5(p) = runCustomCompoundNetworkSim(k2,p10,p60,realP,n);
    simulationAverage1_10(p) = runCustomCompoundNetworkSim(k3,p10,p60,realP,n);
    simulationAverage2_1(p) = runCustomCompoundNetworkSim(k1,p60,p10,realP,n);
    simulationAverage2_5(p) = runCustomCompoundNetworkSim(k2,p60,p10,realP,n);
    simulationAverage2_10(p) = runCustomCompoundNetworkSim(k3,p60,p10,realP,n);
    simulationAverage3_1(p) = runCustomCompoundNetworkSim(k1,p10,realP,p60,n);
    simulationAverage3_5(p) = runCustomCompoundNetworkSim(k2,p10,realP,p60,n);
    simulationAverage3_10(p) = runCustomCompoundNetworkSim(k3,p10,realP,p60,n);
    simulationAverage4_1(p) = runCustomCompoundNetworkSim(k1,p60,realP,p10,n);
    simulationAverage4_5(p) = runCustomCompoundNetworkSim(k2,p60,realP,p10,n);
    simulationAverage4_10(p) = runCustomCompoundNetworkSim(k3,p60,realP,p10,n);
    simulationAverage5_1(p) = runCustomCompoundNetworkSim(k1,realP,p10,p60,n);
    simulationAverage5_5(p) = runCustomCompoundNetworkSim(k2,realP,p10,p60,n);
    simulationAverage5_10(p) = runCustomCompoundNetworkSim(k3,realP,p10,p60,n);
    simulationAverage6_1(p) = runCustomCompoundNetworkSim(k1,realP,p60,p10,n);
    simulationAverage6_5(p) = runCustomCompoundNetworkSim(k2,realP,p60,p10,n);
    simulationAverage6_10(p) = runCustomCompoundNetworkSim(k3,realP,p60,p10,n);
end
p= 0:0.01:0.99;

%Graphs for a set probability Compound Network
figure;
semilogy(p,simulationAverage1_1,'O', 'Color', 'k');
hold on;
semilogy(p,simulationAverage1_5,'O', 'Color', 'g');
semilogy(p,simulationAverage1_10,'O', 'Color', 'b');
title("Custom Compound Network Figure 1");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage2_1,'O', 'Color', 'k');
hold on;
semilogy(p,simulationAverage2_5,'O', 'Color', 'g');
semilogy(p,simulationAverage2_10,'O', 'Color', 'b');
title("Custom Compound Network Figure 2");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage3_1,'O', 'Color', 'k');
hold on;
semilogy(p,simulationAverage3_5,'O', 'Color', 'g');
semilogy(p,simulationAverage3_10,'O', 'Color', 'b');
title("Custom Compound Network Figure 3");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage4_1,'O', 'Color', 'k');
hold on;
semilogy(p,simulationAverage4_5,'O', 'Color', 'g');
semilogy(p,simulationAverage4_10,'O', 'Color', 'b');
title("Custom Compound Network Figure 4");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage5_1,'O', 'Color', 'k');
hold on;
semilogy(p,simulationAverage5_5,'O', 'Color', 'g');
semilogy(p,simulationAverage5_10,'O', 'Color', 'b');
title("Custom Compound Network Figure 5");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;

figure;
semilogy(p,simulationAverage6_1,'O', 'Color', 'k');
hold on;
semilogy(p,simulationAverage6_5,'O', 'Color', 'g');
semilogy(p,simulationAverage6_10,'O', 'Color', 'b');
title("Custom Compound Network Figure 6");
xlabel("Chance of Failure");
ylabel("Average Number Of Transmissions");
hold off;