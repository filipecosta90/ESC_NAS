 FigHandle = figure;
  set(FigHandle, 'Position', [0, 0, 640, 480]);

name = {'compute 431';'compute 641';'compute 652';'compute 662'};
x = [1:4]; 
gnu_6_0 = csvread('COMPARATION_is__C_bin_gnu_4.4.6_O0.csv');
gnu_6_2 = csvread('COMPARATION_is__C_bin_gnu_4.4.6_O2.csv');
gnu_6_3 = csvread('COMPARATION_is__C_bin_gnu_4.4.6_O3.csv');
gnu_9_0 = csvread('COMPARATION_is__C_bin_gnu_4.9.0_O0.csv');
gnu_9_2 = csvread('COMPARATION_is__C_bin_gnu_4.9.0_O2.csv');
gnu_9_3 = csvread('COMPARATION_is__C_bin_gnu_4.9.0_O3.csv');
intel_0 = csvread('COMPARATION_is__C_bin_intel_13.0.1_O0.csv');
intel_2 = csvread('COMPARATION_is__C_bin_intel_13.0.1_O2.csv');
intel_3 = csvread('COMPARATION_is__C_bin_intel_13.0.1_O3.csv');
mops_6_0 = gnu_6_0 ( :, [3]); 
mops_6_2 = gnu_6_2 ( :, [3]); 
mops_6_3 = gnu_6_3 ( :, [3]); 
mops_9_0 = gnu_9_0 ( :, [3]); 
mops_9_2 = gnu_9_2 ( :, [3]); 
mops_9_3 = gnu_9_3 ( :, [3]); 
mops_i_0 = intel_0 ( :, [3]); 
mops_i_2 = intel_2 ( :, [3]); 
mops_i_3 = intel_3 ( :, [3]); 

bpcombined = [mops_6_0(:), mops_6_2(:), mops_6_3(:) , mops_9_0(:) , mops_9_2(:), mops_9_3(:), mops_i_0(:) , mops_i_2(:), mops_i_3(:)];
hb = bar(x, bpcombined, 'grouped')
bg = [1 1 1; 0 0 0]
cores = distinguishable_colors(27,bg)
figure(1)
set(hb(1), 'FaceColor',cores(1,:))
set(hb(2), 'FaceColor',cores(2,:))
set(hb(3), 'FaceColor',cores(3,:))
set(hb(4), 'FaceColor',cores(4,:))
set(hb(5), 'FaceColor',cores(5,:))
set(hb(6), 'FaceColor',cores(6,:))
set(hb(7), 'FaceColor',cores(7,:))
set(hb(8), 'FaceColor',cores(8,:))
set(hb(9), 'FaceColor',cores(9,:))


l = legend('gcc 4.4.6 -00','gcc 4.4.6 -O2','gcc 4.4.6 -O3', 'gcc 4.9.0 -O0','gcc 4.9.0 -O2','gcc 4.9.0 -O3','icc 13.0.1 -O0', 'icc 13.0.1 -O2', 'icc 13.0.1 -O3' );
set(l,'Location','BestOutside')
set(l,'FontSize',12);
ylabel('MOP/s');

xlabel('Nodo');

t = title({'Rela\c{c}\~ao entre MOP/s para kernel SEQ - IS class C',' para diferentes compiladores e flags de compila\c{c}\~ao'},'interpreter','latex');
set(t,'FontSize',24);
set(gca,'fontsize',12);

set(gca,'xticklabel',name);

