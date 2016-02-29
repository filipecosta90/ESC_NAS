 
%%%%%%%%%%%%%%%% MG 431

mg_c_431_gnu = csvread('__compare/COMPARATION_431_mg__C__GNU.csv');
mg_c_431_gnu_mx = csvread('__compare/COMPARATION_431_mg__C__GNU_MX.csv');

procs_mg_c_431_gnu = mg_c_431_gnu ( :, [1]); 
procs_mg_c_431_gnu_mx = mg_c_431_gnu_mx ( :, [1]); 

tempo_mg_c_431_gnu = mg_c_431_gnu ( :, [2]); 
tempo_mg_c_431_gnu_mx = mg_c_431_gnu_mx ( :, [2]); 

ganho_mg_c_gnu_431 = ( tempo_mg_c_431_gnu ./ tempo_mg_c_431_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% CG 431

cg_c_431_gnu = csvread('__compare/COMPARATION_431_cg__C__GNU.csv');
cg_c_431_gnu_mx = csvread('__compare/COMPARATION_431_cg__C__GNU_MX.csv');

procs_cg_c_431_gnu = cg_c_431_gnu ( :, [1]); 
procs_cg_c_431_gnu_mx = cg_c_431_gnu_mx ( :, [1]);  

tempo_cg_c_431_gnu = cg_c_431_gnu ( :, [2]); 
tempo_cg_c_431_gnu_mx = cg_c_431_gnu_mx ( :, [2]); 

ganho_cg_c_gnu_431 = ( tempo_cg_c_431_gnu ./ tempo_cg_c_431_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% EP 431

ep_c_431_gnu = csvread('__compare/COMPARATION_431_ep__C__GNU.csv');
ep_c_431_gnu_mx = csvread('__compare/COMPARATION_431_ep__C__GNU_MX.csv');

procs_ep_c_431_gnu = ep_c_431_gnu ( :, [1]); 
procs_ep_c_431_gnu_mx = ep_c_431_gnu_mx ( :, [1]);  

tempo_ep_c_431_gnu = ep_c_431_gnu ( :, [2]); 
tempo_ep_c_431_gnu_mx = ep_c_431_gnu_mx ( :, [2]); 

ganho_ep_c_gnu_431 = ( tempo_ep_c_431_gnu ./ tempo_ep_c_431_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% IS 431

is_c_431_gnu = csvread('__compare/COMPARATION_431_is__C__GNU.csv');
is_c_431_gnu_mx = csvread('__compare/COMPARATION_431_is__C__GNU_MX.csv');

procs_is_c_431_gnu = is_c_431_gnu ( :, [1]); 
procs_is_c_431_gnu_mx = is_c_431_gnu_mx ( :, [1]);  

tempo_is_c_431_gnu = cg_c_431_gnu ( :, [2]); 
tempo_is_c_431_gnu_mx = cg_c_431_gnu_mx ( :, [2]); 

ganho_is_c_gnu_431 = ( tempo_is_c_431_gnu ./ tempo_is_c_431_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% MG 641

mg_c_641_gnu = csvread('__compare/COMPARATION_641_mg__C__GNU.csv');
mg_c_641_gnu_mx = csvread('__compare/COMPARATION_641_mg__C__GNU_MX_641.csv');

procs_mg_c_641_gnu = mg_c_641_gnu ( :, [1]); 
procs_mg_c_641_gnu_mx = mg_c_641_gnu_mx ( :, [1]); 

tempo_mg_c_641_gnu = mg_c_641_gnu ( :, [2]); 
tempo_mg_c_641_gnu_mx = mg_c_641_gnu_mx ( :, [2]); 

ganho_mg_c_gnu_641 = ( tempo_mg_c_641_gnu ./ tempo_mg_c_641_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% CG 641

cg_c_641_gnu = csvread('__compare/COMPARATION_641_cg__C__GNU.csv');
cg_c_641_gnu_mx = csvread('__compare/COMPARATION_641_cg__C__GNU_MX_641.csv');

procs_cg_c_641_gnu = cg_c_641_gnu ( :, [1]); 
procs_cg_c_641_gnu_mx = cg_c_641_gnu_mx ( :, [1]);  

tempo_cg_c_641_gnu = cg_c_641_gnu ( :, [2]); 
tempo_cg_c_641_gnu_mx = cg_c_641_gnu_mx ( :, [2]); 

ganho_cg_c_gnu_641 = ( tempo_cg_c_641_gnu ./ tempo_cg_c_641_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% EP 641

ep_c_641_gnu = csvread('__compare/COMPARATION_641_ep__C__GNU.csv');
ep_c_641_gnu_mx = csvread('__compare/COMPARATION_641_ep__C__GNU_MX_641.csv');

procs_ep_c_641_gnu = ep_c_641_gnu ( :, [1]); 
procs_ep_c_641_gnu_mx = ep_c_641_gnu_mx ( :, [1]);  

tempo_ep_c_641_gnu = ep_c_641_gnu ( :, [2]); 
tempo_ep_c_641_gnu_mx = ep_c_641_gnu_mx ( :, [2]); 

ganho_ep_c_gnu_641 = ( tempo_ep_c_641_gnu ./ tempo_ep_c_641_gnu_mx ) -1 ;

%%%%%%%%%%%%%%%% IS 641

is_c_641_gnu = csvread('__compare/COMPARATION_641_is__C__GNU.csv');
is_c_641_gnu_mx = csvread('__compare/COMPARATION_641_is__C__GNU_MX_641.csv');

procs_is_c_641_gnu = is_c_641_gnu ( :, [1]); 
procs_is_c_641_gnu_mx = is_c_641_gnu_mx ( :, [1]);  

tempo_is_c_641_gnu = cg_c_641_gnu ( :, [2]); 
tempo_is_c_641_gnu_mx = cg_c_641_gnu_mx ( :, [2]); 

ganho_is_c_gnu_641 = ( tempo_is_c_641_gnu ./ tempo_is_c_641_gnu_mx ) -1 ;


bg = [1 1 1; 0 0 0];
cores = distinguishable_colors(100,bg);

%%%% 431
plot(procs_cg_c_431_gnu,ganho_cg_c_gnu_431,'ro--','Color', cores(1,:),'MarkerSize', 12);
hold on;
plot(procs_ep_c_431_gnu_mx,ganho_ep_c_gnu_431,'r+--','Color', cores(2,:),'MarkerSize', 12);
hold on;
plot(procs_is_c_431_gnu,ganho_is_c_gnu_431,'r*--','Color', cores(3,:),'MarkerSize', 12);
hold on;
plot(procs_mg_c_431_gnu_mx,ganho_mg_c_gnu_431,'rx--','Color', cores(4,:),'MarkerSize', 12);
hold on;
%%%%% 641
plot(procs_cg_c_641_gnu,ganho_cg_c_gnu_641,'ro--','Color', cores(5,:),'MarkerSize', 12);
hold on;
plot(procs_ep_c_641_gnu_mx,ganho_ep_c_gnu_641,'r+--','Color', cores(6,:),'MarkerSize', 12);
hold on;
plot(procs_is_c_641_gnu,ganho_is_c_gnu_641,'r*--','Color', cores(7,:),'MarkerSize', 12);
hold on;
plot(procs_mg_c_641_gnu_mx,ganho_mg_c_gnu_641,'rx--','Color', cores(8,:),'MarkerSize', 12);
hold on;

 figure (1)
 hFig = figure(1);
 set(gcf,'PaperPositionMode','auto')
 set(hFig, 'Position', [0 0 640 480])

 
set(gca,'xscale','log');
%set(gca,'yscale','log');


grid on;
set(gca, 'XTick', [8 16 32]);
set(gca, 'YTick', [0 1 2 4 8 10]);

xlim([8 32]) ;
ylim([-0.1 10]) ;


set(gca,'YTickLabel',num2str(get(gca,'YTick').'));


l = legend('431 - CG via Myrinet 10Gbps vs CG via Gigabit Ethernet','431 - EP via Myrinet 10Gbps vs EP via Gigabit Ethernet' , '431 - IS via Myrinet 10Gbps vs IS via Gigabit Ethernet', '431 - MG via Myrinet 10Gbps vs MG via Gigabit Ethernet', '641 - CG via Myrinet 10Gbps vs CG via Gigabit Ethernet','641 - EP via Myrinet 10Gbps vs EP via Gigabit Ethernet' , '641 - IS via Myrinet 10Gbps vs IS via Gigabit Ethernet', '641 - MG via Myrinet 10Gbps vs MG via Gigabit Ethernet');

  
name = {'8 Processos (2 Nodos)';'16 Processos (2 Nodos)';'32 Processos (4 Nodos)'};
set(gca,'xticklabel',name);


set(l,'FontSize',12);
ylabel('Ganho');

xlabel('Num. Processos OpenMPI');
t = title({'Rela\c{c}\~ao de Ganho para os kernels MPI - CG, IS, EP, MG, Nodos 431 vs 641','Classe de dados C para compilador gcc 4.9.0 com flag de compila\c{c}\~ao -O3','Para comunica\c{c}\~ao MPI via Myrinet 10Gbps vs via Gigabit Ethernet'},'interpreter','latex')

set(t,'FontSize',24);
set(gca,'fontsize',12);



