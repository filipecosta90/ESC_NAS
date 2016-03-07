cpu_csv1 = readtable('__cpu_usage/seq.csv','ReadVariableNames',false);
disk_csv1 = readtable('__disk_usage/seq.csv','ReadVariableNames',false);
memory_csv1 = readtable('__memory_usage/seq.csv','ReadVariableNames',false);
net_csv1 = readtable('__net_usage/seq.csv','ReadVariableNames',false);
system_csv1 = readtable('__system_usage/seq.csv','ReadVariableNames',false);

%%%%%% CPU STATS %%%%%
cpu_usr1 = table2array( cpu_csv1 ( :, [3])); 
cpu_sys1 = table2array( cpu_csv1 ( :, [4])); 
cpu_idl1 = table2array( cpu_csv1 ( :, [5])); 
cpu_wait1 = table2array( cpu_csv1 ( :, [6]));


%%%%%% DISK STATS %%%%%
disk_read1 = table2array( disk_csv1 ( :, [3])); 
disk_write1 = table2array( disk_csv1 ( :, [4]));


%%%%%% MEMORY STATS %%%%%
memory_used1 = table2array( memory_csv1 ( :, [3])); 
memory_free1 = table2array( memory_csv1 ( :, [4])); 
memory_total1 = memory_used1 + memory_free1;
memory_used1 = memory_used1 ./ memory_total1 * 100;
%memory_free1 = memory_free1 ./ memory_total1 * 100;


%%%%%% NET STATS %%%%%
net_recv1 = table2array( net_csv1 ( :, [3]) ); 
net_send1 = table2array( net_csv1 ( :, [4]) ); 

%%%%%% SYSTEM STATS %%%%%
system_int1 = table2array( system_csv1 ( :, [3])); 
system_csw1 = table2array( system_csv1 ( :, [4])) ; 

cpu_csv8 = readtable('__cpu_usage/omp.csv','ReadVariableNames',false);
disk_csv8 = readtable('__disk_usage/omp.csv','ReadVariableNames',false);
memory_csv8 = readtable('__memory_usage/omp.csv','ReadVariableNames',false);
net_csv8 = readtable('__net_usage/omp.csv','ReadVariableNames',false);
system_csv8 = readtable('__system_usage/omp.csv','ReadVariableNames',false);

%%%%%% CPU STATS %%%%%
cpu_usr8 = table2array( cpu_csv8 ( :, [3])); 
cpu_sys8 = table2array( cpu_csv8 ( :, [4])); 
cpu_idl8 = table2array( cpu_csv8 ( :, [5])); 
cpu_wait8 = table2array( cpu_csv8 ( :, [6]));


%%%%%% DISK STATS %%%%%
disk_read8 = table2array( disk_csv8 ( :, [3])); 
disk_write8 = table2array( disk_csv8 ( :, [4]));


%%%%%% MEMORY STATS %%%%%
memory_used8 = table2array( memory_csv8 ( :, [3])); 
memory_free8 = table2array( memory_csv8 ( :, [4])); 
memory_total8 = memory_used8 + memory_free8;
memory_used8 = memory_used8 ./ memory_total8 * 100;
%memory_free8 = memory_free8 ./ memory_total8 * 100;


%%%%%% NET STATS %%%%%
net_recv8 = table2array( net_csv8 ( :, [3]) ); 
net_send8 = table2array( net_csv8 ( :, [4]) ); 

%%%%%% SYSTEM STATS %%%%%
system_int8 = table2array( system_csv8 ( :, [3])); 
system_csw8 = table2array( system_csv8 ( :, [4])) ; 

cpu_csv32 = readtable('__cpu_usage/mpi.csv','ReadVariableNames',false);
disk_csv32 = readtable('__disk_usage/mpi.csv','ReadVariableNames',false);
memory_csv32 = readtable('__memory_usage/mpi.csv','ReadVariableNames',false);
net_csv32 = readtable('__net_usage/mpi.csv','ReadVariableNames',false);
system_csv32 = readtable('__system_usage/mpi.csv','ReadVariableNames',false);

%%%%%% CPU STATS %%%%%
cpu_usr32 = table2array( cpu_csv32 ( :, [3])); 
cpu_sys32 = table2array( cpu_csv32 ( :, [4])); 
cpu_idl32 = table2array( cpu_csv32 ( :, [5])); 
cpu_wait32 = table2array( cpu_csv32 ( :, [6]));


%%%%%% DISK STATS %%%%%
disk_read32 = table2array( disk_csv32 ( :, [3])); 
disk_write32 = table2array( disk_csv32 ( :, [4]));


