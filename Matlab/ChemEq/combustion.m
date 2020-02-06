function [pres, molF, gas] = combustion(gas, phi, iniTemp, num)

    nsp = nSpecies(gas);
    imax = size(phi, 2);
    rO2 = 2;
    rN2 = 7.52;
    pres = zeros(1, imax);
    molF = zeros(53, imax);

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
            set(gas, 'Temperature', iniTemp, 'Pressure', 101325.0, 'MoleFractions', x);
            equilibrate(gas, 'TV');
            %temp(i) = temperature(gas);
            pres(i) = pressure(gas);
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
            set(gas, 'Temperature', iniTemp, 'Pressure', 101325.0, 'MoleFractions', x);
            equilibrate(gas, 'TV');
            %temp(i) = temperature(gas);
            pres(i) = pressure(gas);
            molF(:, i) = moleFractions(gas);
        end

    end

end
