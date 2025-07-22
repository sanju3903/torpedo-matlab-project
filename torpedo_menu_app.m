paramnames = {'Trial No','Launch Time (s)','Water Depth (m)','Speed (m/s)','Distance (m)','Accuracy (%)'};
color = char('b','k','r','m','c','g','y');
col_id = 1;
menu_id = 0;
param_cnt = length(paramnames);
exitflag = 1;

trailno = input('Enter trial number: ', 's');
fprintf('Application started\n');
fprintf('Data loading started...\n');

[num, txt, raw] = xlsread('Torpedo_Trials_Report.xlsx');

fprintf('Data loading completed\n');

while exitflag
    menu_id = menu(['EHWT Trial: ', trailno], paramnames);

    if (menu_id >= 1 && menu_id <= param_cnt)
        titleStr = [paramnames{menu_id}, '       EHWT Trial: ', trailno];
        figure;
        title(titleStr, 'FontSize', 13);
        column = menu_id;  % Since num is numeric, and headers were removed, adjust indexing
        plot(num(:,1), num(:, column), color(col_id));  % X = Trial No, Y = selected param
        xlabel('Torpedo Time (s)');
        ylabel(paramnames{menu_id});
        grid on;
        zoom on;
    else
        % Provide custom options beyond the menu
        choice = menu('More Options', 'Hold On (Overlay)', 'Hold Off (New Plot)', 'Exit Application');
        if choice == 1
            hold on;
            col_id = mod(col_id, size(color, 1)) + 1;  % Cycle through colors
        elseif choice == 2
            hold off;
            col_id = 1;
        elseif choice == 3
            close all;
            exitflag = 0;
        end
    end
end

close all;
clear;
fprintf('Application ended\n');
