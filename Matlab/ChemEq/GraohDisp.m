function GraohDisp()

    load('data')

    figure('name', 'Adiabatic Flame Temperture', 'NumberTitle', 'off');
    hold on
    grid on
    plot(phi, tempF_2, 'r');
    plot(phi, temp_1atm, 'b');
    plot(phi, temp_50atm, 'g');
    plot(phi, temp_100atm, 'k');
    xlim([0.4 2.5]);
    legend('CH4 + O2', 'C3H8 + O2 + N2 1atm', 'C3H8 + O2 + N2 50atm', 'C3H8 + O2 + N2 100atm');
    xlabel('Equivalence Ratio');
    ylabel('Temperture (K)');
    title({'Propane and Air Mixture Adiabatic Flame Compare', 'Temperture (K) VS Ration'});
    hold off

    figure('name', 'Propane and Air Mixture Adiabatic Flame', 'NumberTitle', 'off');
    hold on
    grid on
    plot(phi, temp_1atm, 'b');
    plot(phi, temp_50atm, 'g');
    plot(phi, temp_100atm, 'k');
    xlim([0.4 2.5]);
    legend('1atm', '50atm', '100atm');
    xlabel('Equivalence Ratio');
    ylabel('Temperture (K)');
    title({['Propane and Air Mixture Adiabatic Flame: ', 'C3H6 + O2 + N2 Only'], 'Temperture (K) VS Ration'});
    hold off

    figure('name', 'Adiabatic Combustion Temperture', 'NumberTitle', 'off');
    hold on
    grid on
    plot(phi, pres_T, 'r');
    plot(phi, pres_T1, 'b');
    plot(phi, pres_T2, 'g');
    plot(phi, pres_T3, 'k');
    xlim([0.4 2.5]);
    legend('CH4 + O2', 'C3H8 + O2 + N2 298K', 'C3H8 + O2 + N2 1490k', 'C3H8 + O2 + N2 2980K');
    xlabel('Equivalence Ratio');
    ylabel('Pressure (Pa)');
    title({'Propane and Air Mixture Adiabatic Combustion Compare', 'Pressure (Pa) VS Ration'});
    hold off

end