%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%（Symbolic Math Toolbox  script1）
syms tf a0 a1 a2 a3 a4 a5
syms eta0 etadot0 eta2dot0 %η(0),(d/dt)η(0),(d^2/dt^2)η(0)
syms etatf etadottf eta2dottf%η(tf),(d/dt)η(tf),(d^2/dt^2)η(tf)
 

A=[1 0 0 0 0 0;
   0 1 0 0 0 0;
   0 0 2 0 0 0;
   1 tf tf^2 tf^3 tf^4 tf^5;
   0 1 2*tf 3*tf^2 4*tf^3 5*tf^4;
   0 0 2 6*tf 12*tf^2 20*tf^3]

B=[eta0;etadot0;eta2dot0; ...
   etatf;etadottf;eta2dottf];

C=inv(A)*B%逆行列計算
C2=simplify(C)%シンボリックな簡略化
[NUM,DEN] = numden(C2)%分子分母取り出し
NUM= collect(NUM,tf)%分子をtfについて整理



