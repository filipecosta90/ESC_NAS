  FigHandle = figure;
  set(FigHandle, 'Position', [0, 0, 640, 480]);

name = {'CG';'EP';'IS';'MG'};
x = [1:4]; 

%%%%%%%%%%%%%%%%%%%% CG

mpi_gcc_csv_CG = min ( csvread('__compare/COMPARATION_431_cg__C__GNU.csv'));
mpi_mx_gcc_csv_CG = min ( csvread('__compare/COMPARATION_431_cg__C__GNU_MX.csv'));
mpi_icc_csv_CG = min ( csvread('__compare/COMPARATION_431_cg__C__INTEL.csv'));
mpi_mx_icc_csv_CG = min ( csvread('__compare/COMPARATION_431_cg__C__INTEL_MX.csv'));

omp_gcc_CG = min ( csvread('__compare/COMPARATION_431_cg__C__bin_gnu_4.9.0_O3.csv'));
omp_icc_CG = min ( csvread('__compare/COMPARATION_431_cg__C__bin_intel_13.0.1_O3.csv'));

seq_gcc_CG_MATRIX = csvread('__compare/COMPARATION_431_cg__C__bin_gnu_4.9.0_O3.csv');
seq_icc_CG_MATRIX = csvread('__compare/COMPARATION_431_cg__C__bin_intel_13.0.1_O3.csv');

seq_gcc_CG = seq_gcc_CG_MATRIX(1,1);
seq_icc_CG = seq_icc_CG_MATRIX(1,1);

%%%%%%%%%%%%%%%%%%%% EP 

mpi_gcc_csv_EP = min ( csvread('__compare/COMPARATION_431_ep__C__GNU.csv'));
mpi_mx_gcc_csv_EP = min ( csvread('__compare/COMPARATION_431_ep__C__GNU_MX.csv'));
mpi_icc_csv_EP = min ( csvread('__compare/COMPARATION_431_ep__C__INTEL.csv'));
mpi_mx_icc_csv_EP = min ( csvread('__compare/COMPARATION_431_ep__C__INTEL_MX.csv'));

omp_gcc_EP = min ( csvread('__compare/COMPARATION_431_ep__C__bin_gnu_4.9.0_O3.csv'));
omp_icc_EP = min ( csvread('__compare/COMPARATION_431_ep__C__bin_intel_13.0.1_O3.csv'));

seq_gcc_EP_MATRIX = csvread('__compare/COMPARATION_431_ep__C__bin_gnu_4.9.0_O3.csv');
seq_icc_EP_MATRIX = csvread('__compare/COMPARATION_431_ep__C__bin_intel_13.0.1_O3.csv');

seq_gcc_EP = seq_gcc_EP_MATRIX(1,1);
seq_icc_EP = seq_icc_EP_MATRIX(1,1);

%%%%%%%%%%%%%%%%%%%% IS

mpi_gcc_csv_IS = min ( csvread('__compare/COMPARATION_431_is__C__GNU.csv'));
mpi_mx_gcc_csv_IS = min ( csvread('__compare/COMPARATION_431_is__C__GNU_MX.csv'));
mpi_icc_csv_IS = min ( csvread('__compare/COMPARATION_431_is__C__INTEL.csv'));
mpi_mx_icc_csv_IS = min ( csvread('__compare/COMPARATION_431_is__C__INTEL_MX.csv'));

omp_gcc_IS = min ( csvread('__compare/COMPARATION_431_is__C__bin_gnu_4.9.0_O3.csv'));
omp_icc_IS = min ( csvread('__compare/COMPARATION_431_is__C__bin_intel_13.0.1_O3.csv'));

seq_gcc_IS_MATRIX = csvread('__compare/COMPARATION_431_is__C__bin_gnu_4.9.0_O3.csv');
seq_icc_EP_MATRIX = csvread('__compare/COMPARATION_431_is__C__bin_intel_13.0.1_O3.csv');

