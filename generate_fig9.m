%% Figure 9: Number of nodes vs count
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig9'),:);

figure('Color','w');
plot(T.node_count, T.permissionless_count, '-s', 'LineWidth',1.6); hold on;
plot(T.node_count, T.private_count, '-o', 'LineWidth',1.6);
plot(T.node_count, T.proposed_count, '-^', 'LineWidth',1.6);
xlabel('Number of Nodes'); ylabel('Count');
legend({'Permissionless','Private','Proposed'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig9_reconstructed.png'), 'Resolution', 300);
