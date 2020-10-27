#ifndef AUDIO
#define AUDIO

#define NOTE_GAP 500000

const int fn  = 240; // 4 beats
const int hn  = 120; // 2 beats
const int qen = 90;  // 1.5 beats
const int en  = 60;  // 1 beat
const int qn  = 30;
const int sn  = 15;

// Define the notes
const long c[9]   = {16, 33, 65, 131, 262, 523, 1047, 2093, 4186};
const long cs[9]  = {17, 35, 69, 139, 277, 554, 1109, 2217, 4435};
const long d[9]   = {18, 37, 73, 147, 294, 587, 1175, 2349, 4699};
const long eb[9]  = {19, 39, 78, 156, 311, 622, 1245, 2489, 4978};
const long e[9]   = {21, 41, 82, 165, 330, 659, 1319, 2637, 5274};
const long f[9]   = {22, 44, 87, 175, 349, 699, 1397, 2794, 5588};
const long fs[9]  = {23, 46, 93, 185, 370, 740, 1480, 2960, 5920};
const long g[9]   = {25, 49, 98, 196, 392, 784, 1568, 3136, 6272};
const long gs[9]  = {26, 52, 104, 208, 415, 831, 1661, 3322, 6645};
const long a[9]   = {28, 55, 110, 220, 440, 880, 1760, 3520, 7040};
const long bb[9]  = {29, 58, 117, 233, 466, 932, 1865, 3729, 7459};
const long b[9]   = {31, 62, 124, 247, 494, 988, 1976, 3951, 7902};
const long r = 25000;

#endif AUDIO
