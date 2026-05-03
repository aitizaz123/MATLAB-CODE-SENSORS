%% Figure 11: displacement vs sensors output
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig11'),:);

x = T.displacement_mm;
Y = [T.sensor_output T.speed T.AA];

figure('Color','w');
bar(x, Y, 'grouped');
xlabel('Displacement (mm)');
ylabel('Sensors Output');
legend({'Sensor Output','Speed','AA'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig11_reconstructed.png'), 'Resolution', 300);
