% Скрипт FSINUSFI вычисляет преобразование Фурье
% для симметричного относительно начала синусоидального импульса,
% сдвинутого на b, с параметрами: длительность a и общая площадь под кривой 1

a = 3;
b = 2;

syms x w % объявление символьных переменных
integral_result = int(pi/(4*a) * sin(2*pi*(x-b)/a) * exp(-j*w*x), -a/2-b, a/2-b);
% вычисление интеграла Фурье

% Построение графика для действительной и мнимой части преобразования Фурье
figure;
ezplot(real(integral_result), [-5 5]);
hold on;
ezplot(imag(integral_result), [-5 5]);
u = -5:1:5;
y = zeros(size(u));
plot(u, y); % рисование горизонтальной линии y=0
grid on;
hold off;

title('Преобразование Фурье для смещенного синусоидального импульса');
xlabel('w');
ylabel('Amplitudine');
legend('Действительная часть', 'Мнимая часть');
