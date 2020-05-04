% Assignment: CSCI 450 Project 3
% Group: Veronica McLeod, Nicholas Ferry, TJ Mosteller
% Input: 3 Recordings from the students to create an average standard
%           recording, One test recording of the same sentence from a 
%           different student, One test recording of a different sentence 
%           from a different student with a few of the same words
% Output: Spectrograms of each person's recording, of all of the recordings
%           aligned, of each word from the average, of each word from 
%           the test recording, and of each word from a different sentence

% Clear the window and clear and preexisting variables 
clc; clear;

window = round(0.5 * 1024);
noverlap = round(0.85*window);


% %%%%%%%%%%%%%% READ FERRY RECORDING %%%%%%%%%%%%%%%%%
% Here we want to read in the first group members audio recording, create a
% spectrogram out of it, create a length and time variable for use as
% dimensions, and plot the spectrogram of the file. 
[y1, fs1] = audioread('ferryRecording.m4a');
[S1, F1, T1] = spectrogram(y1, window, noverlap);
length1 = length(y1); % length of signal
time1 = linspace(0, length1/fs1,length1);
fig1 = figure('name', 'Ferry Spectrogram'),
spectrogram(y1, [], [], [], fs1, 'yaxis');

% Here we split each word into a respective block based on the formulas:
% Start_point = time * frequency sample 
% End_point = time * frequency sample

% Ferry Word 1 - We
audioBlock_ferry1 = y1(0.22*48000:0.62*48000, :);
audiowrite('FerryWord1.wav', audioBlock_ferry1, fs1);

% Ferry Word 2 - Found
audioBlock_ferry2 = y1(1.28*48000:1.75*48000, :);
audiowrite('FerryWord2.wav', audioBlock_ferry2, fs1);

% Ferry Word 3 - A
audioBlock_ferry3 = y1(2.20*48000:2.70*48000, :);
audiowrite('FerryWord3.wav', audioBlock_ferry3, fs1);

% Ferry Word 4 - Simple
audioBlock_ferry4 = y1(3.30*48000:3.90*48000, :);
audiowrite('FerryWord4.wav', audioBlock_ferry4, fs1);

% Ferry Word 5 - Sentence 
audioBlock_ferry5 = y1(4.50*48000:5.10*48000, :);
audiowrite('FerryWord5.wav', audioBlock_ferry5, fs1);

% Ferry Word 6 - With 
audioBlock_ferry6 = y1(5.70*48000:5.99*48000, :);
audiowrite('FerryWord6.wav', audioBlock_ferry6, fs1);

% Ferry Word 7 - About
audioBlock_ferry7 = y1(6.60*48000:7.12*48000, :);
audiowrite('FerryWord7.wav', audioBlock_ferry7, fs1);

% Ferry Word 8 - Ten
audioBlock_ferry8 = y1(7.92*48000:8.29*48000, :);
audiowrite('FerryWord8.wav', audioBlock_ferry8, fs1);

% Ferry Word 9 - Words
audioBlock_ferry9 = y1(8.82*48000:9.30*48000, :);
audiowrite('FerryWord9.wav', audioBlock_ferry9, fs1);

% %%%%%%%%%%%%%% READ MOSTELLER RECORDING %%%%%%%%%%%%%%%%%
% Here we want to read in the second group members audio recording, create a
% spectrogram out of it, create a length and time variable for use as
% dimensions, and plot the spectrogram of the file. 
[y2, fs2] = audioread('mostellerRecording.m4a'); % read in the audio signal 
[S2, F2, T2] = spectrogram(y2, window, noverlap);
length2 = length(y2); % length of signal
time2 = linspace(0, length2/fs2,length2);
fig2 = figure('name', 'Mosteller Spectrogram'),
spectrogram(y2, [], [], [], fs2, 'yaxis');
n = length(y2);
index = 1;

% Here we split each word into a respective block based on the formulas:
% Start_point = time * frequency sample 
% End_point = time * frequency sample 

% Mosteller Word 1 - We
audioBlock_mosteller1 = y2(0.80*48000:1.23*48000, :);
audiowrite('MostellerWord1.wav', audioBlock_mosteller1, fs2);

