figure
name = {'compute 431';'compute 641';'compute 652';'compute 662'};
x = [1:4]; 
gnu_6_0 = csvread('COMPARATION_cg__C_bin_gnu_4.4.6_O0.csv');
gnu_6_2 = csvread('COMPARATION_cg__C_bin_gnu_4.4.6_O2.csv');
gnu_6_3 = csvread('COMPARATION_cg__C_bin_gnu_4.4.6_O3.csv');
gnu_9_0 = csvread('COMPARATION_cg__C_bin_gnu_4.9.0_O0.csv');
gnu_9_2 = csvread('COMPARATION_cg__C_bin_gnu_4.9.0_O2.csv');
gnu_9_3 = csvread('COMPARATION_cg__C_bin_gnu_4.9.0_O3.csv');
intel_0 = csvread('COMPARATION_cg__C_bin_intel_13.0.1_O0.csv');
intel_2 = csvread('COMPARATION_cg__C_bin_intel_13.0.1_O2.csv');
intel_3 = csvread('COMPARATION_cg__C_bin_intel_13.0.1_O3.csv');

mops_6_0 = gnu_6_0 ( :, [3]); 
mops_6_2 = gnu_6_2 ( :, [3]); 
mops_6_3 = gnu_6_3 ( :, [3]); 
mops_9_0 = gnu_9_0 ( :, [3]); 
mops_9_2 = gnu_9_2 ( :, [3]); 
mops_9_3 = gnu_9_3 ( :, [3]); 
mops_i_0 = intel_0 ( :, [3]); 
mops_i_2 = intel_2 ( :, [3]); 
mops_i_3 = intel_3 ( :, [3]); 


bpcombined = [time(:), mops(:),];
hb = bar(x, bpcombined, 'grouped')
figure(1)
set(hb(1), 'FaceColor','r')
set(hb(2), 'FaceColor','b')


title('Success Probability of BPSK,QPSK,16-QPSK,16-QAM & 64-QAM')
set(gca,'xticklabel',name)
