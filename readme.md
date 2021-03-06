# Digital Signal Processing with MATLAB

<img src="hei1.jpg" alt="A teacher - Werner Heisenberg">

## Description

All of the codes in this repo are based on Dr. Po Chen's course of DSP in Youtube!

You can access the course here: [Digital Signal Processing With Matlab](https://www.youtube.com/playlist?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)

Also, the main website of this repository is [here](https://amirhdre.github.io/DSP-with-MATLAB/) - You can view published MATLAB codes in this website.

1. [S1](s1/s1.html)
2. [S2](s2/s2.html)
3. [S3](s3/s3.html)
4. [S4](s4/s4.html)
5. [S5](s5/s5.html)
6. [S5-2](s5-2/s5_2.html)

### 1. Matlab Crashcourse 1,2,3
- [Matlab Crash Course 1](https://www.youtube.com/watch?v=y5PTcskuldE&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=1)
- [Matlab Crash Course 2](https://www.youtube.com/watch?v=OU7F16yPffI&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=2)
- [Matlab Crash Course 3](https://www.youtube.com/watch?v=5asZPwGMZFs&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=3)

### 2. Basic signals and Operators 
- [Digital Signal Processing Using Matlab 1 (Basic Signals and Operations)](https://www.youtube.com/watch?v=tpN12ruYATc&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=4)

step seq, impulse seq, shift/fold a signal, signal addition/multiplication, real/complex exponential signals, energy, power
impsqe.m, stepseq.m, sigshift.m, sigfold.m, sigadd.m, sigmult.m, 

### 3. Complex numbers
- [Digital Signal Processing Using Matlab 2 (A Tutorial on Complex Numbers)](https://www.youtube.com/watch?v=WXKyTXVTnKQ&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=5)

properties of complex number, complex addition, multiplication, division (using conj), principle square root, standard & polar (euler) representation 
### 4. Excercises for basic signals and operations
- [Digital Signal Processing Using Matlab 3 (Exercises for Basic Signals & Operations)](https://www.youtube.com/watch?v=2D66kbRiVko&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=6)

s1.m

### 5. Convolution
- [Digital Signal Processing Using Matlab 4 (Convolution)](https://www.youtube.com/watch?v=9YJmOfVTA78&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=7)
- [Digital Signal Processing Using Matlab 5 (Convolution, Correlation and Exercises)](https://www.youtube.com/watch?v=iNMe8gkjoYo&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=8)

odd and even decomposition, convolution, cross-correlation, four properties of convolution, matlab DTFT implementation, DTFT can be implemented as matrix multiplication, thus many interesting concepts from linear algebra can be imported into DSP, like eignevalue and eigenvector.
unit_sample_synth, conv_m.m, s2.m

### 6. DFT or DTFT 
- [Digital Signal Processing Using Matlab 6 (Discrete Fourier Transform 1)](https://www.youtube.com/watch?v=cbC1y-Y0V10&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=10)
- [Digital Signal Processing Using Matlab 7 (Discrete Fourier Transform 2)](https://www.youtube.com/watch?v=sClKKXlwDMM&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=10)
- [Digital Signal Processing Using Matlab 8 (Discrete Fourier Transform 3)](https://www.youtube.com/watch?v=69oyTIdIIfk&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=11)

properties of DTFT, linearity, modulation (freq-shift), time-shift, conjugation. Write DFT from scratch. compare our own DFT and matlab's FFT. 
folding, convolution, correlation, multiplication,  Parseval's Theorem (energy), s3.m

### 7. DFS 
- [Digital Signal Processing Using Matlab 9 (Discrete Fourier Series 1)](https://www.youtube.com/watch?v=8CALyVlfB0U&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=12)
- [Digital Signal Processing Using Matlab 10 (Discrete Fourier Series 2)](https://www.youtube.com/watch?v=lbgPUeDyxkQ&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=14)
- [Digital Signal Processing Using Matlab 11 (Discrete Fourier Series 3)](https://www.youtube.com/watch?v=keY4SDmFh8E&list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW&index=15)

DFS matlab implementation, periodic singal example, dfs.m, idfs.m, s4.m, DFS of square wave train, relationship between frequency domain and time domain, effect of each fourier series coefficients on the singal in time domain (after synthesis)

### 8. Filters
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 1)](https://youtu.be/zvX_HDCXJJk?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 2)](https://youtu.be/aGbWSTHyQVM?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 3)](https://youtu.be/w9P-_fQMlIk?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 4)](https://youtu.be/GvO_nbXkb1Q?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 5)](https://youtu.be/9kJNfb-bhYo?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 6)](https://youtu.be/xIC1he784rE?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)
- [Digital Signal Processing Using Matlab 12 (Discrete Filters 7)](https://youtu.be/_mdOcOOC84E?list=PLX8cYDJmWL1mfq6BI-klKB7YzRdJZ2_WW)

time domain representation of Ideal Frequency Selective Filter (IFF), Non Ideal Frequency Selective Filter (NFF), moving average, difference, MA with different weights b_k, generalized moving average, windows (filters),
box, kaiser, bartlett, hamming, van hann (old hanning), wvtool, freqz(B,A,N), effect of box, kasier, and hamming window
apply filters to signal, use fir function, fir1, fir2, firpm (Parks-McClellan optimal equiripple FIR filter design), firpm (Parks-McClellan optimal equiripple FIR filter design), 
firgr (Generalized Remez FIR filter design), firls (Linear-phase FIR filter design using least-squares error minimization), fircls (Linear-phase FIR filter design by constrained least-squares), 
recusrive low-pass filter, design filters with fdatools, tf2zp, zp2tf, fvtool, butterworth (butter), Chebyshev Type I,II (cheby1,2), Eliptic (ellip) filters, Use b,a coeffs to filter a signal with filter() function, 
 Use filtfilt to have zero-phase filter, designfilt is the second way to use IIR filters, filtord

