
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ÅiSymbolic Math Toolbox  script3Åj
syms a0 a1 a2 a3
syms tf delta
syms t
pi=sym('pi')

%(3) 2É¢<t<=2.5-2É¢ÇÃèÍçá(å∏ë¨ãÊä‘)
tf=2*delta
teta0=2*pi-delta*pi
teta0_1=pi
teta0_2=diff(teta0_1)

tetaf=2*pi
tetaf_1=sym('0')
tetaf_2=diff(tetaf_1)

a0=teta0
a1=teta0_1
a2=1/2*teta0_2
a3=(1/(2*tf^3))*((-3*teta0_2+tetaf_2)*tf^2+ ...
    (-12*teta0_1-8*tetaf_1)*tf-20*teta0+20*tetaf)
a4=(1/(2*tf^4))*((3*teta0_2-2*tetaf_2)*tf^2+ ...
    (16*teta0_1+14*tetaf_1)*tf+30*teta0-30*tetaf)
a5=(1/(2*tf^5))*((-1*teta0_2+tetaf_2)*tf^2+ ...
    (-6*teta0_1-6*tetaf_1)*tf-12*teta0+12*tetaf)

%ãOìπä÷êîÇÃåvéZ
teta_t=a0+a1*t+a2*t^2+a3*t^3+a4*t^4+a5*t^5


