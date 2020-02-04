function combustion(gas1, gas2)
    
    load('data');
    fprintf('%s\n', 'Data for combustion has been loaded')
    for i = 1:imax
        phi1(i) = Rrange(i);
        x1 = zeros(nsp1, 1);
        x1(ic3h8, 1) = phi1(i);
        x1(io2, 1) = 2.0;
        x1(in2, 1) = 7.52;
        set(gas1, 'T', 298, 'P', oneatm, 'MoleFractions', x1);
        equilibrate(gas1, 'TV');
        % tad1(i) = temperature(gas1);
        pres1(i) = pressure(gas1);
        % xeq1(:, i) = moleFractions(gas1);

        phi2(i) = Rrange(i);
        x2 = zeros(nsp2, 1);
        x2(ich4, 1) = phi2(i);
        x(io2, 1) = 2.0;
        set(gas2, 'T', 298, 'P', oneatm, 'MoleFractions', x2);
        equilibrate(gas2, 'TV');
        % tad2(i) = temperature(gas2);
        pres2(i) = pressure(gas2);
        % xeq2(:,i) = moleFractions(gas2);
    end

    save ('data_combustion');
    fprintf('%s\n', 'combustion calculation and saving is completed')
