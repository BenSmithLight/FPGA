% Define parameters
A = 1; % signal amplitude
Tp = 2e-6; % pulse time in seconds
fc = 3e9; % radar frequency in Hz
T = 1e-3; % period in seconds
fs = 10*fc; % sampling frequency in Hz
N = round(T*fs); % number of samples per period
t = (0:N-1)/fs; % time vector

% Generate signal
rect = @(x) (abs(x) <= 0.5); % define rectangular function
s = A * rect(t/Tp) .* cos(2*pi*fc*t); % generate signal

% Plot signal
plot(t,s)
xlabel('Time (s)')
ylabel('Amplitude')
title('Radar Signal Waveform')
grid on
