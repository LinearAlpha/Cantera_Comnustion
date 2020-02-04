disp("propane and air");
%Recalling mashing
g = GRI30;
gas1 = g;
%setting tem ans pressure
set(g, 'T', 298, 'P', 1);
%setting reactant air and propane
ic3h8 = speciesIndex (gas1, 'C3H8');
io2 = speciesIndex(gas1, 'O2');
in2 = speciesIndex(gas1, 'N2');

nsp = speciesIndex(nSpecies); %numver of spsices
phi = []; 
