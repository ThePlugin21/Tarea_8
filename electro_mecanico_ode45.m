[t,x]=ode45(@electro_mecanico,[0 10], [0 0 0]);
figure(1)
plot(t,x(:,3));
grid on
title("Motor DC");
xlabel("Tiempo");
ylabel("Velocidad");