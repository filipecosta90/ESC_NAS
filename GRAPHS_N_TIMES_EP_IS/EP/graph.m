
 figure (1)


 hFig = figure(1);
 set(gcf,'PaperPositionMode','auto')
 set(hFig, 'Position', [0 0 960 960])
set(gca,'Unit','normalized','Position',[0 0 1 1]);

subplot(3,2,1)       % add first plot in 2 x 2 grid
plot(system_int32);
hold on;
plot(system_csw32);
hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('System INT','System CSW' );
ylabel('N. de ocorr\^encias', 'interpreter','latex');
xlabel('Tempo (s)');

title({'System Stats'},'interpreter','latex')


subplot(3,2,2)       % add second plot in 2 x 2 grid
plot(disk_read32);

hold on;
plot(disk_write32);
hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('Disk Read','Disk Write' );
ylabel('Bytes');
xlabel('Tempo (s)');

title({'Disk Stats'},'interpreter','latex')

subplot(3,2,3)       % add third plot in 2 x 2 grid

plot(net_recv32);

hold on;
plot(net_send32);

hold on;
set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('Net Receive','Net Send' );
ylabel('Bytes');
xlabel('Tempo (s)');

title({'Net Stats'},'interpreter','latex')


subplot(3,2,4)       % add fourth plot in 2 x 2 grid

mem = [ memory_used32 memory_free32 ];

h = bar(mem,'stacked');
set(h(1),'facecolor','r');
set(h(2),'facecolor','g');



set(gca,'YTickLabel',num2str(get(gca,'YTick').'));
l = legend('% Memory Used','% Memory Free' );
ylabel('Percentagem');
xlabel('Tempo (s)');
ylim([0 100]) ;


title({'Memory Stats'},'interpreter','latex');

subplot(3,2,[5 6])    % add third plot to span positions 3 and 4

cpu = [ cpu_usr32 cpu_sys32 cpu_idl32 cpu_wait32 ];

hb = bar(cpu,'stacked');
ylim([0 100]) ;
title({'CPU Stats'},'interpreter','latex');
xlabel('Tempo (s)');
ylabel('Percentagem');
cores = distinguishable_colors(8,bg);
set(hb(1), 'FaceColor',cores(1,:));
set(hb(2), 'FaceColor',cores(3,:));
set(hb(3), 'FaceColor',cores(8,:));
set(hb(4), 'FaceColor',cores(2,:));
l = legend('% CPU USR','% CPU SYS','% CPU IDL','% CPU WAIT' );
