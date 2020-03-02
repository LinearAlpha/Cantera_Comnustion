%{
Project: Equilibrium Combustion Product Project
Function: flame.m
Authors: Minpyo Kim
Description: This function calcuates ad
%}


function [temp, molF, gas] = flame(gas, phi, inipres, num)

    nsp = nSpecies(gas);
    imax = size(phi, 2);
    rO2 = 2;
    rN2 = 7.52;
    initemp = 493.333;
    temp = zeros(1, imax);

    if num == 1
        % find methane, nitrogen, and oxygen indices
        ic3h8 = speciesIndex(gas, 'C3H8');
        io2 = speciesIndex(gas, 'O2');
        in2 = speciesIndex(gas, 'N2');

        for i = 1:imax
            x = zeros(nsp, 1);
            x(ic3h8, 1) = phi(i);
            x(io2, 1) = rO2;
            x(in2, 1) = rN2;
            set(gas, 'Temperature', initemp, 'Pressure', inipres, 'MoleFractions', x);
            equilibrate(gas, 'HP');
            temp(i) = temperature(gas);
            %pres(i) = pressure(gas);
            molF(:, i) = moleFractions(gas);
        end

    elseif num == 2
        % find methane, nitrogen, and oxygen indices
        ich4 = speciesIndex(gas, 'CH4');
        io2 = speciesIndex(gas, 'O2');

        for i = 1:imax
            x = zeros(nsp, 1);
            x(ich4, 1) = phi(i);
            x(io2, 1) = rO2;
            set(gas, 'Temperature', initemp, 'Pressure', inipres, 'MoleFractions', x);
            equilibrate(gas, 'HP');
            temp(i) = temperature(gas);
            %pres(i) = pressure(gas);
            molF(:, i) = moleFractions(gas);
        end

    end

end
