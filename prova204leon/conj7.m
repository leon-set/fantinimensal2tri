%Conjunto 7 - Mateus leon 2025
pontos

px = [p1(1), p2(1), p3(1), p4(1), p5(1), p6(1), p7(1), p8(1), p9(1), p10(1), p1(1)];
py = [p1(2), p2(2), p3(2), p4(2), p5(2), p6(2), p7(2), p8(2), p9(2), p10(2), p1(2)];

fig = [px; py];
MR = @(theta)[cos(theta), sin(theta); ...
              -sin(theta),cos(theta)];
fig90 = MR(pi/2) * fig;
fig180 = MR(pi) * fig;
fig270 = MR(3*pi/2) * fig;

figure(1, 'Name', 'Operações com figuras')
hold on
plot(fig(1, :), fig(2, :), 'LineWidth', 1.1);
plot(fig90(1, :), fig90(2, :), 'LineWidth', 1.1);
plot(fig180(1, :), fig180(2, :), 'LineWidth', 1.1);
plot(fig270(1, :), fig270(2, :), 'LineWidth', 1.1);
title('Pássaros rotacionados')
grid on

po = -fig(:, 1);
po90 = -fig90(:, 1);
po180 = -fig180(:, 1);
po270 = -fig270(:, 1);
figo = fig + po;
figo90 = fig90 + po90;
figo180 = fig180 + po180;
figo270 = fig270 + po270;

figure(2, 'Name', 'Operações com figuras')
hold on
plot(figo(1,:), figo(2,:), 'LineWidth', 1.1);
plot(figo90(1,:), figo90(2,:), 'LineWidth', 1.1);
plot(figo180(1,:), figo180(2,:), 'LineWidth', 1.1);
plot(figo270(1,:), figo270(2,:), 'LineWidth', 1.1);
title('Pássaros rotacionados na origem')
grid on

figure(3, 'Name', 'Operações com figuras')
hold on
fill(figo(1,:), figo(2,:), 'b');
fill(figo90(1,:), figo90(2,:), 'r');
fill(figo180(1,:), figo180(2,:), 'y');
fill(figo270(1,:), figo270(2,:), 'k');
title('Pássaros rotacionados na origem preenchidos')
grid on
