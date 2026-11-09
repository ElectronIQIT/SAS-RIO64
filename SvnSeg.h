/* 
 * File:   SvnSeg.h
 * Author: watso
 *
 * Created on August 20, 2026, 9:37 PM
 */

#ifndef SVNSEG_H
#define	SVNSEG_H

// Array for numbers 0-9 on a Common Cathode display
rom const unsigned char seg_map[15] = {
    0xFC, // 0 = A,B,C,D,E,F
    0x60, // 1 = B,C
    0xDA, // 2 = A,B,G,E,D
    0xF2, // 3 = A,B,G,C,D
    0x66, // 4 = F,G,B,C
    0xB6, // 5 = A,F,G,C,D
    0xBE, // 6 = A,F,E,D,C,G
    0xE0, // 7 = A,B,C
    0xFE, // 8 = A,B,C,D,E,F,G
    0xF6,  // 9 = A,B,C,F,G
    0x01, // 10 DP = DP
    0x00, // 11 Blank = None
    0x02,  // 12 - = Dash
    0x0C,  // 13 Letter I
    0xCE  // 14 Letter P
};

//Array to sweep the display
rom const unsigned char segments[9] = {   
    0x04, // F
    0x08, // E
    0x10, // D
    0x20, // C
    0x40, // B
    0x80, // A
    0x02, // G
    0x10, //  D
    0x00  // BLANK
};

rom const unsigned char wheel[4] = {   
    0x24, // F+C
    0x48, // E+B
    0x90, // D+A
    0x02 // G
};
#endif	/* SVNSEG_H */

