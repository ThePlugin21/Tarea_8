function dx = electro_mecanico(t,x)

R = 2;       % Resistencia de la armadura (ohms)
Kt = 0.01;   % Constante de torque del motor (Nm/A)
B = 12e-4;   % Coeficiente de fricción viscosa (Nm.s/rad)
L = 23e-3;   % Inductancia de la armadura (henries)
J = 1e-3;    % Momento de inercia del rotor (kg.m^2)
Ke = 0.01;   % Constante de voltaje del motor (V.s/rad)
V = 24*0.25; % Voltaje aplicado al motor (V)

% Inicialización del vector que contiene las derivadas de las variables de estado
dx = zeros(3 ,1);

% Ecuación diferencial que representa la dinámica de la corriente de armadura
dx(1)=(1/L)*(V-R*x(1)-Ke*x(3));

% Ecuación diferencial que representa la derivada de la posición angular
dx(2)=x(3);

% Ecuación diferencial que representa la dinámica de la velocidad angular del rotor
dx(3)=(1/J)*(Kt*x(1)-B*x(3));
