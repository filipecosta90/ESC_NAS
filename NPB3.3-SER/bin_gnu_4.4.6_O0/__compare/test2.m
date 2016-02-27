bpcombined = [bpcombine1(:), bpcombine2(:), bpcombine3(:)];
hb = bar(xdata, bpcombined, 'grouped')
figure(1)
hb = bar(data)
set(hb(1), 'FaceColor','r')
set(hb(2), 'FaceColor','b')
set(hb(3), 'FaceColor','g')