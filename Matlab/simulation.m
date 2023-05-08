% 生成雷达信号
fs = 10e6;  % 采样率
f0 = 1e6;   % 信号频率
t = 0:1/fs:1e-3-1/fs; % 时间轴
s = cos(2*pi*f0*t);    % 信号

% 加入噪声
snr = 10;   % 信噪比
noise = randn(size(s)); 
noise = noise/norm(noise)*norm(s)/(10^(snr/20));
x = s + noise; % 信号加噪声

% 非相参积累运算
n = length(x); % 信号长度
k = 32;        % 积分长度
padding_size = k-1; % padding 的大小
x_padded = [zeros(1,padding_size), x, zeros(1,padding_size)];
y = zeros(1,n+2*padding_size);
for i=1:n+2*padding_size
    if i <= k
        y(i) = sum(x_padded(1:i+padding_size));
    elseif i <= n+k-1
        y(i) = sum(x_padded(i-k+1:i+padding_size));
    else
        y(i) = sum(x_padded(i-k+1:end));
    end
end
y = y(padding_size+1:end-padding_size);


% CFAR检测
window_size = 16; % 滑动窗口大小
guard_size = 4;   % guard cell 大小
threshold = 1.5;  % 阈值
n_train = 100;    % 训练集大小

n_window = floor((n-k)/window_size); % 窗口数
result = zeros(1,n_window);
for i=1:n_window
    window = y((i-1)*window_size+1:i*window_size);
    guard = [y(max(1,(i-1)*window_size-guard_size):(i-1)*window_size),...
             y((i*window_size+1):min(n,(i*window_size+guard_size)))];
    threshold_train = median(guard) * threshold;
    if length(guard) < n_train
        train_set = guard;
    else
        train_set = sort(guard,'descend');
        train_set = train_set(1:n_train);
    end
    mean_train = mean(train_set);
    std_train = std(train_set);
    threshold_detect = mean_train + std_train * threshold;
    result(i) = max(window) > threshold_detect;
end

% 绘制结果
figure;
subplot(2,1,1);
plot(t,x);
title('原始信号');
xlabel('时间/s');
ylabel('幅度');
subplot(2,1,2);
plot(t,y);
hold on;
n_result = length(result);
plot(t(k:k+window_size*n_result-1), result*max(y(1:n-k-window_size+1)), 'r', 'LineWidth', 2);
title('非相参积累运算和CFAR检测结果');
xlabel('时间/s');
ylabel('幅度');
legend('积累结果','检测结果');