%%%%%% MEMORY STATS %%%%%
memory_used32 = table2array( memory_csv32 ( :, [3])); 
memory_free32 = table2array( memory_csv32 ( :, [4])); 
memory_total32 = memory_used32 + memory_free32;
memory_used32 = memory_used32 ./ memory_total32 * 100;
%memory_free32 = memory_free32 ./ memory_total32 * 100;


%%%%%% NET STATS %%%%%
net_recv32 = table2array( net_csv32 ( :, [3]) ); 
net_send32 = table2array( net_csv32 ( :, [4]) ); 

%%%%%% SYSTEM STATS %%%%%
system_int32 = table2array( system_csv32 ( :, [3])); 
system_csw32 = table2array( system_csv32 ( :, [4])) ; 


bg = [1 1 1; 0 0 0];
cores = distinguishable_colors(8,bg);



 figure (1)


 hFig = figure(1);
 set(gcf,'PaperPositionMode','auto')
 set(hFig, 'Position', [0 0 960 960])
set(gca,'Unit','normalized','Position',[0 0 1 1]);

subplot(5,2,[1 2])    % add third plot to span positions 3 and 4
plot(system_int1,'Color', cores(1,:));
hold on;

plot(system_int8,'Color', cores(2,:));
hold on;

plot(system_int32,'Color', cores(3,:));
hold on;
plot(system_csw1,'Color', cores(4,:));
hold on;

plot(system_csw8,'Color', cores(5,:));
hold on;

plot(system_csw32,'Color', cores(6,:));
hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('System INT - x1', 'System INT - x8', 'System INT - x32', 'System CSW - x1' , 'System CSW - x8', 'System CSW - x32' );
ylabel('N. de ocorr\^encias', 'interpreter','latex');
xlabel('Tempo (s)');

title({'System Stats'},'interpreter','latex')


subplot(5,2,[3 4])    % add third plot to span positions 3 and 4
plot(disk_read1,'Color', cores(1,:));
hold on;

plot(disk_read8,'Color', cores(2,:));
hold on;

plot(disk_read32,'Color', cores(3,:));
hold on;


hold on;
plot(disk_write1,'Color', cores(4,:));
hold on;

plot(disk_write8,'Color', cores(5,:));
hold on;

plot(disk_write32,'Color', cores(6,:));
hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('Disk Read - x1', 'Disk Read - x8', 'Disk Read - x32', 'Disk Write - x1' , 'Disk Write - x8',  'Disk Write - x32' );
ylabel('Bytes');
xlabel('Tempo (s)');

title({'Disk Stats'},'interpreter','latex')

subplot(5,2,[5 6])    % add third plot to span positions 3 and 4

plot(net_recv1,'Color', cores(1,:));
hold on;

plot(net_recv8,'Color', cores(2,:));
hold on;

plot(net_recv32,'Color', cores(3,:));


hold on;
plot(net_send1,'Color', cores(4,:));
hold on;

plot(net_send8,'Color', cores(5,:));    
hold on;

plot(net_send32,'Color', cores(6,:));

hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('Net Receive - x1', 'Net Receive - x8', 'Net Receive - x32','Net Send - x1', 'Net Send - x8' ,'Net Send - x32' );
ylabel('Bytes');
xlabel('Tempo (s)');

title({'Net Stats'},'interpreter','latex')


subplot(5,2,[7 8])    % add third plot to span positions 3 and 4

plot(memory_used1,'Color', cores(1,:));
hold on;

plot(memory_used8,'Color', cores(2,:));
hold on;

plot(memory_used32,'Color', cores(3,:));

hold on;


%set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('% Memory Used - x1',  '% Memory Used -x8', '% Memory Used -x32');


ylabel('Percentagem');
xlabel('Tempo (s)');
%ylim([0 100]) ;


title({'Memory Stats'},'interpreter','latex');

subplot(5,2,[9 10])    % add third plot to span positions 3 and 4

cpu = [ cpu_usr32 cpu_sys32 cpu_idl32 cpu_wait32 ];

hb = bar(cpu,'stacked');
ylim([0 100]) ;
title({'CPU Stats'},'interpreter','latex');
xlabel('Tempo (s)');
ylabel('Percentagem');
set(hb(1), 'FaceColor',cores(1,:));
set(hb(2), 'FaceColor',cores(3,:));
set(hb(3), 'FaceColor',cores(8,:));
set(hb(4), 'FaceColor',cores(2,:));
l = legend('% CPU USR - x32','% CPU SYS - x32','% CPU IDL - x32','% CPU WAIT - x32' );