% Mosteller Word 2 - Found
audioBlock_mosteller2 = y2(1.76*48000:2.17*48000, :);
audiowrite('MostellerWord2.wav', audioBlock_mosteller2, fs2);

% Mosteller Word 3 - A 
audioBlock_mosteller3 = y2(2.70*48000:3.07*48000, :);
audiowrite('MostellerWord3.wav', audioBlock_mosteller3, fs2);

% Mosteller Word 4 - Simple
audioBlock_mosteller4 = y2(3.60*48000:4.20*48000, :);
audiowrite('MostellerWord4.wav', audioBlock_mosteller4, fs2);

% Mosteller Word 5 - Sentence 
audioBlock_mosteller5 = y2(4.68*48000:5.30*48000, :);
audiowrite('MostellerWord5.wav', audioBlock_mosteller5, fs2);

% Mosteller Word 6 - With 
audioBlock_mosteller6 = y2(5.70*48000:6.10*48000, :);
audiowrite('MostellerWord6.wav', audioBlock_mosteller6, fs2);

% Mosteller Word 7 - About
audioBlock_mosteller7 = y2(6.60*48000:7.11*48000, :);
audiowrite('MostellerWord7.wav', audioBlock_mosteller7, fs2);

% Mosteller Word 8 - Ten
audioBlock_mosteller8 = y2(7.70*48000:8.14*48000, :);
audiowrite('MostellerWord8.wav', audioBlock_mosteller8, fs2);

% Mosteller Word 9 - Words
audioBlock_mosteller9 = y2(8.70*48000:9.12*48000, :);
audiowrite('MostellerWord9.wav', audioBlock_mosteller9, fs2);


% %%%%%%%%%%%%%% READ MCLEOD RECORDING %%%%%%%%%%%%%%%%%
% Here we want to read in the third group members audio recording, create a
% spectrogram out of it, create a length and time variable for use as
% dimensions, and plot the spectrogram of the file. 
[y3, fs3] = audioread('mcleodRecording.m4a');
[S3, F3, T3] = spectrogram(y3, window, noverlap);
length3 = length(y3); % length of signal
time3 = linspace(0, length3/fs3,length3);
fig3 = figure('name', 'Mcleod Spectrogram'),
spectrogram(y3, [], [], [], fs3, 'yaxis');
n = length(y3);
index = 1;

% Here we split each word into a respective block based on the formulas:
% Start_point = time * frequency sample 
% End_point = time * frequency sample

% McLeod Word 1 - We 
audioBlock_mcleod1 = y3(0.90*48000:1.37*48000, :);
audiowrite('McLeodWord1.wav', audioBlock_mcleod1, fs3);

% Mosteller Word 2 - Found
audioBlock_mcleod2 = y3(1.90*48000:2.40*48000, :);
audiowrite('McLeodWord2.wav', audioBlock_mcleod2, fs3);

% Mosteller Word 3 - A 
audioBlock_mcleod3 = y3(2.90*48000:3.37*48000, :);
audiowrite('McLeodWord3.wav', audioBlock_mcleod3, fs3);

% Mosteller Word 4 - Simple 
audioBlock_mcleod4 = y3(3.80*48000:4.42*48000, :);
audiowrite('McLeodWord4.wav', audioBlock_mcleod4, fs3);

% Mosteller Word 5 - Sentence
audioBlock_mcleod5 = y3(4.80*48000:5.65*48000, :);
audiowrite('McLeodWord5.wav', audioBlock_mcleod5, fs3);

% Mosteller Word 6 - With 
audioBlock_mcleod6 = y3(6.00*48000:6.43*48000, :);
audiowrite('McLeodWord6.wav', audioBlock_mcleod6, fs3);

% Mosteller Word 7 - About
audioBlock_mcleod7 = y3(6.80*48000:7.41*48000, :);
audiowrite('McLeodWord7.wav', audioBlock_mcleod7, fs3);

% Mosteller Word 8 - Ten 
audioBlock_mcleod8 = y3(8.20*48000:8.75*48000, :);
audiowrite('McLeodWord8.wav', audioBlock_mcleod8, fs3);

