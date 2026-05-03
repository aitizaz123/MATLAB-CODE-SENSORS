%% Figure 10: 3D user classification
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig10'),:);

figure('Color','w');
classes = unique(T.user_class, 'stable');
markers = {'o','o','o'};
for i = 1:numel(classes)
    idx = strcmp(T.user_class, classes{i});
    scatter3(T.threshold_value(idx), T.mal_nodes(idx), T.security_level(idx), 36, 'filled'); hold on;
end
xlabel('Threshold Value');
ylabel('Mal Nodes');
zlabel('Security Level');
legend(classes, 'Location','northwest');
grid on; box on; view(35,20);
exportgraphics(gcf, fullfile('generated_figures','fig10_reconstructed.png'), 'Resolution', 300);
