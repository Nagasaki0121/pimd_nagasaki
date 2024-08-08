%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


close all;

xt=l1*cos(theta);
yt=l1*sin(theta);

figure(1)
axis square
%disp(t)
for ii=1:length(t)
    x1=[0 xt(ii)];
    y1=[0 yt(ii)];

    h1= line(x1,y1);
    
        if 0<=t(ii)&&t(ii)<=0.5
            set(h1,'color','r');
            set(h1,'lineWidth',2);
        end

        if 0.5<t(ii)&&t(ii)<=2.0
            set(h1,'color','g');
            set(h1,'lineWidth',2);
        end

        if 2.0<t(ii)&&t(ii)<=2.5
            set(h1,'color','b');
            set(h1,'lineWidth',2);
        end
end

for ii=1:length(t)-1
    x2=[xt(ii) xt(ii+1)];
    y2=[yt(ii) yt(ii+1)];
    h2= line(x2,y2);
    set(h2,'color','k');
    set(h2,'lineWidth',1);
end

%xŽ²
h3=line([-0.3 0.3],[0 0]);
set(h3,'color','k');
set(h3,'lineWidth',1);

%yŽ²
h4=line([0 0],[-0.3 0.3]);
set(h4,'color','k');
set(h4,'lineWidth',1);

xlim([-0.3 0.3])
ylim([-0.3 0.3])