% Mosteller Word 9 - Words
audioBlock_mcleod9 = y3(9.10*48000:9.64*48000, :);
audiowrite('McLeodWord9.wav', audioBlock_mcleod9, fs3);


% %%%%%%%%%%%%%% Normalize Words %%%%%%%%%%%%%%%%%
% Here we want to normalize the each audio block to insure that the data
% being averaged is being measured the same, so as to have the same
% independent variables across each audio block

% Word 1 - We
maxLength = max([length(audioBlock_ferry1), length(audioBlock_mosteller1), length(audioBlock_mcleod1)]);
timeFit = 1:maxLength;
audioBlock_ferry1 = interp1(1:length(audioBlock_ferry1), audioBlock_ferry1, timeFit, 'linear', 'extrap');
audioBlock_mosteller1 = interp1(1:length(audioBlock_mosteller1), audioBlock_mosteller1, timeFit, 'linear', 'extrap');
audioBlock_mcleod1 = interp1(1:length(audioBlock_mcleod1), audioBlock_mcleod1, timeFit, 'linear', 'extrap');

% Word 2 - Found
maxLength = max([length(audioBlock_ferry2), length(audioBlock_mosteller2), length(audioBlock_mcleod2)]);
timeFit = 1:maxLength;
audioBlock_ferry2 = interp1(1:length(audioBlock_ferry2), audioBlock_ferry2, timeFit, 'linear', 'extrap');
audioBlock_mosteller2 = interp1(1:length(audioBlock_mosteller2), audioBlock_mosteller2, timeFit, 'linear', 'extrap');
audioBlock_mcleod2 = interp1(1:length(audioBlock_mcleod2), audioBlock_mcleod2, timeFit, 'linear', 'extrap');

% Word 3 - A 
maxLength = max([length(audioBlock_ferry3), length(audioBlock_mosteller3), length(audioBlock_mcleod3)]);
timeFit = 1:maxLength;
audioBlock_ferry3 = interp1(1:length(audioBlock_ferry3), audioBlock_ferry3, timeFit, 'linear', 'extrap');
audioBlock_mosteller3 = interp1(1:length(audioBlock_mosteller3), audioBlock_mosteller3, timeFit, 'linear', 'extrap');
audioBlock_mcleod3 = interp1(1:length(audioBlock_mcleod3), audioBlock_mcleod3, timeFit, 'linear', 'extrap');

% Word 4 - Simple
maxLength = max([length(audioBlock_ferry4), length(audioBlock_mosteller4), length(audioBlock_mcleod4)]);
timeFit = 1:maxLength;
audioBlock_ferry4 = interp1(1:length(audioBlock_ferry4), audioBlock_ferry4, timeFit, 'linear', 'extrap');
audioBlock_mosteller4 = interp1(1:length(audioBlock_mosteller4), audioBlock_mosteller4, timeFit, 'linear', 'extrap');
audioBlock_mcleod4 = interp1(1:length(audioBlock_mcleod4), audioBlock_mcleod4, timeFit, 'linear', 'extrap');

% Word 5 - Sentence 
maxLength = max([length(audioBlock_ferry5), length(audioBlock_mosteller5), length(audioBlock_mcleod5)]);
timeFit = 1:maxLength;
audioBlock_ferry5 = interp1(1:length(audioBlock_ferry5), audioBlock_ferry5, timeFit, 'linear', 'extrap');
audioBlock_mosteller5 = interp1(1:length(audioBlock_mosteller5), audioBlock_mosteller5, timeFit, 'linear', 'extrap');
audioBlock_mcleod5 = interp1(1:length(audioBlock_mcleod5), audioBlock_mcleod5, timeFit, 'linear', 'extrap');

% Word 6 - With 
maxLength = max([length(audioBlock_ferry6), length(audioBlock_mosteller6), length(audioBlock_mcleod6)]);
timeFit = 1:maxLength;
audioBlock_ferry6 = interp1(1:length(audioBlock_ferry6), audioBlock_ferry6, timeFit, 'linear', 'extrap');
audioBlock_mosteller6 = interp1(1:length(audioBlock_mosteller6), audioBlock_mosteller6, timeFit, 'linear', 'extrap');
audioBlock_mcleod6 = interp1(1:length(audioBlock_mcleod6), audioBlock_mcleod6, timeFit, 'linear', 'extrap');

