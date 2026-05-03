%% Figure 18 reconstructed
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig18'),:);
figure('Color','w');
plot(T.d2d_distance, T.C10, 'LineWidth',1.2); hold on;
plot(T.d2d_distance, T.C9, 'LineWidth',1.2);
plot(T.d2d_distance, T.C8, 'LineWidth',1.2);
plot(T.d2d_distance, T.C3, 'LineWidth',1.2);
plot(T.d2d_distance, T.C5, 'LineWidth',1.2);
plot(T.d2d_distance, T.C4, 'LineWidth',1.2);
xlabel('D2D Distance'); ylabel('No. Transactions');
legend({'C=10','C=9','C=8','C=3','C=5','C=4'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig18_reconstructed.png'), 'Resolution', 300);
