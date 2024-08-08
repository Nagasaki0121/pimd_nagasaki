%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%（Symbolic Math Toolbox  script6）

syms m1 r1 l1 theta1 d1theta1 real
syms Izzg1 real
k1=1/2*m1*[-r1*sin(theta1)*d1theta1 r1*cos(theta1)*d1theta1 0] ...
    *[-r1*sin(theta1)*d1theta1 r1*cos(theta1)*d1theta1 0]' ...
    +1/2*[0 0 d1theta1]*Izzg1*[0 0 d1theta1]'
k1=simplify(k1)%最短表現の検索
k1=expand(k1)%展開