% Word 7 - About
maxLength = max([length(audioBlock_ferry7), length(audioBlock_mosteller7), length(audioBlock_mcleod7)]);
timeFit = 1:maxLength;
audioBlock_ferry7 = interp1(1:length(audioBlock_ferry7), audioBlock_ferry7, timeFit, 'linear', 'extrap');
audioBlock_mosteller7 = interp1(1:length(audioBlock_mosteller7), audioBlock_mosteller7, timeFit, 'linear', 'extrap');
audioBlock_mcleod7 = interp1(1:length(audioBlock_mcleod7), audioBlock_mcleod7, timeFit, 'linear', 'extrap');

% Word 8 - Ten
maxLength = max([length(audioBlock_ferry8), length(audioBlock_mosteller8), length(audioBlock_mcleod8)]);
timeFit = 1:maxLength;
audioBlock_ferry8 = interp1(1:length(audioBlock_ferry8), audioBlock_ferry8, timeFit, 'linear', 'extrap');
audioBlock_mosteller8 = interp1(1:length(audioBlock_mosteller8), audioBlock_mosteller8, timeFit, 'linear', 'extrap');
audioBlock_mcleod8 = interp1(1:length(audioBlock_mcleod8), audioBlock_mcleod8, timeFit, 'linear', 'extrap');

% Word 9 - Words
maxLength = max([length(audioBlock_ferry9), length(audioBlock_mosteller9), length(audioBlock_mcleod9)]);
timeFit = 1:maxLength;
audioBlock_ferry9 = interp1(1:length(audioBlock_ferry9), audioBlock_ferry9, timeFit, 'linear', 'extrap');
audioBlock_mosteller9 = interp1(1:length(audioBlock_mosteller9), audioBlock_mosteller9, timeFit, 'linear', 'extrap');
audioBlock_mcleod9 = interp1(1:length(audioBlock_mcleod9), audioBlock_mcleod9, timeFit, 'linear', 'extrap');



% %%%%%%%%%%%%%% Find Means %%%%%%%%%%%%%%%%%
% Here we concatenate each individual word from the group members into a
% single variable. We then calculate the average of this concatenated
% variable and write it to an audio file for analysis purposes

% Word 1 - We
concat_1 = cat(3, audioBlock_ferry1, audioBlock_mosteller1, audioBlock_mcleod1); 
avg_1 = mean(concat_1, 3);
audiowrite('AVERAGE_WORD_1.wav', avg_1, fs1);

% Word 2 - Found 
concat_2 = cat(3, audioBlock_ferry2, audioBlock_mosteller2, audioBlock_mcleod2); 
avg_2 = mean(concat_2, 3);
audiowrite('AVERAGE_WORD_2.wav', avg_2, fs1);

% Word 3 - A
concat_3 = cat(3, audioBlock_ferry3, audioBlock_mosteller3, audioBlock_mcleod3); 
avg_3 = mean(concat_3, 3);
audiowrite('AVERAGE_WORD_3.wav', avg_3, fs1);

% Word 4 - Simple
concat_4 = cat(3, audioBlock_ferry4, audioBlock_mosteller4, audioBlock_mcleod4); 
avg_4 = mean(concat_4, 3);
audiowrite('AVERAGE_WORD_4.wav', avg_4, fs1);

% Word 5 - Sentence
concat_5 = cat(3, audioBlock_ferry5, audioBlock_mosteller5, audioBlock_mcleod5); 
avg_5 = mean(concat_5, 3);
audiowrite('AVERAGE_WORD_5.wav', avg_5, fs1);

% Word 6 - With
concat_6 = cat(3, audioBlock_ferry6, audioBlock_mosteller6, audioBlock_mcleod6); 
avg_6 = mean(concat_6, 3);
audiowrite('AVERAGE_WORD_6.wav', avg_6, fs1);

