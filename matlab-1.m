% Параметры сигнала
fs = 1000;             % Частота дискретизации (Гц)
t = 0:1/fs:1-1/fs;     % Временная шкала (1 секунда)
f = 5;                 % Частота сигнала (Гц)

% Создание чистого сигнала
signal = sin(2*pi*f*t);

% Добавление шума (белый шум)
noisy_signal = signal + 0.5*randn(size(t));

% Размер окна для скользящего среднего (например, 10 точек)
window_size = 10;

% Применение фильтра скользящего среднего
smoothed_signal = movmean(noisy_signal, window_size);

% Визуализация результатов
figure;
subplot(3,1,1);
plot(t, signal);
title('Исходный сигнал');
xlabel('Время (с)');
ylabel('Амплитуда');

subplot(3,1,2);
plot(t, noisy_signal);
title('Сигнал с шумом');
xlabel('Время (с)');
ylabel('Амплитуда');

subplot(3,1,3);
plot(t, smoothed_signal);
title('Сглаженный сигнал (скользящее среднее)');
xlabel('Время (с)');
ylabel('Амплитуда');
