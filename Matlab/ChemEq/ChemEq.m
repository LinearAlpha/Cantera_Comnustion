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

sprintf("%s\n", 'ME 5446: Ptoject 1')
sprintf("%s\n", 'Author: Min Kim')
sprintf("%s %s %s\n", 'This program is using Cantera`s', ...
        'functrions that before run this program please install', ...
        'Cantera.')

% Recalling mashing
g = GRI30;
gas1 = g;
gas2 = g;

% setting reactant air and propane
ic3h8 = speciesIndex(gas1, 'C3H8');
io2 = speciesIndex(gas1, 'O2');
in2 = speciesIndex(gas1, 'N2');

% setting reactant Oxygen and mathane
ich4 = speciesIndex(gas2, 'CH4');
io2 = speciesIndex(gas2, 'O2');

nsp1 = nSpecies(gas1); %numver of spsices
nsp2 = nSpecies(gas2);

phi1 = []; % Equivalence Ratio of Propane and Air mixture
phi2 = []; % Equivalence Ratio of Methane and Oxygen mixture

Rrange = ([0.4:0.01:2.6]); % Ratio range
imax = numel(Rrange); % number of setp

save('data');
sprintf("%s\n", 'Inisial setting and saving is complete')

flame(gas1, gas2);
GraohDisp(1);
combustion(gas1, gas2);
GraohDisp(2);