% Word 7 - About
concat_7 = cat(3, audioBlock_ferry7, audioBlock_mosteller7, audioBlock_mcleod7); 
avg_7 = mean(concat_7, 3);
audiowrite('AVERAGE_WORD_7.wav', avg_7, fs1);

% Word 8 - Ten 
concat_8 = cat(3, audioBlock_ferry8, audioBlock_mosteller8, audioBlock_mcleod8); 
avg_8 = mean(concat_8, 3);
audiowrite('AVERAGE_WORD_8.wav', avg_8, fs1);

% Word 9 - Words
concat_9 = cat(3, audioBlock_ferry9, audioBlock_mosteller9, audioBlock_mcleod9); 
avg_9 = mean(concat_9, 3);
audiowrite('AVERAGE_WORD_9.wav', avg_9, fs1);


% %%%%%%%%%%%%%% READ IN NEW RECORDING %%%%%%%%%%%%%%%%%
[y4, fs4] = audioread('studentRecording.amr');
length4 = length(y4); % length of signal
time4 = linspace(0, length4/fs4,length4);
y4 = y4*1.5; % Normalize the amplitude of the data from [-0.5, 0.5] to [-1.0, 1.0]

% Here we split each word into a respective block based on the formulas:
% Start_point = time * frequency sample 
% End_point = time * frequency sample
% We then write the file to a new audio file to insure we are analyzing the
% correct word. Lastly we plot the spectrogram of the data and then compute
% the average

% Student Word 1 - We 
audioBlock_student1 = y4(0.80*8000:1.26*8000, :);
audiowrite('studentWord1.wav', audioBlock_student1, fs4);
fig4 = figure('name', 'Test Word 1 ("We") Spectrogram'),
spectrogram(audioBlock_student1, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student1));
timeFit = 1:maxLength;
audioBlock_student1 = interp1(1:length(audioBlock_student1), audioBlock_student1, timeFit, 'linear', 'extrap');
avg_student1 = mean(audioBlock_student1, 3);

% Student Word 2 - Found
audioBlock_student2 = y4(1.63*8000:2.01*8000, :);
audiowrite('studentWord2.wav', audioBlock_student2, fs4);
fig4 = figure('name', 'Test Word 2 ("Found") Spectrogram'),
spectrogram(audioBlock_student2, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student2));
timeFit = 1:maxLength;
audioBlock_student2 = interp1(1:length(audioBlock_student2), audioBlock_student2, timeFit, 'linear', 'extrap');
avg_student2 = mean(audioBlock_student2, 3);

% Student Word 3 - A
audioBlock_student3 = y4(2.41*8000:2.77*8000, :);
audiowrite('studentWord3.wav', audioBlock_student3, fs4);
fig4 = figure('name', 'Test Word 3 ("A") Spectrogram'),
spectrogram(audioBlock_student3, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student3));
timeFit = 1:maxLength;
audioBlock_student3 = interp1(1:length(audioBlock_student3), audioBlock_student3, timeFit, 'linear', 'extrap');
avg_student3 = mean(audioBlock_student3, 3);

% Student Word 4 - Simple
audioBlock_student4 = y4(3.2*8000:3.67*8000, :);
audiowrite('studentWord4.wav', audioBlock_student4, fs4);
fig4 = figure('name', 'Test Word 4 ("Simple") Spectrogram'),
spectrogram(audioBlock_student4, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student4));
timeFit = 1:maxLength;
audioBlock_student4 = interp1(1:length(audioBlock_student4), audioBlock_student4, timeFit, 'linear', 'extrap');
avg_student4 = mean(audioBlock_student4, 3);

% Student Word 5 - Sentence
audioBlock_student5 = y4(3.9*8000:4.39*8000, :);
audiowrite('studentWord5.wav', audioBlock_student5, fs4);
fig4 = figure('name', 'Test Word 5 ("Sentence") Spectrogram'),
spectrogram(audioBlock_student5, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student5));
timeFit = 1:maxLength;
audioBlock_student5 = interp1(1:length(audioBlock_student5), audioBlock_student5, timeFit, 'linear', 'extrap');
avg_student5 = mean(audioBlock_student5, 3);

