cpu_csv_seq = readtable('__cpu_usage/seq.csv','ReadVariableNames',false);
disk_csv_seq = readtable('__disk_usage/seq.csv','ReadVariableNames',false);
memory_csv_seq = readtable('__memory_usage/seq.csv','ReadVariableNames',false);
net_csv_seq = readtable('__net_usage/seq.csv','ReadVariableNames',false);
system_csv_seq = readtable('__system_usage/seq.csv','ReadVariableNames',false);

%%%%%% CPU STATS %%%%%
cpu_used_seq = table2array( cpu_csv_seq ( :, [3])); 
cpu_sys_seq = table2array( cpu_csv_seq ( :, [4])); 
cpu_idl_seq = table2array( cpu_csv_seq ( :, [5])); 
cpu_wait_seq = table2array( cpu_csv_seq ( :, [6]));

%%%%%% DISK STATS %%%%%
disk_read_seq = table2array( disk_csv_seq ( :, [3])); 
disk_write_seq = table2array( disk_csv_seq ( :, [4]));


%%%%%% MEMORY STATS %%%%%
memory_used_seq = table2array( memory_csv_seq ( :, [3])); 
memory_used_seq = memory_used_seq ./ 10^6;



%%%%%% NET STATS %%%%%
net_recv_seq = table2array( net_csv_seq ( :, [3]) ); 
net_send_seq = table2array( net_csv_seq ( :, [4]) ); 
net_recv_seq = net_recv_seq ./ 10^6;
net_send_seq = net_send_seq ./ 10^6;

%%%%%% SYSTEM STATS %%%%%
system_int_seq = table2array( system_csv_seq ( :, [3])); 
system_csw_seq = table2array( system_csv_seq ( :, [4])) ; 

cpu_csv_omp = readtable('__cpu_usage/omp.csv','ReadVariableNames',false);
disk_csv_omp = readtable('__disk_usage/omp.csv','ReadVariableNames',false);
memory_csv_omp = readtable('__memory_usage/omp.csv','ReadVariableNames',false);
net_csv_omp = readtable('__net_usage/omp.csv','ReadVariableNames',false);
system_csv_omp = readtable('__system_usage/omp.csv','ReadVariableNames',false);

%%%%%% CPU STATS %%%%%
cpu_used_omp = table2array( cpu_csv_omp ( :, [3])); 
cpu_sys_omp = table2array( cpu_csv_omp ( :, [4])); 
cpu_idl_omp = table2array( cpu_csv_omp ( :, [5])); 
cpu_wait_omp = table2array( cpu_csv_omp ( :, [6]));


%%%%%% DISK STATS %%%%%
disk_read_omp = table2array( disk_csv_omp ( :, [3])); 
disk_write_omp = table2array( disk_csv_omp ( :, [4]));


%%%%%% MEMORY STATS %%%%%
memory_used_omp = table2array( memory_csv_omp ( :, [3])); 
memory_used_omp = memory_used_omp ./ 10^6;



%%%%%% NET STATS %%%%%
net_recv_omp = table2array( net_csv_omp ( :, [3]) ); 
net_send_omp = table2array( net_csv_omp ( :, [4]) ); 
net_recv_omp = net_recv_omp ./ 10^6;
net_send_omp = net_send_omp ./ 10^6;


%%%%%% SYSTEM STATS %%%%%
system_int_omp = table2array( system_csv_omp ( :, [3])); 
system_csw_omp = table2array( system_csv_omp ( :, [4])) ; 

cpu_csv_mpi = readtable('__cpu_usage/mpi.csv','ReadVariableNames',false);
disk_csv_mpi = readtable('__disk_usage/mpi.csv','ReadVariableNames',false);
memory_csv_mpi = readtable('__memory_usage/mpi.csv','ReadVariableNames',false);
net_csv_mpi = readtable('__net_usage/mpi.csv','ReadVariableNames',false);
system_csv_mpi = readtable('__system_usage/mpi.csv','ReadVariableNames',false);

%%%%%% CPU STATS %%%%%
cpu_used_mpi = table2array( cpu_csv_mpi ( :, [3])); 
cpu_sys_mpi = table2array( cpu_csv_mpi ( :, [4])); 
cpu_idl_mpi = table2array( cpu_csv_mpi ( :, [5])); 
cpu_wait_mpi = table2array( cpu_csv_mpi ( :, [6]));


%%%%%% DISK STATS %%%%%
disk_read_mpi = table2array( disk_csv_mpi ( :, [3])); 
disk_write_mpi = table2array( disk_csv_mpi ( :, [4]));


%%%%%% MEMORY STATS %%%%%
memory_used_mpi = table2array( memory_csv_mpi ( :, [3])); 
memory_used_mpi = memory_used_mpi ./ 10^6;



%%%%%% NET STATS %%%%%
net_recv_mpi = table2array( net_csv_mpi ( :, [3]) ); 
net_send_mpi = table2array( net_csv_mpi ( :, [4]) ); 
net_recv_mpi = net_recv_mpi ./ 10^6;
net_send_mpi = net_send_mpi ./ 10^6;

%%%%%% SYSTEM STATS %%%%%
system_int_mpi = table2array( system_csv_mpi ( :, [3])); 
system_csw_mpi = table2array( system_csv_mpi ( :, [4])) ; 

bg = [ 1 1 1 ; 0 0 0];
cores = distinguishable_colors(20,bg);



 figure (1)


hFig = figure(1);
set(gcf,'PaperPositionMode','auto')
set(hFig, 'Position', [0 0 960 960])
set(gca,'Unit','normalized','Position',[0 0 1 1]);


ax1 = subplot(3,1,[1 2]);
plot(system_int_seq,'Color', cores(1,:),'LineWidth',3);
hold on;

plot(system_int_omp,'Color', cores(2,:),'LineWidth',3);
hold on;

plot(system_int_mpi,'Color', cores(3,:),'LineWidth',3);
hold on;

plot(system_csw_seq,'--','Color', cores(6,:),'LineWidth',3);
hold on;

plot(system_csw_omp,'--','Color', cores(4,:),'LineWidth',3);
hold on;

plot(system_csw_mpi,'--','Color', cores(5,:),'LineWidth',3);
hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

xlim(ax1,[0 40]);

ylabel('N. de ocorr\^encias', 'interpreter','latex');
xlabel('Tempo (s)');
l = legend('System INT - CG - SEQ','System INT - CG - OMP','System INT - CG - MPI','System CSW - CG - SEQ','System CSW - CG - OMP','System CSW - CG - MPI');

title({'System Stats, kernel CG, Tempo entre [0,40]'},'interpreter','latex')

ax2 = subplot(3,1,[3]);
plot(system_int_seq,'Color', cores(1,:),'LineWidth',3);
hold on;

plot(system_int_omp,'Color', cores(2,:),'LineWidth',3);
hold on;

plot(system_int_mpi,'Color', cores(3,:),'LineWidth',3);
hold on;

plot(system_csw_seq,'--','Color', cores(6,:),'LineWidth',3);
hold on;

plot(system_csw_omp,'--','Color', cores(4,:),'LineWidth',3);
hold on;

plot(system_csw_mpi,'--','Color', cores(5,:),'LineWidth',3);
hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));

ylabel('N. de ocorr\^encias', 'interpreter','latex');
xlabel('Tempo (s)');
l = legend('System INT - CG - SEQ','System INT - CG - OMP','System INT - CG - MPI','System CSW - CG - SEQ','System CSW - CG - OMP','System CSW - CG - MPI');

title({'System Stats, kernel CG'},'interpreter','latex')




