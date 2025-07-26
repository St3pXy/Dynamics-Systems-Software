s = tf('s');
W = (10/16) * ((s^2 - 1)/(s^2 * (s - 0.1) * (s^2 + 0.1 * s + 16)));

bode(W);
% nyquist(W);
nyquistplot(W);

% No visible difference between "nyquist" and "nyquistplot" polar graph
% plotters - so dafult "nyquist" mathlab function was choosed.