% Student Word 6 - With 
audioBlock_student6 = y4(4.6*8000:4.9*8000, :);
audiowrite('studentWord6.wav', audioBlock_student6, fs4);
fig4 = figure('name', 'Test Word 6 ("With") Spectrogram'),
spectrogram(audioBlock_student6, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student6));
timeFit = 1:maxLength;
audioBlock_student6 = interp1(1:length(audioBlock_student6), audioBlock_student6, timeFit, 'linear', 'extrap');
avg_student6 = mean(audioBlock_student6, 3);

% Student Word 7 - About 
audioBlock_student7 = y4(5.23*8000:5.73*8000, :);
audiowrite('studentWord7.wav', audioBlock_student7, fs4);
fig4 = figure('name', 'Test Word 7 ("About") Spectrogram'),
spectrogram(audioBlock_student7, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student7));
timeFit = 1:maxLength;
audioBlock_student7 = interp1(1:length(audioBlock_student7), audioBlock_student7, timeFit, 'linear', 'extrap');
avg_student7 = mean(audioBlock_student7, 3);

% Student Word 8 - Ten 
audioBlock_student8 = y4(6.15*8000:6.52*8000, :);
audiowrite('studentWord8.wav', audioBlock_student8, fs4);
fig4 = figure('name', 'Test Word 8 ("Ten") Spectrogram'),
spectrogram(audioBlock_student8, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student8));
timeFit = 1:maxLength;
audioBlock_student8 = interp1(1:length(audioBlock_student8), audioBlock_student8, timeFit, 'linear', 'extrap');
avg_student8 = mean(audioBlock_student8, 3);

% Student Word 9 - Words
audioBlock_student9 = y4(6.75*8000:7.15*8000, :);
audiowrite('studentWord9.wav', audioBlock_student9, fs4);
fig4 = figure('name', 'Test Word 9 ("Words") Spectrogram'),
spectrogram(audioBlock_student9, [], [], [], fs4, 'yaxis');
maxLength = max(length(audioBlock_student9));
timeFit = 1:maxLength;
audioBlock_student9 = interp1(1:length(audioBlock_student9), audioBlock_student9, timeFit, 'linear', 'extrap');
avg_student9 = mean(audioBlock_student9, 3);


% %%%%%%%%%%%%%% READ IN DIFFERENT SENTENCE %%%%%%%%%%%%%%%%%
% We will read and and test a different sentence to see if th matrix of
% averages is a good representation of the word

[y5, fs5] = audioread('differentSentence.amr'); % read in the sentence
length5 = length(y5); % length of signal
time5 = linspace(0, length5/fs5,length5);
y5 = y5*2; % Normalize the amplitude of the data from [-0.5, 0.5] to [-1.0, 1.0]

% Here we split each word into a respective block based on the formulas:
% Start_point = time * frequency sample 
% End_point = time * frequency sample
% We then write the file to a new audio file to insure we are analyzing the
% correct word. Lastly we plot the spectrogram of the data and then compute
% the average

% Student Word 1 - This
audioBlock_diffSent1 = y5(0.56*8000:0.84*8000, :);
audiowrite('diffSent_word1.wav', audioBlock_diffSent1, fs5);
fig5 = figure('name', 'Different Sentence Word 1 ("This") Spectrogram'),
spectrogram(audioBlock_diffSent1, [], [], [], fs5, 'yaxis');
maxLength = max(length(audioBlock_diffSent1));
timeFit = 1:maxLength;
audioBlock_diffSent1 = interp1(1:length(audioBlock_diffSent1), audioBlock_diffSent1, timeFit, 'linear', 'extrap');
avg_diffSent1 = mean(audioBlock_diffSent1, 3);

