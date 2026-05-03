%% Figure 17 reconstructed
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig17'),:);
figure('Color','w');
plot(T.number_of_nodes, T.Medblock, '-o', 'LineWidth',1.6); hold on;
plot(T.number_of_nodes, T.Medrec, '-s', 'LineWidth',1.6);
plot(T.number_of_nodes, T.Medchain, '-d', 'LineWidth',1.6);
plot(T.number_of_nodes, T.Ali_et_al, '-^', 'LineWidth',1.6);
plot(T.number_of_nodes, T.Almaiah_et_al, '-o', 'LineWidth',1.6);
xlabel('Number of Nodes'); ylabel('Encryption Time (ms)');
legend({'Medblock','Medrec','Medchain','Ali et al.','Almaiah et al.'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig17_reconstructed.png'), 'Resolution', 300);
