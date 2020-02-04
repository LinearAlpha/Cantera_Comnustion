function GraohDisp (x)

    if x == 1
        load('data_flame');

        figure('name', 'Propane and Air Mixture Adiabatic Flame',...
                'NumberTitle', 'off');
        subplot(1, 2, 1);

        plot(phi1, tad1);
        grid on
        xlim([0.4 2.5]);

        xlabel('Equivalence Ratio');
        ylabel('Temperature (K)');
        title({'Propane and Air Mixture Adiabatic Flame: C3H6 + O2 + N2 ', ...
            '(Temperature (K) VS Ration)'});
        subplot(1, 2, 2);
        plot(phi2, tad2);
        grid on
        xlim([0.4 2.5]);

        xlabel('Equivalence Ratio');
        ylabel('Temperature (K)');
        title({'Methane and Oxygen Mixture Adiabatic Flame: CH4 + O2', ...
            '(Temperature (K) VS Ration)'});
    
        figure('name', 'Adiabatic Flame Comparetion', ...
                'NumberTitle', 'off');
        hold on
        plot(phi1, tad1, 'r');
        plot(phi2, tad2, 'b');
        grid on
        xlim([0.4 2.5]);
        xlabel('Equivalence Ratio');
        ylabel('Temperature (K)');
        title({'Adiabatic Flame Temperature Comparetion', ...
             '(Temperature (K) VS Ration)'});
        legend('C3H6 + O2 + N2', 'CH4 + O2');
        hold off
    
    elseif x == 2
        load('data_combustion');
        figure('name', 'Propane and Air Mixture Adiabatic Combustion',...
        'NumberTitle', 'off');
        subplot(1, 2, 1);
        plot(phi1, pres1);
        grid on
        xlim([0.4 2.5]);
        xlabel('Equivalence Ratio');
        ylabel('Pressure (Pa)');
        title({['Propane and Air Mixture Adiabatic Combustion: ', ...
                'C3H6 + O2 + N2'], '(Pressure (Pa) VS Ration)'});
        subplot(1, 2, 2)
        plot(phi2, pres2);
        grid on
        xlim([0.4 2.5]);
        xlabel('Equivalence Ratio');
        ylabel('Pressure (Pa)');
        title({'Methane and Oxygen Mixture Adiabatic Combustion: CH4 + O2', ...
            '(Pressure (Pa) VS Ration)'});
    
        figure ('name', 'Adiabatic Combustion Comparetion', ...
                'NumberTitle', 'off');
        hold on
        plot(phi1, pres1, 'r');
        plot(phi2, pres2, 'b');
        grid on
        xlim([0.4 2.5]);
        xlabel('Equivalence Ratio');
        ylabel('Pressure (Pa)');
        title({'Adiabatic Combustion Comparetion',...
             '(Pressure (Pa) VS Ration)'});
        legend('C3H6 + O2 + N2', 'CH4 + O2');
        
    else
        disp('um.... how you got into this menu without editiing lol')
    end
