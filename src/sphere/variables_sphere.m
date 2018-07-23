filename = 'Clip_BWB08.csv'; %Fichier CFD donnant l'écoulement
B = csvread('surface_BWB.csv',1,0);
BWB=alphaShape(B(:,24), B(:,25), B(:,26),2);

method = 'linear'; % Méthode d'interpolation pour les vitesses

X_Plan = 20; %Abscisse (m) du plan de normale x dans lequel on veut visualiser l'intersection avec les trajectoires

Xin=[14.36,-0.2,11.19,0,0.105,0.2,0,0]; %[X0;u0;Y0;v0;Z0;w0;tetha0;omega0];

%temps de simulation
tmax=2;

%pas de temps
deltat=0.01;

g=9.81; %gravité

rhoShimoi=57.25*0.45359237/(0.3048^3); % 917.0570 masse vol de la glace kg/m^3 annoncee par Koji Shimoi
rhoPlastique=1120; % masse volumique du plastique(kg/m^3)


%%constante pour une sphere
dsp=0.04 ;% diametre


muair=1.e-5; % viscosite de l'air
rhoair= 1.195; %Rho2D(filename, x(1),x(3),method); % densite de l'air (kg/m^3)



