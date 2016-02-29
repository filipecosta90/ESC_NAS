 

cg_c_641_gnu = csvread('__compare/COMPARATION_641_cg__C__GNU.csv');
cg_c_641_gnu_mx = csvread('__compare/COMPARATION_641_cg__C__GNU_MX_641.csv');
cg_c_641_intel = csvread('__compare/COMPARATION_641_cg__C__INTEL.csv');


procs_cg_c_641_gnu = cg_c_641_gnu ( :, [1]); 
procs_cg_c_641_gnu_mx = cg_c_641_gnu_mx ( :, [1]); 
procs_cg_c_641_intel = cg_c_641_intel ( :, [1]); 

tempo_cg_c_641_gnu = cg_c_641_gnu ( :, [2]); 
tempo_cg_c_641_gnu_mx = cg_c_641_gnu_mx ( :, [2]); 
tempo_cg_c_641_intel = cg_c_641_intel ( :, [2]); 

mops_cg_c_641_gnu = cg_c_641_gnu ( :, [3]); 
mops_cg_c_641_gnu_mx = cg_c_641_gnu_mx ( :, [3]); 
mops_cg_c_641_intel = cg_c_641_intel ( :, [3]); 

bg = [1 1 1; 0 0 0];
cores = distinguishable_colors(100,bg);


plot(procs_cg_c_641_gnu,tempo_cg_c_641_gnu,'ro--','Color', cores(1,:),'MarkerSize', 12);
hold on;
plot(procs_cg_c_641_gnu_mx,tempo_cg_c_641_gnu_mx,'r+--','Color', cores(2,:),'MarkerSize', 12);
hold on;
plot(procs_cg_c_641_intel,tempo_cg_c_641_intel,'r*--','Color', cores(3,:),'MarkerSize', 12);
hold on;
%%%%%




 figure (1)
 hFig = figure(1);
 set(gcf,'PaperPositionMode','auto')
 set(hFig, 'Position', [0 0 640 480])

 
set(gca,'xscale','log');
set(gca,'yscale','log');


grid on;
set(gca, 'XTick', [8 16 32]);
set(gca, 'YTick', [1 2 4 8 16 32 64 96 128]);

xlim([8 32]) ;
ylim([0 96]) ;

set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

l = legend('641 - gcc 4.9.0 -O3 Gigabit Ethernet','641 - gcc 4.9.0 -O3 Myrinet 10Gbps' , '641 - icc 13.0.1 -O3 Gigabit Ethernet');
  
name = {'8 Processos (2 Nodos)';'16 Processos (2 Nodos)';'32 Processos (4 Nodos)'};
set(gca,'xticklabel',name);

set(l,'FontSize',12);
ylabel('Tempo (segundos)');

xlabel('Num. Processos OpenMPI');
t = title({'Rela\c{c}\~ao entre Tempo Total em segundos para o kernel MPI - CG, nodos 641 ','Classe de dados C para compiladores gcc 4.9.0 e icc 13.0.1 com flag de compila\c{c}\~ao -O3','Para comunica\c{c}\~ao Gigabit Ethernet e Myrinet 10Gbps'},'interpreter','latex')

set(t,'FontSize',24);
set(gca,'fontsize',12);

