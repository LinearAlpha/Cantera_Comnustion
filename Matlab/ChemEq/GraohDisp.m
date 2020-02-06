function GraohDisp()

    load('data')

    figure('name', 'Adiabatic Flame Temperture', 'NumberTitle', 'off');
    subplot(1, 2, 1)
    hold on
    grid on
    grid minor
    xlim([0.4 2.5]);
    plot(phi, tempF_2, 'LineWidth', 2);
    plot(phi, temp_1atm, 'LineWidth', 2);
    plot(phi, temp_50atm, 'LineWidth', 2);
    plot(phi, temp_100atm, 'LineWidth', 2);
    legend('CH4 + O2', 'C3H8 + O2 + N2 1atm', 'C3H8 + O2 + N2 50atm', ...
        'C3H8 + O2 + N2 100atm');
    xlabel('Equivalence Ratio');
    ylabel('Temperture (K)');
    title({'Propane and Air Mixture Adiabatic Flame Compare', ...
        'Temperture (K) VS Ration'});
    hold off

    subplot(1, 2, 2)
    hold on
    grid on
    grid minor
    xlim([0.4 2.5]);
    tmp = molFF(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    tmp = molFF_1atm(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    tmp = molFF_50atm(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    tmp = molFF_100atm(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    legend('CH4 + O2', 'C3H8 + O2 + N2 1atm', 'C3H8 + O2 + N2 50atm', ...
        'C3H8 + O2 + N2 100atm');
    xlabel('Equivalence Ratio');
    ylabel('Mole Fraction');
    title({'Equilibrium Flame CO2 only', 'Mole Fraction VS Equivalence Ratio'});
    hold off

    figure('name', 'Adiabatic Combustion Temperture', 'NumberTitle', 'off')
    subplot(1, 2, 1);
    hold on
    grid on
    grid minor
    plot(phi, pres_T, 'LineWidth', 2);
    plot(phi, pres_T1, 'LineWidth', 2);
    plot(phi, pres_T2, 'LineWidth', 2);
    plot(phi, pres_T3, 'LineWidth', 2);
    xlim([0.4 2.5]);
    legend('CH4 + O2 873.15 K', 'C3H8 + O2 + N2 873.15 K', ...
        'C3H8 + O2 + N2 683.24 K', 'C3H8 + O2 + N2 493.33 K');
    xlabel('Equivalence Ratio');
    ylabel('Pressure (Pa)');
    title({'Propane and Air Mixture Adiabatic Combustion Compare', ...
        'Pressure (Pa) VS Ration'});
    hold off

    subplot(1, 2, 2)
    hold on
    grid on
    grid minor
    xlim([0.4 2.5]);
    tmp = molFC_T(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    tmp = molFC_T1(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    tmp = molFC_T2(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    tmp = molFC_T3(6, :);
    semilogy(phi, tmp, 'LineWidth', 2);
    xlabel('Equivalence Ratio');
    ylabel('Mole Fraction');
    title({'Equilibrium Composition CO2 only', ...
        'Mole Fraction VS Equivalence Ratio'});
    legend('CH4 + O2 873.15 K', 'C3H8 + O2 + N2 873.15 K', ...
        'C3H8 + O2 + N2 683.24 K', 'C3H8 + O2 + N2 493.33 K');
    hold off

    % figure('name', 'Propane and Air Mixture Adiabatic Flame', 'NumberTitle', 'off');
    % hold on
    % grid on
    % plot(phi, temp_1atm);
    % plot(phi, temp_50atm);
    % plot(phi, temp_100atm);
    % xlim([0.4 2.5]);
    % legend('1atm', '50atm', '100atm');
    % xlabel('Equivalence Ratio');
    % ylabel('Temperture (K)');
    % title({['Propane and Air Mixture Adiabatic Flame: ', 'C3H6 + O2 + N2 Only'], 'Temperture (K) VS Ration'});
    % hold off

end
