npulse = 10;
% 生成包含10个脉冲的脉冲矩阵，叠加噪声
x = repmat(sin(2*pi*(0:99)'/100),1,npulse) + 0.1*randn(100,npulse);
% 非相参累积
y = pulsint(x);

% 画图
subplot(2,1,1)
plot(abs(x(:,1)))
ylabel('Magnitude')
title('First Pulse')
subplot(2,1,2)
plot(abs(y))
ylabel('Magnitude')
title('Integrated Pulse')
