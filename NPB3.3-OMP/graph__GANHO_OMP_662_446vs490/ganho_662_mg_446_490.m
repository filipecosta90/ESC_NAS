 

%%%%%%%% 446 03 
mg_c_662_42 = csvread('COMPARATION_662_mg__C__bin_gnu_4.4.6_O2.csv');

%%%%%%%% 446 03 
mg_c_662_43 = csvread('COMPARATION_662_mg__C__bin_gnu_4.4.6_O3.csv');

%%%%%%%% 490 02 
mg_c_662_92 = csvread('COMPARATION_662_mg__C__bin_gnu_4.9.0_O2.csv');


%%%%%%%% 490 03
mg_c_662_93 = csvread('COMPARATION_662_mg__C__bin_gnu_4.9.0_O3.csv');

%446 02
threads_mg_c_662_42 = mg_c_662_42 ( :, [1]); 
tempo_mg_c_662_42 = mg_c_662_42 ( :, [2]); 
ganho_mg_c_662_42 = ( tempo_mg_c_662_42 (1 , : ) ./ tempo_mg_c_662_42  ) - 1;


%446 03
threads_mg_c_662_43 = mg_c_662_43 ( :, [1]); 
tempo_mg_c_662_43 = mg_c_662_43 ( :, [2]); 
ganho_mg_c_662_43 = ( tempo_mg_c_662_43 (1 , : ) ./ tempo_mg_c_662_43  ) - 1;


%490 02
threads_mg_c_662_92 = mg_c_662_92 ( :, [1]); 
tempo_mg_c_662_92 = mg_c_662_92 ( :, [2]); 
ganho_mg_c_662_92 = ( tempo_mg_c_662_92 (1 , : ) ./ tempo_mg_c_662_92  ) - 1;



%490 03

threads_mg_c_662_93 = mg_c_662_93 ( :, [1]); 
tempo_mg_c_662_93 = mg_c_662_93 ( :, [2]); 
ganho_mg_c_662_93 = ( tempo_mg_c_662_93 (1 , : ) ./ tempo_mg_c_662_93  ) - 1;



bg = [1 1 1; 0 0 0];
cores = distinguishable_colors(100,bg);

plot(threads_mg_c_662_42,ganho_mg_c_662_42,'ro--','Color', cores(5,:),'MarkerSize', 12);
hold on;
plot(threads_mg_c_662_43,ganho_mg_c_662_43,'r+--','Color', cores(6,:),'MarkerSize', 12);
hold on;
plot(threads_mg_c_662_92,ganho_mg_c_662_92,'r*--','Color', cores(7,:),'MarkerSize', 12);
hold on;
plot(threads_mg_c_662_93,ganho_mg_c_662_93,'rx--','Color', cores(8,:),'MarkerSize', 12);
hold on;
%%%%%
%set(gca,'xscale','log');
%set(gca,'yscale','log');


grid on;
set(gca, 'XTick', [1 2 4 8 12 16 24 32 40 44 48 52 ]);
xlim([1 52]) ;
ylim([0 44]) ;

set(gca,'YTickLabel',num2str(get(gca,'YTick').'));


l = legend('662 - gcc 4.4.6 -O2','662 - gcc 4.4.6 -O3' , '662 - gcc 4.9.0 -O2', '662 - gcc 4.9.0 -O3');

set(l,'FontSize',12);
ylabel('Ganho');

xlabel('Num. Threads OpenMP');
t = title({'Rela\c{c}\~ao de Ganho para o kernel OMP - MG','Classe de dados C para compiladores gcc 4.4.6 e 4.9.0 com flags de compila\c{c}\~ao -O2 e -O3'},'interpreter','latex')

set(t,'FontSize',24);
set(gca,'fontsize',12);



