%% Figure 15 reconstructed
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig15'),:);
figure('Color','w');
plot(T.number_of_nodes, T.Proposed_Approach, '-o', 'LineWidth',1.6); hold on;
plot(T.number_of_nodes, T.MedRec, '-s', 'LineWidth',1.6);
plot(T.number_of_nodes, T.MedChain, '-d', 'LineWidth',1.6);
plot(T.number_of_nodes, T.MedBlock, '-^', 'LineWidth',1.6);
xlabel('Number of Nodes'); ylabel('Encryption Time (ms)');
legend({'Proposed Approach','MedRec','MedChain','MedBlock'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig15_reconstructed.png'), 'Resolution', 300);
