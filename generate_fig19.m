%% Figure 19 reconstructed
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig19'),:);
figure('Color','w');
bar(T.number_of_attributes, [T.time_complexity_microsec T.number_of_transactions], 'grouped');
xlabel('Number of Attributes'); ylabel('Value');
legend({'Time Complexity','Number of Transaction'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig19_reconstructed.png'), 'Resolution', 300);