% Student Word 2  - Is
audioBlock_diffSent2 = (y5(1.53*8000:1.87*8000, :)); %3
audiowrite('diffSent_word2.wav', audioBlock_diffSent2, fs5);
fig5 = figure('name', 'Different Sentence Word 2 ("Is") Spectrogram'),
spectrogram(audioBlock_diffSent2, [], [], [], fs5, 'yaxis');
maxLength = max(length(audioBlock_diffSent2));
timeFit = 1:maxLength;
audioBlock_diffSent2 = interp1(1:length(audioBlock_diffSent2), audioBlock_diffSent2, timeFit, 'linear', 'extrap');
avg_diffSent2 = mean(audioBlock_diffSent2, 3);

% Student Word 3 - A
audioBlock_diffSent3 = (y5(2.34*8000:2.83*8000, :));%3
audiowrite('diffSent_word3.wav', audioBlock_diffSent3, fs5);
fig5 = figure('name', 'Different Sentence Word 3 ("A") Spectrogram'),
spectrogram(audioBlock_diffSent3, [], [], [], fs5, 'yaxis');
maxLength = max(length(audioBlock_diffSent3));
timeFit = 1:maxLength;
audioBlock_diffSent3 = interp1(1:length(audioBlock_diffSent3), audioBlock_diffSent3, timeFit, 'linear', 'extrap');
avg_diffSent3 = mean(audioBlock_diffSent3, 3);

% Student Word 4 - New 
audioBlock_diffSent4 = (y5(3.11*8000:3.69*8000, :));%3
audiowrite('diffSent_word4.wav', audioBlock_diffSent4, fs5);
fig5 = figure('name', 'Different Sentence Word 4 ("New") Spectrogram'),
spectrogram(audioBlock_diffSent4, [], [], [], fs5, 'yaxis');
maxLength = max(length(audioBlock_diffSent4));
timeFit = 1:maxLength;
audioBlock_diffSent4 = interp1(1:length(audioBlock_diffSent4), audioBlock_diffSent4, timeFit, 'linear', 'extrap');
avg_diffSent4 = mean(audioBlock_diffSent4, 3);

% Student Word 5 - Simple 
audioBlock_diffSent5 = (y5(4.0*8000:4.52*8000, :));%4
audiowrite('diffSent_word5.wav', audioBlock_diffSent5, fs5);
fig5 = figure('name', 'Different Sentence Word 5 ("Simple") Spectrogram'),
spectrogram(audioBlock_diffSent5, [], [], [], fs5, 'yaxis');
maxLength = max(length(audioBlock_diffSent5));
timeFit = 1:maxLength;
audioBlock_diffSent5 = interp1(1:length(audioBlock_diffSent5), audioBlock_diffSent5, timeFit, 'linear', 'extrap');
avg_diffSent5 = mean(audioBlock_diffSent5, 3);

% Student Word 6 - Sentence 
audioBlock_diffSent6 = (y5(5.14*8000:5.55*8000, :));%3
audiowrite('diffSent_word6.wav', audioBlock_diffSent6, fs5);
fig5 = figure('name', 'Different Sentence Word 6 ("Sentence") Spectrogram'),
spectrogram(audioBlock_diffSent6, [], [], [], fs5, 'yaxis');
maxLength = max(length(audioBlock_diffSent6));
timeFit = 1:maxLength;
audioBlock_diffSent6 = interp1(1:length(audioBlock_diffSent6), audioBlock_diffSent6, timeFit, 'linear', 'extrap');
avg_diffSent6 = mean(audioBlock_diffSent6, 3);


% %%%%%%%%%%%%%% ALIGNED SPECTROGRAMS %%%%%%%%%%%%%%%%%
% print the spectrograms aligned for further analysis

% name the figure
figure('name', 'Spectrograms Aligned'),

% Plot 1
subplot(3, 1, 1);
spectrogram(y1, [], [], [], fs1, 'yaxis');
title('Ferry Spectrogram');

% Plot 2
subplot(3, 1, 2);
spectrogram(y2, [], [], [], fs2, 'yaxis');
title('Mosteller Spectrogram');

% Plot 3
subplot(3, 1, 3);
spectrogram(y3, [], [], [], fs3, 'yaxis');
title('Mcleod Spectrogram');

% Plot the student A and different sentence spectrograms
% nmem the figure
figure('name', 'Student A and Different Sentence Spectrograms'),
%plot 1
subplot(2, 1, 1);
spectrogram(y4, [], [], [], fs4, 'yaxis');
title('Student A Spectrogram');

