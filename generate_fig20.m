%% Figure 20 reconstructed
T = readtable('raw_dataset.csv');
T = T(strcmp(T.figure_id,'fig20'),:);
figure('Color','w');
bar(T.number_of_attributes, [T.Our_Proposed_Scheme_ms T.SHDPCPC_ABR_ms T.ABMS_EHR_ms], 'grouped');
xlabel('Number of Attributes'); ylabel('Execution Time (ms)');
legend({'Our Proposed Scheme','SHDPCPC-ABR','ABMS-EHR'}, 'Location','northwest');
grid on; box on;
exportgraphics(gcf, fullfile('generated_figures','fig20_reconstructed.png'), 'Resolution', 300);
