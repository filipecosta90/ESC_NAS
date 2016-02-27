  FigHandle = figure;
  set(FigHandle, 'Position', [0, 0, 640, 480]);

name = {'compute 431';'compute 641';'compute 652';'compute 662'};
x = [1:4]; 
cg_a = csvread('COMPARATION_cg__A_bin_gnu_4.9.0_O3.csv');
cg_b = csvread('COMPARATION_cg__B_bin_gnu_4.9.0_O3.csv');
cg_c = csvread('COMPARATION_cg__C_bin_gnu_4.9.0_O3.csv');
cg_s = csvread('COMPARATION_cg__S_bin_gnu_4.9.0_O3.csv');
is_a = csvread('COMPARATION_is__A_bin_gnu_4.9.0_O3.csv');
is_b = csvread('COMPARATION_is__B_bin_gnu_4.9.0_O3.csv');
is_c = csvread('COMPARATION_is__C_bin_gnu_4.9.0_O3.csv');
is_s = csvread('COMPARATION_is__S_bin_gnu_4.9.0_O3.csv');
ep_a = csvread('COMPARATION_ep__A_bin_gnu_4.9.0_O3.csv');
ep_b = csvread('COMPARATION_ep__B_bin_gnu_4.9.0_O3.csv');
ep_c = csvread('COMPARATION_ep__C_bin_gnu_4.9.0_O3.csv');
ep_s = csvread('COMPARATION_ep__S_bin_gnu_4.9.0_O3.csv');
mg_a = csvread('COMPARATION_mg__A_bin_gnu_4.9.0_O3.csv');
mg_b = csvread('COMPARATION_mg__B_bin_gnu_4.9.0_O3.csv');
%mg_c = csvread('COMPARATION_mg__C_bin_gnu_4.9.0_O3.csv');
mg_s = csvread('COMPARATION_mg__S_bin_gnu_4.9.0_O3.csv');

mops_cg_a = cg_a ( :, [2]); 
mops_cg_b = cg_b ( :, [2]); 
mops_cg_c = cg_c ( :, [2]); 
mops_cg_s = cg_s ( :, [2]); 
 mops_is_a = is_a ( :, [2]); 
mops_is_b = is_b ( :, [2]); 
mops_is_c = is_c ( :, [2]); 
mops_is_s = is_s ( :, [2]); 
mops_ep_a = ep_a ( :, [2]); 
mops_ep_b = ep_b ( :, [2]); 
mops_ep_c = ep_c ( :, [2]); 
mops_ep_s = ep_s ( :, [2]); 
mops_mg_a = mg_a ( :, [2]); 
mops_mg_b = mg_b ( :, [2]); 
%mops_mg_c = mg_c ( :, [3]); 
mops_mg_s = mg_s ( :, [2]); 

bpcombined = [mops_cg_s(:), mops_cg_a(:), mops_cg_b(:) , mops_cg_c(:) ];
hb = bar(x, bpcombined, 'grouped')
bg = [1 1 1; 0 0 0]
cores = distinguishable_colors(4,bg)
figure(1)
set(hb(1), 'FaceColor',cores(1,:))
set(hb(2), 'FaceColor',cores(2,:))
set(hb(3), 'FaceColor',cores(3,:))
set(hb(4), 'FaceColor',cores(4,:))



l = legend('cg - S','cg - A','cg - B', 'cg - C' );

set(l,'FontSize',12);
%set(l,'location','southeastoutside');

ylabel('Tempo(s)');

xlabel('Nodo');

t = title({'Rela\c{c}\~ao entre Tempo Total em segundos para kernel SEQ - CG\newline','Classes de dados S, A, B e C para compilador gcc 4.9.0 com flags de compila\c{c}\~ao -O3'},'interpreter','latex')
set(t,'FontSize',24);
set(gca,'fontsize',12);

set(gca,'xticklabel',name);

