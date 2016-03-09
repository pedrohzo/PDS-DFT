function [data]=DFT(data)
N = size(data,1)   
X = zeros(N,1);      % pre-allocate result
tic
for k = 1:N
    X(k) = 0;
    for n = 1:N
        X(k) = X(k)+(data(n)*exp((-1j)*2*pi*(n-1)*(k-1)/N));
    end
end
TempoDFT=toc

% figure
% Subplot(2,1,1)
% Plot(X,N)
tic
A=fft(data);
TempoFFT=toc
Diferenca_FFT_x_DFT=max(abs(X - fft(data)))   % how different from built-in FFT?

% Subplot(2,1,2)
% Plot(A,N)