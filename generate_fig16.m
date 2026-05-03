%% Figure 16 reconstructed
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig16'),:);
figure('Color','w');
plot(T.average_network_delay, T.Proposed, '-s', 'LineWidth',1.6); hold on;
plot(T.average_network_delay, T.WEAR, '-o', 'LineWidth',1.6);
plot(T.average_network_delay, T.RDA, '-^', 'LineWidth',1.6);
plot(T.average_network_delay, T.EDA, '-v', 'LineWidth',1.6);
xlabel('Average Network Delay'); ylabel('Computing Time');
legend({'Proposed','WEAR','RDA','EDA'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig16_reconstructed.png'), 'Resolution', 300);
