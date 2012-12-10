//
//  BackEndDictionary.h
//  MusicTheoryTutor
//
//  Created by Steven Lester on 12/7/12.
//  Copyright (c) 2012 Steven Lester. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chords.h"

@interface BackEndDictionary : NSObject

@end

//three note chords

 NSString *MAJOR[21][3] = { { @"A#", @"Cx", @"E#" }, { @"A", @"C#", @"E" },
    { @"Ab", @"C", @"Eb" }, { @"B#", @"Dx", @"Fx" }, { @"B", @"D#", @"F#" },
    { @"Bb", @"D", @"F" }, { @"C#", @"E#", @"G#" }, { @"C", @"E", @"G" },
    { @"Cb", @"Eb", @"Gb" }, { @"D#", @"Fx", @"A#" }, { @"D", @"F#", @"A" },
    { @"Db", @"F", @"Ab" }, { @"E#", @"Gx", @"B#" }, { @"E", @"G#", @"B" },
    { @"Eb", @"G", @"Bb" }, { @"F#", @"A#", @"C#" }, { @"F", @"A", @"C" },
    { @"Fb", @"Ab", @"Cb" }, { @"G#", @"B#", @"D#" }, { @"G", @"B", @"D" },
    { @"Gb", @"Bb", @"Db" } };

 NSString *FLATTENED5TH[21][3] = { { @"A#", @"(Cx)", @"E" },
    { @"A", @"(C#)", @"Eb" }, { @"Ab", @"(C)", @"Ebb" },
    { @"B#", @"(Dx)", @"F#" }, { @"B", @"(D#)", @"F" },
    { @"Bb", @"(D)", @"Fb" }, { @"C#", @"(E#)", @"G" }, { @"C", @"(E)", @"Gb" },
    { @"Cb", @"(Eb)", @"Gbb" }, { @"D#", @"(Fx)", @"A" },
    { @"D", @"(F#)", @"Ab" }, { @"Db", @"(F)", @"Abb" },
    { @"E#", @"(Gx)", @"B" }, { @"E", @"(G#)", @"Bb" },
    { @"Eb", @"(G)", @"Bbb" }, { @"F#", @"(A#)", @"C" },
    { @"F", @"(A)", @"Cb" }, { @"Fb", @"(Ab)", @"Cbb" },
    { @"G#", @"(B#)", @"D" }, { @"G", @"(B)", @"Db" },
    { @"Gb", @"(Bb)", @"Dbb" } };

 NSString *MINOR[21][3] = { { @"A#", @"C#", @"E#" }, { @"A", @"C", @"E" },
    { @"Ab", @"Cb", @"Eb" }, { @"B#", @"D#", @"Fx" }, { @"B", @"D", @"F#" },
    { @"Bb", @"Db", @"F" }, { @"C#", @"E", @"G#" }, { @"C", @"Eb", @"G" },
    { @"Cb", @"Ebb", @"Gb" }, { @"D#", @"F#", @"A#" }, { @"D", @"F", @"A" },
    { @"Db", @"Fb", @"Ab" }, { @"E#", @"G#", @"B#" }, { @"E", @"G", @"B" },
    { @"Eb", @"Gb", @"Bb" }, { @"F#", @"A", @"C#" }, { @"F", @"Ab", @"C" },
    { @"Fb", @"Abb", @"Cb" }, { @"G#", @"B", @"D#" }, { @"G", @"Bb", @"D" },
    { @"Gb", @"Bbb", @"Db" } };

 NSString *DIMINISHED[21][3] = { { @"A#", @"C#", @"E" }, { @"A", @"C", @"Eb" },
    { @"Ab", @"Cb", @"Ebb" }, { @"B#", @"D#", @"F#" }, { @"B", @"D", @"F" },
    { @"Bb", @"Db", @"Fb" }, { @"C#", @"E", @"G" }, { @"C", @"Eb", @"Gb" },
    { @"Cb", @"Ebb", @"Gbb" }, { @"D#", @"F#", @"A" }, { @"D", @"F", @"Ab" },
    { @"Db", @"Fb", @"Abb" }, { @"E#", @"G#", @"B" }, { @"E", @"G", @"Bb" },
    { @"Eb", @"Gb", @"Bbb" }, { @"F#", @"A", @"C" }, { @"F", @"Ab", @"Cb" },
    { @"Fb", @"Abb", @"Cbb" }, { @"G#", @"B", @"D" }, { @"G", @"Bb", @"Db" },
    { @"Gb", @"Bbb", @"Dbb" } };

 NSString *AUGMENTED[21][3] = { { @"A#", @"Cx", @"Ex" }, { @"A", @"C#", @"E#" },
    { @"Ab", @"C", @"E" }, { @"B#", @"Dx", @"F#x" }, { @"B", @"D#", @"Fx" },
    { @"Bb", @"D", @"F#" }, { @"C#", @"E#", @"Gx" }, { @"C", @"E", @"G#" },
    { @"Cb", @"Eb", @"G" }, { @"D#", @"Fx", @"Ax" }, { @"D", @"F#", @"A#" },
    { @"Db", @"F", @"A" }, { @"E#", @"Gx", @"Bx" }, { @"E", @"G#", @"B#" },
    { @"Eb", @"G", @"B" }, { @"F#", @"A#", @"Cx" }, { @"F", @"A", @"C#" },
    { @"Fb", @"Ab", @"C" }, { @"G#", @"B#", @"Dx" }, { @"G", @"B", @"D#" },
    { @"Gb", @"Bb", @"D" } };

 NSString *SUSPENDED2ND[21][3] = { { @"A#", @"B#", @"E#" },
    { @"A", @"B", @"E" }, { @"Ab", @"Bb", @"Eb" }, { @"B#", @"Cx", @"Fx" },
    { @"B", @"C#", @"F#" }, { @"Bb", @"C", @"F" }, { @"C#", @"D#", @"G#" },
    { @"C", @"D", @"G" }, { @"Cb", @"Db", @"Gb" }, { @"D#", @"E#", @"A#" },
    { @"D", @"E", @"A" }, { @"Db", @"Eb", @"Ab" }, { @"E#", @"Fx", @"B#" },
    { @"E", @"F#", @"B" }, { @"Eb", @"F", @"Bb" }, { @"F#", @"G#", @"C#" },
    { @"F", @"G", @"C" }, { @"Fb", @"Gb", @"Cb" }, { @"G#", @"A#", @"D#" },
    { @"G", @"A", @"D" }, { @"Gb", @"Ab", @"Db" } };

 NSString *SUSPENDED4TH[21][3] = { { @"A#", @"D#", @"E#" },
    { @"A", @"D", @"E" }, { @"Ab", @"Db", @"Eb" }, { @"B#", @"E#", @"Fx" },
    { @"B", @"E", @"F#" }, { @"Bb", @"Eb", @"F" }, { @"C#", @"F#", @"G#" },
    { @"C", @"F", @"G" }, { @"Cb", @"Fb", @"Gb" }, { @"D#", @"G#", @"A#" },
    { @"D", @"G", @"A" }, { @"Db", @"Gb", @"Ab" }, { @"E#", @"A#", @"B#" },
    { @"E", @"A", @"B" }, { @"Eb", @"Ab", @"Bb" }, { @"F#", @"B", @"C#" },
    { @"F", @"Bb", @"C" }, { @"Fb", @"Bbb", @"Cb" }, { @"G#", @"C#", @"D#" },
    { @"G", @"C", @"D" }, { @"Gb", @"Cb", @"Db" } };

 NSString *POWERCHORD[21][3] = { { @"A#", @"E#", @"(A#)" },
    { @"A", @"E", @"(A)" }, { @"Ab", @"Eb", @"(Ab)" },
    { @"B#", @"Fx", @"(B#)" }, { @"B", @"F#", @"(B)" },
    { @"Bb", @"F", @"(Bb)" }, { @"C#", @"G#", @"(C#)" }, { @"C", @"G", @"(C)" },
    { @"Cb", @"Gb", @"(Cb)" }, { @"D#", @"A#", @"(D#)" },
    { @"D", @"A", @"(D)" }, { @"Db", @"Ab", @"(Db)" },
    { @"E#", @"B#", @"(E#)" }, { @"E", @"B", @"(E)" },
    { @"Eb", @"Bb", @"(Eb)" }, { @"F#", @"C#", @"(F#)" },
    { @"F", @"C", @"(F)" }, { @"Fb", @"Cb", @"(Fb)" },
    { @"G#", @"D#", @"(G#)" }, { @"G", @"D", @"(G)" }, { @"Gb", @"Db", @"(Gb)" } };

//TODO must initialized these in the init
Chords *Major;
Chords *Flattened5th;
Chords *Minor;
Chords *Diminished;
Chords *Augmented;
Chords *Suspended2nd;
Chords *Suspended4th;
Chords *PowerChord;



