%*******************************************************************************
% Project: Equilibrium Combustion Product Project
% File: ChemEq.m
% Authors: Minpyo Kim
% Date: 02/03/2020
% Description: This script is calculating two different scenario of combustion
%              The first scenario  is Propane and Air mixture
%              The second scenario is Methane and Oxygen mixture
% Bofore  use it: Please install Cantera from
%                 https://cantera.org/install/index.html
%*******************************************************************************
clear all
clear up
close all
clc

fprintf('%s\n', 'ME 5446: Ptoject 1')
fprintf('%s\n', 'Author: Min Kim')
fprintf('%s %s %s\n', 'This program is using Cantera')

% Recalling mashing
g = IdealGasMix('gri30.cti');
phi = (0.4:0.01:2.5);

atm1 = 101325.0;
atm50 = 101325.0 * 50;
atm100 = 101325.0 * 100;

temp1 = 1173.15; % ignition temperture of methane 537 C
temp2 = 1273.15; % 437 C
temp3 = 1373.15; % 537 C 

% This is calc for flame C3H8 + air
[temp_1atm, molFF_1atm, gasF_1atm] = flame(g, phi, atm1, 1);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasF_1atm()
[temp_50atm, molFF_50atm, gasF_50atm] = flame(g, phi, atm50, 1);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasF_50atm()
[temp_100atm, molFF_100atm, gasF_100atm] = flame(g, phi, atm100, 1);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasF_100atm()

% This is calc for flame CH3 + O2
[tempF_2, molFF, gasF2] = flame(g, phi, atm1, 2);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasF2()

% This is calc for combustion C3H8 + air
[pres_T1, molFC_T1, gasC_T1] = combustion(g, phi, temp1, 1);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasC_T1()
[pres_T2, molFC_T2, gasC_T2] = combustion(g, phi, temp2, 1);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasC_T2()
[pres_T3, molFC_T3, gasC_T3] = combustion(g, phi, temp3, 1);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasC_T3()

% This is calc for combustion CH4 + O2
[pres_T, molFC_T, gasC2_T] = combustion(g, phi, temp1, 2);
fprintf('%s\n', 'C3H8 + aire flame temp at 1 atm complete')
gasC2_T()

% Clearing initial gas object
clear g atm1 atm50 atm100 temp1 temp2 temp3 ans

save('data');

GraohDisp();

