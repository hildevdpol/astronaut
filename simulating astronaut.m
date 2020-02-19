% Longeigenschappen
x_LW = [0.001 8 11 0.2];
x_alv = [0.001 2 2.75 0.8];
x_TW = [-240 -2.3 5 4.6];

R_LW = 2;  % cmH2O*s/L
R_alv = 1;  % cmH2O*s/L
R = [R_LW R_alv];  % gecombineerde vector

% Beademingsinstellingen
f_LWO = [0.21 0 0.79];  % dimensionless fraction
period = 6;  % seconds
pulse_width = 35;  % percent

P_LWO_insp = 10;  % cmH2O
P_LWO_EE = 5;  % cmH2O

% Conversie-factoren
P_atm = 70;  % cmH2O (~ 0.7 atm)
cmw_kPa = 0.0980665;  % omrekenfactor
k = 25.45;  % L/mol

% toegevoegde grenswaarde
p_O2_grenswaarde = 16 % [kPA]

% Diffusie en oplosbaarheid
D = [1e-3 1e-2 0.545e-4];  % L/(s kPa)
s = [2.4e-4 5e-3 1.23e-4];  % L/(L_blood kPa)

% Bloedvolumina en cardiac output
V_PC = .08;  % L
V_SC = 0.250;  % L
dV_CO = 5/60;  % L/s

% Tijdsvertraging
t_left = 10;  % s
t_right = 40;  % s

% Metabool verbruik/productie
dc_metabool = [-0.250 0.200 0]/60; % L O2 en CO2
dc_metabool_O2 = -0.250/60;
dc_metabool_CO2 = 0.200/60; 
d_O2_metabool = -0.250; 
d_CO2_metabool = 0.200; 

% Initiële waarden
V_init = [0.82 3.28];  % L, als initiele waarde voor V

f_LW_init = [0.174 0.0291 0.79];
f_alv_init = [0.154 0.0451 0.79 ];

p_PC_init = [6.92 3.45 55.7];  % kPa
p_SC_init = [4.34 11.3 56];  % kPa
p_PA_init = [4.34 11.3 56];  % kPa
p_SA_init = [7.11 3.26 56.4];  % kPa
p_weefsel_init= [4.33 11.3 56]; % kPa

Hbx_PC_init = [.564 8.436 ]*1e-3;  % mol/L
Hbx_SC_init = [2.44 6.560 ]*1e-3;  % mol/L
Hbx_PA_init = [2.44 6.560 ]*1e-3;  % mol/L
Hbx_SA_init = [.520 8.480 ]*1e-3;  % mol/L

V_w= 5; % in L


% Simulatie
sim('oxygenBufferingModel_2017b');