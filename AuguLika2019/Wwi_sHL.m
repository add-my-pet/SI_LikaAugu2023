
    close all
    clear all
    
    shstat_options('default');
    shstat_options('y_transform', 'none');
    shstat_options('x_transform', 'log10');
    vars = read_allStat('E_Hb', 'E_Hp', 'L_b', 'L_p', 'Ww_i'); 
    EHLb = vars(:,1) ./ vars(:,3).^3; EHLp = vars(:,2) ./ vars(:,4).^3;  Wwi = vars(:,5);
    sH = vars(:,1) ./ vars(:,2); sHL = EHLb ./ EHLp;
    ytxt = 's_{HL}^{bp}, -';
    xtxt = '_{10}log W_w^\infty, g';
    v1 = Wwi; v2 = sHL; vtxt = 'Wwi_sHL';

    figure(1)
    legend_RXSE = {...
        {'o', 8, 3, [1 0 0], [1 0 0]}, 'Echinodermata'; ....
        {'o', 8, 3, [0 0 0], [0 0 0]}, 'Radiata'; ...
        {'o', 8, 3, [0 0 0], [0 0 1]}, 'Xenacoelomorpha'; ...
        {'o', 8, 3, [0 0 1], [0 0 1]}, 'Spiralia'; ...
        {'o', 8, 3, [1 0 1], [1 0 1]}, 'Ecdysozoa'; ....
    };
    [Hfig Hleg] = shstat([v1, v2], legend_RXSE, 'invertebrates', 1); 
    figure(Hfig)
    xlabel(xtxt)      
    ylabel(ytxt)
    %saveas(gca,[vtxt, '_RXSE.png'])
    %saveas(Hleg,['legend_', vtxt, '_RXSE.png'])
    
    figure(3)
    legend_fish = {...
        {'o', 8, 3, [0 0 0], [0 0 0]}, 'Agnatha'; ...
        {'o', 8, 3, [1 0 1], [0 0 1]}, 'Latimeria'; ....
        {'o', 8, 3, [1 0 1], [1 0 0]}, 'Dipnoi'; ....
        {'o', 8, 3, [1 0 0], [1 0 0]}, 'Chondrichthyes'; ...
        {'o', 8, 3, [1 0 1], [1 0 1]}, 'Amphibia'; ....
        {'o', 8, 3, [0 0 1], [0 0 1]}, 'Actinopterygii'; ...
    };
    [Hfig Hleg] = shstat([v1, v2], legend_fish, 'fish & amphibia', 3); 
    figure(Hfig)
    xlabel(xtxt)      
    ylabel(ytxt)
    %saveas(gca,[vtxt, '_fish.png'])
    %saveas(Hleg,['legend_', vtxt, '_fish.png'])

    figure(5)
    legend_aves = {...
        {'o', 8, 3, [0 0 0], [0 0 0]}, 'Lepidosauria'; ....
        {'o', 8, 3, [1 0 0], [1 0 0]}, 'Aves'; ....
        {'o', 8, 3, [0 0 1], [0 0 1]}, 'Testudines'; ....
        {'o', 8, 3, [1 0 1], [0 0 1]}, 'Crocodilia'; ....
        {'o', 8, 3, [1 0 1], [1 0 1]}, 'Avemetatarsalia'; ....
    };
    [Hfig Hleg] = shstat([v1, v2], legend_aves, 'sauropsids', 5); 
    figure(Hfig) 
    figure(Hfig)
    xlabel(xtxt)      
    ylabel(ytxt)
    %saveas(gca,[vtxt, '_aves.png'])
    %saveas(Hleg,['legend_', vtxt, '_aves.png'])

    figure(7)
    legend_mamm = {...
       {'o', 8, 3, [0 0 0], [0 0 0]}, 'Prototheria'; ...  
       {'o', 8, 3, [0 0 1], [0 0 0]}, 'Marsupialia'; ...
       {'o', 8, 3, [0 0 1], [0 0 1]}, 'Xenarthra'; ...
       {'o', 8, 3, [0 0 1], [1 0 1]}, 'Afrotheria'; ....
       {'o', 8, 3, [0 0 1], [1 0 0]}, 'Laurasiatheria'; ....
       {'o', 8, 3, [1 0 1], [1 0 1]}, 'Gliriformes'; ....
       {'o', 8, 3, [1 0 1], [1 0 0]}, 'Scandentia'; ....
       {'o', 8, 3, [1 0 0], [1 0 0]}, 'Dermoptera'; ....
       {'o', 8, 3, [1 0 0], [1 .5 .5]}, 'Primates'; ....
    };
    [Hfig Hleg] = shstat([v1, v2], legend_mamm, 'mammals', 7); 
    figure(Hfig)
    xlabel(xtxt)      
    ylabel(ytxt)
    %saveas(gca,[vtxt, '_mamm.png'])
    %saveas(Hleg,['legend_', vtxt, '_mamm.png'])
