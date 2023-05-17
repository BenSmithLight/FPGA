% Define parameters
A = 1; % signal amplitude
Tp = 2e-6; % pulse time in seconds
fc = 3e9; % radar frequency in Hz
T = 1e-3; % period in seconds
fs = 10*fc; % sampling frequency in Hz
N = round(T*fs); % number of samples per period
t = (0:N-1)/fs; % time vector

rect = @(x) (abs(x) <= 0.5); % define rectangular function

% Define target parameters
targetDistance = 90e3; % distance to target in meters
speedOfLight = 299792458; % speed of light in m/s

% Define parameters for noise
meanNoise = 0; % mean of the Gaussian noise
stdNoise = 1; % standard deviation of the Gaussian noise (adjust for desired SNR)

% Define energy decay factors for each echo signal
energyDecayFactors = [1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1]; % adjust as needed

% Define gate parameters
gateTimeStart = 5.99e-4; % gate start time in seconds
gateTimeLength = 3e-6; % gate length in seconds
gateTimeEnd = gateTimeStart + gateTimeLength; % gate end time in seconds

% Generate echo signals with noise and energy decay
echoSignals = zeros(length(energyDecayFactors), N); % array to store echo signals

for i = 1:length(energyDecayFactors)
    % Adjust transmit signal based on time delay
    echoTimeDelay = 2 * targetDistance / speedOfLight;
    sDelayed = A * rect((t - echoTimeDelay)/Tp) .* cos(2*pi*fc*(t - echoTimeDelay));

    % Generate Gaussian noise
    noise = stdNoise * randn(1, N) + meanNoise;

    % Add noise and energy decay to the echo signal
    echoSignal = energyDecayFactors(i) * (sDelayed + noise);

    % Apply gate and extract the desired portion of the echo signal
    gateIndices = t >= gateTimeStart & t <= gateTimeEnd;
    gatedEchoSignal = echoSignal(gateIndices);

    % Store the gated echo signal
    echoSignals(i, gateIndices) = gatedEchoSignal;
end

% Plot gated echo signals
figure;
for i = 1:length(energyDecayFactors)
    subplot(length(energyDecayFactors), 1, i);
    plot(t(gateIndices), echoSignals(i, gateIndices));
    xlabel('Time (s)');
    ylabel('Amplitude');
    title(sprintf('Gated Echo Signal %d', i));
    grid on;
end

% 生成包含10个脉冲的脉冲矩阵，叠加噪声
x = [echoSignals(1, gateIndices);echoSignals(2, gateIndices);echoSignals(3, gateIndices);echoSignals(4, gateIndices);echoSignals(5, gateIndices);echoSignals(6, gateIndices);echoSignals(7, gateIndices);echoSignals(8, gateIndices);echoSignals(9, gateIndices);echoSignals(10, gateIndices);];
x = x.';
% 非相参累积
y = pulsint(x);
figure();
plot(y);

% Calculate single-pulse SNR
singlePulseSNR = (A^2) / (stdNoise^2);

% Calculate accumulated SNR
accumulatedSNR = sum(energyDecayFactors.^2) * (A^2) / (stdNoise^2);

% Calculate SNR improvement
SNRImprovement = accumulatedSNR / singlePulseSNR;

% Calculate ideal SNR gain
idealSNRGain = sum(energyDecayFactors.^2);

% Calculate actual SNR gain
actualSNRGain = accumulatedSNR / singlePulseSNR;

% Calculate SNR gain ratio
SNRGainRatio = actualSNRGain / idealSNRGain;
