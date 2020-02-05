function GraohDisp (x)
    load('data')

    if x == 1

        figure('name', 'Propane and Air Mixture Adiabatic Flame',...
                'NumberTitle', 'off');
        hold on
        plot(phi, tempF_2, 'r');
        plot(phi, temp_1atm, 'b');
        plot(phi, temp_50atm, 'g');
        plot(phi, temp_100atm, 'k');
        grid on
        xlim([0.4 2.5]);
        legend('CH4 + O2', 'C3H8 + O2 + N2 1atm', 'C3H8 + O2 + N2 50atm' , 'C3H8 + O2 + N2 100atm');
        hold off
        
    elseif x == 2
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
