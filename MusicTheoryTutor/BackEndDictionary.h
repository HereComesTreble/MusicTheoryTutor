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

-(id)init;
-(int)findIndex: (NSMutableString *)n;

@end

//three note chords

Chords *Major, *Flattened5th, *Minor, *Diminished,
*Augmented, *Suspended2nd, *Suspended4th, *PowerChord, *Major7th,
*Major7thSuspended2nd, *Major7thSuspended4th, *Major7thAugmented5th,
*Major7thFlattened5th, *Sixth, *MajorFlat6, *MajorAdd4th, *MajorAdd9th,
*Dominant7th, *Dominant7thSuspended2nd, *Dominant7thSuspended4th,
*Dominant7thAugmented5th, *Dominant7thFlattened5th, *Minor7th,
*MinorMajor7th, *MinorAdd4th, *MinorAdd9th, *MinorFlattened6th,
*Minor6th, *HalfDiminished7th, *FullyDiminished7th, *Major6thAdd9th,
*Minor6thAdd9th, *DominantAdd9th, *Dominant9thFlattened5th,
*Dominant9thAugmented5th, *Minor9th, *Minor9thFlattened5th, *Major9th,
*Major9thSuspended4th, *Major7thAddFlattened9th, *DominantAdd6th,
*MinorMajor9th, *MinorMajorFlattened9th, *DominantAddAugmented9th,
*DominantFlattened5thAddAugmented9th, *DominantAddFlattened9th,
*Minor7thFlattened9th, *Minor7thAugmented9th;


NSString * scalesDictionary[21][12] = {
{ @"Ab", @"Bbb", @"Bb", @"Cb", @"C", @"Db", @"Ebb",@"Eb",@"Fb",@"F",@"Gb",@"G"},//Ab
{ @"A", @"Bb", @"B", @"C", @"C#", @"D", @"Eb", @"E", @"F", @"F#", @"G", @"G#" },// A
{ @"A#", @"B", @"B#", @"C#", @"Cx", @"D#", @"E", @"E#", @"F#", @"Fx", @"G#",@"Gx"},//A#
{@"Bb", @"Cb", @"C", @"Db",@"D", @"Eb", @"Fb", @"F", @"Gb",@"G",@"Ab", @"A"},//Bb
{ @"B", @"C", @"C#", @"D", @"D#", @"E", @"F", @"F#", @"G", @"G#", @"A", @"A#" },// B
{@"B#",@"C#",@"Cx",@"D#",@"Dx",@"E#",@"F#",@"Fx",@"G#",@"Gx",@"A#",@"Ax"},//B#
{@"Cb",@"Dbb",@"Db", @"Ebb",@"Eb", @"Fb", @"Gbb",@"Gb", @"Abb", @"Ab", @"Bbb",@"Bb"},//Cb
{ @"C", @"Db", @"D", @"Eb", @"E", @"F", @"Gb", @"G", @"Ab", @"A", @"Bb", @"B" },// C
{@"C#", @"D", @"D#",@"E", @"E#", @"F#", @"G", @"G#", @"A", @"A#", @"B", @"B#"},//C#
{@"Db", @"Ebb",@"Eb", @"Fb", @"F", @"Gb", @"Abb", @"Ab", @"Bbb", @"Bb", @"Cb",@"C"},//Db
{ @"D", @"Eb", @"E", @"F", @"F#", @"G", @"Ab", @"A", @"Bb", @"B", @"C", @"C#" },// D
{@"D#", @"E", @"E#",@"F#", @"Fx", @"G#", @"A", @"A#", @"B", @"B#", @"C#", @"Cx"},//D#
{@"Eb", @"Fb",@"F", @"Gb", @"G", @"Ab", @"Bbb", @"Bb", @"Cb", @"C", @"Db", @"D"},//Eb
{ @"E", @"F", @"F#", @"G", @"G#", @"A", @"Bb", @"B", @"C", @"C#", @"D", @"D#" },// E
{@"E#",@"F#",@"Fx",@"G#",@"Gx",@"A#",@"B",@"B#", @"C#", @"Cx", @"D#", @"Dx"},//E#
{@"Fb", @"Gbb", @"Gb", @"Abb", @"Ab", @"Bbb", @"Cbb", @"Cb", @"Dbb", @"Db", @"Ebb",@"Eb"},//Fb
{ @"F", @"Gb", @"G", @"Ab", @"A", @"Bb", @"Cb", @"C", @"Db", @"D", @"Eb", @"E" },// F
{@"F#",@"G",@"G#",@"A", @"A#",@"B", @"C", @"C#", @"D", @"D#", @"E", @"E#"},//F#
{@"Gb", @"Abb", @"Ab",@"Bbb",@"Bb", @"Cb",@"Dbb", @"Db", @"Ebb", @"Eb", @"Fb", @"F"},//Gb
{ @"G", @"Ab", @"A", @"Bb", @"B", @"C", @"Db", @"D", @"Eb", @"E", @"F", @"F#" }, // G
{@"G#", @"A", @"A#", @"B", @"B#", @"C#", @"D", @"D#",@"E",@"E#",@"F#", @"Fx"}//G#
};


//TODO must initialized these in the init

NSMutableArray *dict;



