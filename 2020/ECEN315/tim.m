clear;clc;

s = tf('s');

forward = 10*((s+1000)/((s+1)*(s+5)))
linearSystemAnalyzer(forward)