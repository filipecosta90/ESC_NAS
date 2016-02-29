
name = {'CG','IS','EP','MG'};
x = [1:4]; 
%%%%%%%%%%%%%%%%%%%% CG

mpi_gcc_CG_CSV = csvread('__compare/COMPARATION_431_cg__C__GNU.csv');
mpi_gcc_CG =  max ( mpi_gcc_CG_CSV ( :, [3]) ); 

mpi_mx_gcc_CG_CSV = csvread('__compare/COMPARATION_431_cg__C__GNU_MX.csv');
mpi_mx_gcc_CG =  max ( mpi_mx_gcc_CG_CSV ( :, [3]) ); 

mpi_icc_CG_CSV = csvread('__compare/COMPARATION_431_cg__C__INTEL.csv');
mpi_icc_CG =  max ( mpi_icc_CG_CSV ( :, [3]) ); 

mpi_mx_icc_CG_CSV = csvread('__compare/COMPARATION_431_cg__C__INTEL_MX.csv');
mpi_mx_icc_CG =  max ( mpi_mx_icc_CG_CSV ( :, [3]) ); 

omp_gcc_CG_CSV =  csvread('__compare/COMPARATION_431_cg__C__bin_gnu_4.9.0_O3.csv');
omp_gcc_CG =  max ( omp_gcc_CG_CSV ( :, [3]) ); 

omp_icc_CG_CSV = csvread('__compare/COMPARATION_431_cg__C__bin_intel_13.0.1_O3.csv');
omp_icc_CG =  max ( omp_icc_CG_CSV ( :, [3]) ); 

seq_gcc_CG = omp_gcc_CG_CSV(1,3);
seq_icc_CG = 555.03;

%%%%%%%%%%%%%%%%%%%% IS 

mpi_gcc_IS_CSV = csvread('__compare/COMPARATION_431_is__C__GNU.csv');
mpi_gcc_IS =  max ( mpi_gcc_IS_CSV ( :, [3]) ); 

mpi_mx_gcc_IS_CSV = csvread('__compare/COMPARATION_431_is__C__GNU_MX.csv');
mpi_mx_gcc_IS =  max ( mpi_mx_gcc_IS_CSV ( :, [3]) ); 

mpi_icc_IS_CSV = csvread('__compare/COMPARATION_431_is__C__INTEL.csv');
mpi_icc_IS =  max ( mpi_icc_IS_CSV ( :, [3]) ); 

mpi_mx_icc_IS_CSV = csvread('__compare/COMPARATION_431_is__C__INTEL_MX.csv');
mpi_mx_icc_IS =  max ( mpi_mx_icc_IS_CSV ( :, [3]) ); 

omp_gcc_IS_CSV =  csvread('__compare/COMPARATION_431_is__C__bin_gnu_4.9.0_O3.csv');
omp_gcc_IS =  max ( omp_gcc_IS_CSV ( :, [3]) ); 

omp_icc_IS_CSV = csvread('__compare/COMPARATION_431_is__C__bin_intel_13.0.1_O3.csv');
omp_icc_IS =  max ( omp_icc_IS_CSV ( :, [3]) ); 

seq_gcc_IS = omp_gcc_IS_CSV(1,3);
seq_icc_IS = 58.71;

%%%%%%%%%%%%%%%%%%%% EP

mpi_gcc_EP_CSV = csvread('__compare/COMPARATION_431_ep__C__GNU.csv');
mpi_gcc_EP =  max ( mpi_gcc_EP_CSV ( :, [3]) ); 

mpi_mx_gcc_EP_CSV = csvread('__compare/COMPARATION_431_ep__C__GNU_MX.csv');
mpi_mx_gcc_EP =  max ( mpi_mx_gcc_EP_CSV ( :, [3]) ); 

mpi_icc_EP_CSV = csvread('__compare/COMPARATION_431_ep__C__INTEL.csv');
mpi_icc_EP =  max ( mpi_icc_EP_CSV ( :, [3]) ); 

mpi_mx_icc_EP_CSV = csvread('__compare/COMPARATION_431_ep__C__INTEL_MX.csv');
mpi_mx_icc_EP =  max ( mpi_mx_icc_EP_CSV ( :, [3]) ); 

omp_gcc_EP_CSV =  csvread('__compare/COMPARATION_431_ep__C__bin_gnu_4.9.0_O3.csv');
omp_gcc_EP =  max ( omp_gcc_EP_CSV ( :, [3]) ); 

omp_icc_EP_CSV = csvread('__compare/COMPARATION_431_ep__C__bin_intel_13.0.1_O3.csv');
omp_icc_EP =  max ( omp_icc_EP_CSV ( :, [3]) ); 

seq_gcc_EP = omp_gcc_EP_CSV(1,3);
seq_icc_EP = 58.71;