% plot 2
subplot(2, 1, 2);
spectrogram(y5, [], [], [], fs5, 'yaxis');
title('Different Sentence Spectrogram');

% %%%%%%%%%%%%%% ALIGNED AUDIOFILES %%%%%%%%%%%%%%%%%
% Examine each audio file data stacked on top of each other with title of
% file underneath its corresponding graph

% Name the figure
figure('name', 'Actual Sound File'),
% Plot 1
subplot(5, 1, 1);
plot(time1, y1);
title('Ferry File');

% Plot 2
subplot(5, 1, 2);
plot(time2, y2);
title('Mosteller File');

% Plot 3
subplot(5, 1, 3);
plot(time3, y3);
title('Mcleod File');

% Plot 4
subplot(5, 1, 4);
plot(time4, y4);
title('Student A File');

% Plot 5
subplot(5, 1, 5);
plot(time5, y5);
title('Different Sentence');

% %%%%%%%%%%%%%% AVERAGE SPECTROGRAMS PER WORD %%%%%%%%%%%%%%%%%
% This is the spectrograms of the computed averages from the original three
% words by us (the group members)

figure('name', 'Average Spectrograms Per Word'),

% Average Word 1 Spectrogram
subplot(3, 3, 1);
spectrogram(avg_1, [], [], [], fs1, 'yaxis');
title('Average Word 1 ("We") Spectrogram');

% Average Word 2 Spectrogram
subplot(3, 3, 2);
spectrogram(avg_2, [], [], [], fs1, 'yaxis');
title('Average Word 2 ("Found") Spectrogram');

% Average Word 3 Spectrogram
subplot(3, 3, 3);
spectrogram(avg_3, [], [], [], fs1, 'yaxis');
title('Average Word 3  ("A") Spectrogram');

% Average Word 4 Spectrogram
subplot(3, 3, 4);
spectrogram(avg_4, [], [], [], fs1, 'yaxis');
title('Average Word 4 ("Simple") Spectrogram');

% Average Word 5 Spectrogram
subplot(3, 3, 5);
spectrogram(avg_5, [], [], [], fs1, 'yaxis');
title('Average Word 5 ("Sentence") Spectrogram');

% Average Word 6 Spectrogram
subplot(3, 3, 6);
spectrogram(avg_6, [], [], [], fs1, 'yaxis');
title('Average Word 6 ("With") Spectrogram');

% Average Word 7 Spectrogram
subplot(3, 3, 7);
spectrogram(avg_7, [], [], [], fs1, 'yaxis');
title('Average Word 7 ("About") Spectrogram');

% Average Word 8 Spectrogram
subplot(3, 3, 8);
spectrogram(avg_8, [], [], [], fs1, 'yaxis');
title('Average Word 8 ("Ten") Spectrogram');

% Average Word 9 Spectrogram
subplot(3, 3, 9);
spectrogram(avg_9, [], [], [], fs1, 'yaxis');
title('Average Word 9 ("Words") Spectrogram');

% Individual figures for testing purposes

% %%%%%%%%%%%%%% AVERAGE SPECTROGRAMS PER WORD %%%%%%%%%%%%%%%%%
% fig4 = figure('name', 'Average Word 1 ("We") Spectrogram'),
% spectrogram(avg_1, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 2 ("Found") Spectrogram'),
% spectrogram(avg_2, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 3  ("A") Spectrogram'),
% spectrogram(avg_3, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 4 ("Simple") Spectrogram'),
% spectrogram(avg_4, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 5 ("Sentence") Spectrogram'),
% spectrogram(avg_5, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 6 ("With") Spectrogram'),
% spectrogram(avg_6, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 7 ("About") Spectrogram'),
% spectrogram(avg_7, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 8 ("Ten") Spectrogram'),
% spectrogram(avg_8, [], [], [], fs1, 'yaxis');
% fig4 = figure('name', 'Average Word 9 ("Words") Spectrogram'),
% spectrogram(avg_9, [], [], [], fs1, 'yaxis');