seq_gcc_IS = seq_gcc_IS_MATRIX(1,1);
seq_icc_IS = seq_icc_IS_MATRIX(1,1);

%%%%%%%%%%%%%%%%%%%% MG 

mpi_gcc_csv_MG = min ( csvread('__compare/COMPARATION_431_mg__C__GNU.csv'));
mpi_mx_gcc_csv_MG = min ( csvread('__compare/COMPARATION_431_mg__C__GNU_MX.csv'));
mpi_icc_csv_mG = min ( csvread('__compare/COMPARATION_431_mg__C__INTEL.csv'));
mpi_mx_icc_csv_MG = min ( csvread('__compare/COMPARATION_431_mg__C__INTEL_MX.csv'));

omp_gcc_mG = min ( csvread('__compare/COMPARATION_431_mg__C__bin_gnu_4.9.0_O3.csv'));
omp_icc_MG = min ( csvread('__compare/COMPARATION_431_mg__C__bin_intel_13.0.1_O3.csv'));

seq_gcc_mG_MATRIX = csvread('__compare/COMPARATION_431_mg__C__bin_gnu_4.9.0_O3.csv');
seq_icc_MG_MATRIX = csvread('__compare/COMPARATION_431_mg__C__bin_intel_13.0.1_O3.csv');

seq_gcc_MG = seq_gcc_MG_MATRIX(1,1);
seq_icc_MG = seq_icc_MG_MATRIX(1,1);





seq_gcc = [ seq_gcc_CG seq_gcc_EP seq_gcc_IS seq_gcc_MG]; 
seq_icc = [ seq_icc_CG seq_icc_EP seq_icc_IS seq_icc_MG]; 

omp_gcc = [ omp_gcc_CG omp_gcc_EP omp_gcc_IS omp_gcc_MG]; 
omp_icc = [ omp_icc_CG omp_icc_EP omp_icc_IS omp_icc_MG]; 

mpi_eth_gcc = [ mpi_gcc_csv_CG mpi_gcc_csv_EP mpi_gcc_csv_IS mpi_gcc_csv_MG]; 
mpi_eth_icc = [ mpi_icc_csv_CG mpi_icc_csv_EP mpi_icc_csv_IS mpi_icc_csv_MG]; 

mpi_mx_gcc = [ mpi_mx_gcc_csv_CG mpi_mx_gcc_csv_EP mpi_mx_gcc_csv_IS mpi_mx_gcc_csv_MG];
mpi_mx_icc = [ mpi_mx_icc_csv_CG mpi_mx_icc_csv_EP mpi_mx_icc_csv_IS mpi_mx_icc_csv_MG];


bpcombined = [seq_gcc(:), seq_icc(:), omp_gcc(:) , omp_icc(:), mpi_eth_gcc(:), mpi_eth_icc(:), mpi_mx_gcc(:), mpi_mx_icc(:) ];
hb = bar(x, bpcombined, 'grouped')
bg = [1 1 1; 0 0 0]
cores = distinguishable_colors(8,bg)
figure(1)
set(hb(1), 'FaceColor',cores(1,:))
set(hb(2), 'FaceColor',cores(2,:))
set(hb(3), 'FaceColor',cores(3,:))
set(hb(4), 'FaceColor',cores(4,:))
set(hb(5), 'FaceColor',cores(5,:))
set(hb(6), 'FaceColor',cores(6,:))
set(hb(7), 'FaceColor',cores(7,:))
set(hb(8), 'FaceColor',cores(8,:))

l = legend('cg - C','is - C','ep - C', 'mg - C' );

set(l,'FontSize',12);
%set(l,'location','southeastoutside');

ylabel('Tempo(s)');

xlabel('Nodo');

t = title({'Rela\c{c}\~ao entre Tempo Total em segundos para os kernels SEQ - CG, IS, EP, MG','Classe de dados C para compilador gcc 4.9.0 com flags de compila\c{c}\~ao -O3'},'interpreter','latex')
set(t,'FontSize',24);
set(gca,'fontsize',12);

set(gca,'xticklabel',name);

