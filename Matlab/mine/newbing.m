% Define parameters
Pt = 1e3; % transmit power in W
Gt = 10^(30/10); % transmit antenna gain
Gr = Gt; % receive antenna gain
sigma = 1; % target RCS in m^2
lambda = 0.1; % signal wavelength in m
R = 90e3; % target range in m
L = 1; % other loss factors

% Calculate echo power
Pr = Pt*Gt*Gr*sigma*lambda^2/((4\pi)^3*R^4)*L; % echo power in W
Pr_dBm = 10*log10(Pr/1e-3); % echo power in dBm

% Display result
fprintf('The echo power is %.2f dBm.\n',Pr_dBm);

% Generate transmit signal
s = waveform(); % generate transmit signal
% Shift and rotate transmit signal
delay = 2*R/prop_speed; % delay in seconds
phase = -4*pi*R/lambda; % phase shift in radians
s_echo = circshift(s,round(delay*fs)); % shift signal in time
s_echo = s_echo.*exp(1i*phase); % rotate signal in phase
% Plot transmit and echo signals
plot(t,s,t,s_echo)
xlabel('Time (s)')
ylabel('Amplitude')
legend('Transmit','Echo')
title('Transmit and Echo Signals')
grid on