%%%%%%%%%%%%%%%%%%%% MG 

mpi_gcc_MG_CSV = csvread('__compare/COMPARATION_431_mg__C__GNU.csv');
mpi_gcc_MG =  max ( mpi_gcc_MG_CSV ( :, [3]) ); 

mpi_mx_gcc_MG_CSV = csvread('__compare/COMPARATION_431_mg__C__GNU_MX.csv');
mpi_mx_gcc_MG =  max ( mpi_mx_gcc_MG_CSV ( :, [3]) ); 

mpi_icc_MG_CSV = csvread('__compare/COMPARATION_431_mg__C__INTEL.csv');
mpi_icc_MG =  max ( mpi_icc_MG_CSV ( :, [3]) ); 

mpi_mx_icc_MG_CSV = csvread('__compare/COMPARATION_431_mg__C__INTEL_MX.csv');
mpi_mx_icc_MG =  max ( mpi_mx_icc_MG_CSV ( :, [3]) ); 

omp_gcc_MG_CSV =  csvread('__compare/COMPARATION_431_mg__C__bin_gnu_4.9.0_O3.csv');
omp_gcc_MG =  max ( omp_gcc_MG_CSV ( :, [3]) ); 

omp_icc_MG_CSV = csvread('__compare/COMPARATION_431_mg__C__bin_intel_13.0.1_O3.csv');
omp_icc_MG =  max ( omp_icc_MG_CSV ( :, [3]) ); 

seq_gcc_MG = omp_gcc_MG_CSV(1,3);
seq_icc_MG = 2747.49;



seq_gcc = [ seq_gcc_CG seq_gcc_EP seq_gcc_IS seq_gcc_MG]; 
seq_icc = [ seq_icc_CG seq_icc_EP seq_icc_IS seq_icc_MG]; 
omp_gcc = [ omp_gcc_CG omp_gcc_EP omp_gcc_IS omp_gcc_MG]; 
omp_icc = [ omp_icc_CG omp_icc_EP omp_icc_IS omp_icc_MG]; 
mpi_eth_gcc = [ mpi_gcc_CG mpi_gcc_EP mpi_gcc_IS mpi_gcc_MG]; 
mpi_eth_icc = [ mpi_icc_CG mpi_icc_EP mpi_icc_IS mpi_icc_MG]; 
mpi_mx_gcc = [ mpi_mx_gcc_CG mpi_mx_gcc_EP mpi_mx_gcc_IS mpi_mx_gcc_MG];
mpi_mx_icc = [ mpi_mx_icc_CG mpi_mx_icc_EP mpi_mx_icc_IS mpi_mx_icc_MG];



 figure (1)
 hFig = figure(1);
 set(gcf,'PaperPositionMode','auto')
 set(hFig, 'Position', [0 0 860 480])
bpcombined = [seq_gcc(:), seq_icc(:), omp_gcc(:) , omp_icc(:), mpi_eth_gcc(:), mpi_eth_icc(:), mpi_mx_gcc(:), mpi_mx_icc(:) ];
hb = bar( x, bpcombined, 'grouped')
bg = [1 1 1; 0 0 0]
 set(gca,'yscale','log');
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

cores = distinguishable_colors(8,bg)
set(hb(1), 'FaceColor',cores(1,:))
set(hb(2), 'FaceColor',cores(2,:))
set(hb(3), 'FaceColor',cores(3,:))
set(hb(4), 'FaceColor',cores(4,:))
set(hb(5), 'FaceColor',cores(5,:))
set(hb(6), 'FaceColor',cores(6,:))
set(hb(7), 'FaceColor',cores(7,:))
set(hb(8), 'FaceColor',cores(8,:))

l = legend('SEQ GCC 4.9.0 -03','SEQ ICC 13.0.1 -03','OMP GCC 4.9.0 -03','OMP ICC 13.0.1 -03', 'MPI GCC 4.9.0 -03 Gigabit Ethernet','MPI ICC 13.0.1 -03 Gigabit Ethernet', 'MPI GCC 4.9.0 -03 Myrinet 10Gbps','MPI ICC 13.0.1 -03 Myrinet 10Gbps');

set(l,'FontSize',12);
set(l,'location','southeastoutside');

ylabel('MOP/s');

xlabel('Kernel');

t = title({'Rela\c{c}\~ao entre MOP/s para os kernels SEQ/OMP/MPI - CG, IS, EP, MG, Nodos 431','Classe de dados C para compiladores gcc 4.9.0 e icc 13.0.1 com flag de compila\c{c}\~ao -O3','Para comunica\c{c}\~ao Gigabit Ethernet e Myrinet 10Gbps'},'interpreter','latex')
set(t,'FontSize',24);
set(gca,'fontsize',12);

set(gca,'xticklabel',name);

