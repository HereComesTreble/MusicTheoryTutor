package edu.asu.chord.tutor;

public class BackEndDictionary {
	// Three Note Chords
			private String[][] MAJOR = { { "A#", "Cx", "E#" }, { "A", "C#", "E" },
					{ "Ab", "C", "Eb" }, { "B#", "Dx", "Fx" }, { "B", "D#", "F#" },
					{ "Bb", "D", "F" }, { "C#", "E#", "G#" }, { "C", "E", "G" },
					{ "Cb", "Eb", "Gb" }, { "D#", "Fx", "A#" }, { "D", "F#", "A" },
					{ "Db", "F", "Ab" }, { "E#", "Gx", "B#" }, { "E", "G#", "B" },
					{ "Eb", "G", "Bb" }, { "F#", "A#", "C#" }, { "F", "A", "C" },
					{ "Fb", "Ab", "Cb" }, { "G#", "B#", "D#" }, { "G", "B", "D" },
					{ "Gb", "Bb", "Db" } };

			private String[][] FLATTENED5TH = { { "A#", "(Cx)", "E" },
					{ "A", "(C#)", "Eb" }, { "Ab", "(C)", "Ebb" },
					{ "B#", "(Dx)", "F#" }, { "B", "(D#)", "F" },
					{ "Bb", "(D)", "Fb" }, { "C#", "(E#)", "G" }, { "C", "(E)", "Gb" },
					{ "Cb", "(Eb)", "Gbb" }, { "D#", "(Fx)", "A" },
					{ "D", "(F#)", "Ab" }, { "Db", "(F)", "Abb" },
					{ "E#", "(Gx)", "B" }, { "E", "(G#)", "Bb" },
					{ "Eb", "(G)", "Bbb" }, { "F#", "(A#)", "C" },
					{ "F", "(A)", "Cb" }, { "Fb", "(Ab)", "Cbb" },
					{ "G#", "(B#)", "D" }, { "G", "(B)", "Db" },
					{ "Gb", "(Bb)", "Dbb" } };

			private String[][] MINOR = { { "A#", "C#", "E#" }, { "A", "C", "E" },
					{ "Ab", "Cb", "Eb" }, { "B#", "D#", "Fx" }, { "B", "D", "F#" },
					{ "Bb", "Db", "F" }, { "C#", "E", "G#" }, { "C", "Eb", "G" },
					{ "Cb", "Ebb", "Gb" }, { "D#", "F#", "A#" }, { "D", "F", "A" },
					{ "Db", "Fb", "Ab" }, { "E#", "G#", "B#" }, { "E", "G", "B" },
					{ "Eb", "Gb", "Bb" }, { "F#", "A", "C#" }, { "F", "Ab", "C" },
					{ "Fb", "Abb", "Cb" }, { "G#", "B", "D#" }, { "G", "Bb", "D" },
					{ "Gb", "Bbb", "Db" } };

			private String[][] DIMINISHED = { { "A#", "C#", "E" }, { "A", "C", "Eb" },
					{ "Ab", "Cb", "Ebb" }, { "B#", "D#", "F#" }, { "B", "D", "F" },
					{ "Bb", "Db", "Fb" }, { "C#", "E", "G" }, { "C", "Eb", "Gb" },
					{ "Cb", "Ebb", "Gbb" }, { "D#", "F#", "A" }, { "D", "F", "Ab" },
					{ "Db", "Fb", "Abb" }, { "E#", "G#", "B" }, { "E", "G", "Bb" },
					{ "Eb", "Gb", "Bbb" }, { "F#", "A", "C" }, { "F", "Ab", "Cb" },
					{ "Fb", "Abb", "Cbb" }, { "G#", "B", "D" }, { "G", "Bb", "Db" },
					{ "Gb", "Bbb", "Dbb" } };

			private String[][] AUGMENTED = { { "A#", "Cx", "Ex" }, { "A", "C#", "E#" },
					{ "Ab", "C", "E" }, { "B#", "Dx", "F#x" }, { "B", "D#", "Fx" },
					{ "Bb", "D", "F#" }, { "C#", "E#", "Gx" }, { "C", "E", "G#" },
					{ "Cb", "Eb", "G" }, { "D#", "Fx", "Ax" }, { "D", "F#", "A#" },
					{ "Db", "F", "A" }, { "E#", "Gx", "Bx" }, { "E", "G#", "B#" },
					{ "Eb", "G", "B" }, { "F#", "A#", "Cx" }, { "F", "A", "C#" },
					{ "Fb", "Ab", "C" }, { "G#", "B#", "Dx" }, { "G", "B", "D#" },
					{ "Gb", "Bb", "D" } };

			private String[][] SUSPENDED2ND = { { "A#", "B#", "E#" },
					{ "A", "B", "E" }, { "Ab", "Bb", "Eb" }, { "B#", "Cx", "Fx" },
					{ "B", "C#", "F#" }, { "Bb", "C", "F" }, { "C#", "D#", "G#" },
					{ "C", "D", "G" }, { "Cb", "Db", "Gb" }, { "D#", "E#", "A#" },
					{ "D", "E", "A" }, { "Db", "Eb", "Ab" }, { "E#", "Fx", "B#" },
					{ "E", "F#", "B" }, { "Eb", "F", "Bb" }, { "F#", "G#", "C#" },
					{ "F", "G", "C" }, { "Fb", "Gb", "Cb" }, { "G#", "A#", "D#" },
					{ "G", "A", "D" }, { "Gb", "Ab", "Db" } };

			private String[][] SUSPENDED4TH = { { "A#", "D#", "E#" },
					{ "A", "D", "E" }, { "Ab", "Db", "Eb" }, { "B#", "E#", "Fx" },
					{ "B", "E", "F#" }, { "Bb", "Eb", "F" }, { "C#", "F#", "G#" },
					{ "C", "F", "G" }, { "Cb", "Fb", "Gb" }, { "D#", "G#", "A#" },
					{ "D", "G", "A" }, { "Db", "Gb", "Ab" }, { "E#", "A#", "B#" },
					{ "E", "A", "B" }, { "Eb", "Ab", "Bb" }, { "F#", "B", "C#" },
					{ "F", "Bb", "C" }, { "Fb", "Bbb", "Cb" }, { "G#", "C#", "D#" },
					{ "G", "C", "D" }, { "Gb", "Cb", "Db" } };

			private String[][] POWERCHORD = { { "A#", "E#", "(A#)" },
					{ "A", "E", "(A)" }, { "Ab", "Eb", "(Ab)" },
					{ "B#", "Fx", "(B#)" }, { "B", "F#", "(B)" },
					{ "Bb", "F", "(Bb)" }, { "C#", "G#", "(C#)" }, { "C", "G", "(C)" },
					{ "Cb", "Gb", "(Cb)" }, { "D#", "A#", "(D#)" },
					{ "D", "A", "(D)" }, { "Db", "Ab", "(Db)" },
					{ "E#", "B#", "(E#)" }, { "E", "B", "(E)" },
					{ "Eb", "Bb", "(Eb)" }, { "F#", "C#", "(F#)" },
					{ "F", "C", "(F)" }, { "Fb", "Cb", "(Fb)" },
					{ "G#", "D#", "(G#)" }, { "G", "D", "(G)" }, { "Gb", "Db", "(Gb)" } };

			private Chords Major = new Chords("Major", "M", MAJOR, "root", "major 3rd",
					"perfect 5th", 0, 4, 7, 3);
			private Chords Flattened5th = new Chords("Flattened 5th", "b5",
					FLATTENED5TH, "root", "major 3rd", "flattened 5th", 0, 4, 6, 3);
			private Chords Minor = new Chords("Minor", "m", MINOR, "root", "minor 3rd",
					"perfect 5th", 0, 3, 7, 3);
			private Chords Diminished = new Chords("Diminished", "dim", DIMINISHED,
					"root", "minor 3rd", "flattened 5th", 0, 3, 6, 3);
			private Chords Augmented = new Chords("Augmented", "aug", AUGMENTED,
					"root", "major 3rd", "augmented 5th", 0, 4, 8, 3);
			private Chords Suspended2nd = new Chords("Suspended 2nd", "sus2",
					SUSPENDED2ND, "root", "major 2nd", "perfect 5th", 0, 2, 7, 3);
			private Chords Suspended4th = new Chords("Suspended 4th", "sus4",
					SUSPENDED4TH, "root", "perfect 4th", "perfect 5th", 0, 5, 7, 3);
			private Chords PowerChord = new Chords("Power Chord", "5", POWERCHORD,
					"root", "perfect 5th", "ocatve", 0, 7, 12, 3);

			private String[][] MAJOR7TH = { { "A#", "Cx", "E#", "Gx" },
					{ "A", "C#", "E", "G#" }, { "Ab", "C", "Eb", "G" },
					{ "B#", "Dx", "Fx", "Ax" }, { "B", "D#", "F#", "A#" },
					{ "Bb", "D", "F", "A" }, { "C#", "E#", "G#", "B#" },
					{ "C", "E", "G", "B" }, { "Cb", "Eb", "Gb", "Bb" },
					{ "D#", "Fx", "A#", "Cx" }, { "D", "F#", "A", "C#" },
					{ "Db", "F", "Ab", "C" }, { "E#", "Gx", "B#", "Dx" },
					{ "E", "G#", "B", "D#" }, { "Eb", "G", "Bb", "D" },
					{ "F#", "A#", "C#", "E#" }, { "F", "A", "C", "E" },
					{ "Fb", "Ab", "Cb", "Eb" }, { "G#", "B#", "D#", "Fx" },
					{ "G", "B", "D", "F#" }, { "Gb", "Bb", "Db", "F" } };

			private String[][] MAJOR7THSUSPENDED2ND = { { "A#", "B#", "E#", "Gx" },
					{ "A", "B", "E", "G#" }, { "Ab", "Bb", "Eb", "G" },
					{ "B#", "Cx", "Fx", "Ax" }, { "B", "C#", "F#", "A#" },
					{ "Bb", "C", "F", "A" }, { "C#", "D#", "G#", "B#" },
					{ "C", "D", "G", "B" }, { "Cb", "Db", "Gb", "Bb" },
					{ "D#", "E#", "A#", "Cx" }, { "D", "E", "A", "C#" },
					{ "Db", "Eb", "Ab", "C" }, { "E#", "Fx", "B#", "Dx" },
					{ "E", "F#", "B", "D#" }, { "Eb", "F", "Bb", "D" },
					{ "F#", "G#", "C#", "E#" }, { "F", "G", "C", "E" },
					{ "Fb", "Gb", "Cb", "Eb" }, { "G#", "A#", "D#", "Fx" },
					{ "G", "A", "D", "F#" }, { "Gb", "Ab", "Db", "F" } };

			private String[][] MAJOR7THSUSPENDED4TH = { { "A#", "D#", "E#", "Gx" },
					{ "A", "D", "E", "G#" }, { "Ab", "Db", "Eb", "G" },
					{ "B#", "E#", "Fx", "Ax" }, { "B", "E", "F#", "A#" },
					{ "Bb", "Eb", "F", "A" }, { "C#", "F#", "G#", "B#" },
					{ "C", "F", "G", "B" }, { "Cb", "Fb", "Gb", "Bb" },
					{ "D#", "G#", "A#", "Cx" }, { "D", "G", "A", "C#" },
					{ "Db", "Gb", "Ab", "C" }, { "E#", "A#", "B#", "Dx" },
					{ "E", "A", "B", "D#" }, { "Eb", "Ab", "Bb", "D" },
					{ "F#", "B", "C#", "E#" }, { "F", "Bb", "C", "E" },
					{ "Fb", "Bbb", "Cb", "Eb" }, { "G#", "C#", "D#", "Fx" },
					{ "G", "C", "D", "F#" }, { "Gb", "Cb", "Db", "F" } };

			private String[][] MAJOR7THAUGMENTED5TH = { { "A#", "Cx", "Ex", "Gx" },
					{ "A", "C#", "E#", "G#" }, { "Ab", "C", "E", "G" },
					{ "B#", "Dx", "F#x", "Ax" }, { "B", "D#", "Fx", "A#" },
					{ "Bb", "D", "F#", "A" }, { "C#", "E#", "Gx", "B#" },
					{ "C", "E", "G#", "B" }, { "Cb", "Eb", "G", "Bb" },
					{ "D#", "Fx", "Ax", "Cx" }, { "D", "F#", "A#", "C#" },
					{ "Db", "F", "A", "C" }, { "E#", "Gx", "Bx", "Dx" },
					{ "E", "G#", "B#", "D#" }, { "Eb", "G", "B", "D" },
					{ "F#", "A#", "Cx", "E#" }, { "F", "A", "C#", "E" },
					{ "Fb", "Ab", "C", "Eb" }, { "G#", "B#", "Dx", "Fx" },
					{ "G", "B", "D#", "F#" }, { "Gb", "Bb", "D", "F" } };

			private String[][] MAJOR7THFLATTENED5TH = { { "A#", "Cx", "E", "Gx" },
					{ "A", "C#", "Eb", "G#" }, { "Ab", "C", "Ebb", "G" },
					{ "B#", "Dx", "F#", "Ax" }, { "B", "D#", "F", "A#" },
					{ "Bb", "D", "Fb", "A" }, { "C#", "E#", "G", "B#" },
					{ "C", "E", "Gb", "B" }, { "Cb", "Eb", "Gbb", "Bb" },
					{ "D#", "Fx", "A", "Cx" }, { "D", "F#", "Ab", "C#" },
					{ "Db", "F", "Abb", "C" }, { "E#", "Gx", "B", "Dx" },
					{ "E", "G#", "Bb", "D#" }, { "Eb", "G", "Bbb", "D" },
					{ "F#", "A#", "C", "E#" }, { "F", "A", "Cb", "E" },
					{ "Fb", "Ab", "Cbb", "Eb" }, { "G#", "B#", "D", "Fx" },
					{ "G", "B", "Db", "F#" }, { "Gb", "Bb", "Dbb", "F" } };

			private String[][] SIXTH = { { "A#", "Cx", "E#", "Fx" },
					{ "A", "C#", "E", "F#" }, { "Ab", "C", "Eb", "F" },
					{ "B#", "Dx", "Fx", "Gx" }, { "B", "D#", "F#", "G#" },
					{ "Bb", "D", "F", "G" }, { "C#", "E#", "G#", "A#" },
					{ "C", "E", "G", "A" }, { "Cb", "Eb", "Gb", "Ab" },
					{ "D#", "Fx", "A#", "B#" }, { "D", "F#", "A", "B" },
					{ "Db", "F", "Ab", "Bb" }, { "E#", "Gx", "B#", "Cx" },
					{ "E", "G#", "B", "C#" }, { "Eb", "G", "Bb", "C" },
					{ "F#", "A#", "C#", "D#" }, { "F", "A", "C", "D" },
					{ "Fb", "Ab", "Cb", "Db" }, { "G#", "B#", "D#", "E#" },
					{ "G", "B", "D", "E" }, { "Gb", "Bb", "Db", "Eb" } };

			private String[][] MAJORFLAT6 = { { "A#", "Cx", "E#", "F#" },
					{ "A", "C#", "E", "F" }, { "Ab", "C", "Eb", "Fb" },
					{ "B#", "Dx", "Fx", "G#" }, { "B", "D#", "F#", "G" },
					{ "Bb", "D", "F", "Gb" }, { "C#", "E#", "G#", "A" },
					{ "C", "E", "G", "Ab" }, { "Cb", "Eb", "Gb", "Abb" },
					{ "D#", "Fx", "A#", "B" }, { "D", "F#", "A", "Bb" },
					{ "Db", "F", "Ab", "Bbb" }, { "E#", "Gx", "B#", "C#" },
					{ "E", "G#", "B", "C" }, { "Eb", "G", "Bb", "Cb" },
					{ "F#", "A#", "C#", "D" }, { "F", "A", "C", "Db" },
					{ "Fb", "Ab", "Cb", "Dbb" }, { "G#", "B#", "D#", "E" },
					{ "G", "B", "D", "Eb" }, { "Gb", "Bb", "Db", "Ebb" } };

			private String[][] MAJORADD4TH = { { "A#", "Cx", "D#", "E#" },
					{ "A", "C#", "D", "E" }, { "Ab", "C", "Db", "Eb" },
					{ "B#", "Dx", "E#", "Fx" }, { "B", "D#", "E", "F#" },
					{ "Bb", "D", "Eb", "F" }, { "C#", "E#", "F#", "G#" },
					{ "C", "E", "F", "G" }, { "Cb", "Eb", "Fb", "Gb" },
					{ "D#", "Fx", "G#", "A#" }, { "D", "F#", "G", "A" },
					{ "Db", "F", "Gb", "Ab" }, { "E#", "Gx", "A#", "B#" },
					{ "E", "G#", "A", "B" }, { "Eb", "G", "Ab", "Bb" },
					{ "F#", "A#", "B", "C#" }, { "F", "A", "Bb", "C" },
					{ "Fb", "Ab", "Bbb", "Cb" }, { "G#", "B#", "C#", "D#" },
					{ "G", "B", "C", "D" }, { "Gb", "Bb", "Cb", "Db" } };

			private String[][] MAJORADD9TH = { { "A#", "Cx", "E#", "B#" },
					{ "A", "C#", "E", "B" }, { "Ab", "C", "Eb", "Bb" },
					{ "B#", "Dx", "Fx", "Cx" }, { "B", "D#", "F#", "C#" },
					{ "Bb", "D", "F", "C" }, { "C#", "E#", "G#", "D#" },
					{ "C", "E", "G", "D" }, { "Cb", "Eb", "Gb", "Db" },
					{ "D#", "Fx", "A#", "E#" }, { "D", "F#", "A", "E" },
					{ "Db", "F", "Ab", "Eb" }, { "E#", "Gx", "B#", "Fx" },
					{ "E", "G#", "B", "F#" }, { "Eb", "G", "Bb", "F" },
					{ "F#", "A#", "C#", "G#" }, { "F", "A", "C", "G" },
					{ "Fb", "Ab", "Cb", "Gb" }, { "G#", "B#", "D#", "A#" },
					{ "G", "B", "D", "A" }, { "Gb", "Bb", "Db", "Ab" } };

			private String[][] DOMINANT7TH = { { "A#", "Cx", "E#", "G#" },
					{ "A", "C#", "E", "G" }, { "Ab", "C", "Eb", "Gb" },
					{ "B#", "Dx", "Fx", "A#" }, { "B", "D#", "F#", "A" },
					{ "Bb", "D", "F", "Ab" }, { "C#", "E#", "G#", "B" },
					{ "C", "E", "G", "Bb" }, { "Cb", "Eb", "Gb", "Bbb" },
					{ "D#", "Fx", "A#", "C#" }, { "D", "F#", "A", "C" },
					{ "Db", "F", "Ab", "Cb" }, { "E#", "Gx", "B#", "D#" },
					{ "E", "G#", "B", "D" }, { "Eb", "G", "Bb", "Db" },
					{ "F#", "A#", "C#", "E" }, { "F", "A", "C", "Eb" },
					{ "Fb", "Ab", "Cb", "Ebb" }, { "G#", "B#", "D#", "F#" },
					{ "G", "B", "D", "F" }, { "Gb", "Bb", "Db", "Fb" } };

			private String[][] DOMINANT7THSUSPENDED2ND = { { "A#", "B#", "E#", "G#" },
					{ "A", "B", "E", "G" }, { "Ab", "Bb", "Eb", "Gb" },
					{ "B#", "Cx", "Fx", "A#" }, { "B", "C#", "F#", "A" },
					{ "Bb", "C", "F", "Ab" }, { "C#", "D#", "G#", "B" },
					{ "C", "D", "G", "Bb" }, { "Cb", "Db", "Gb", "Bbb" },
					{ "D#", "E#", "A#", "C#" }, { "D", "E", "A", "C" },
					{ "Db", "Eb", "Ab", "Cb" }, { "E#", "Fx", "B#", "D#" },
					{ "E", "F#", "B", "D" }, { "Eb", "F", "Bb", "Db" },
					{ "F#", "G#", "C#", "E" }, { "F", "G", "C", "Eb" },
					{ "Fb", "Gb", "Cb", "Ebb" }, { "G#", "A#", "D#", "F#" },
					{ "G", "A", "D", "F" }, { "Gb", "Ab", "Db", "Fb" } };

			private String[][] DOMINANT7THSUSPENDED4TH = { { "A#", "D#", "E#", "G#" },
					{ "A", "D", "E", "G" }, { "Ab", "Db", "Eb", "Gb" },
					{ "B#", "E#", "Fx", "A#" }, { "B", "E", "F#", "A" },
					{ "Bb", "Eb", "F", "Ab" }, { "C#", "F#", "G#", "B" },
					{ "C", "F", "G", "Bb" }, { "Cb", "Fb", "Gb", "Bbb" },
					{ "D#", "G#", "A#", "C#" }, { "D", "G", "A", "C" },
					{ "Db", "Gb", "Ab", "Cb" }, { "E#", "A#", "B#", "D#" },
					{ "E", "A", "B", "D" }, { "Eb", "Ab", "Bb", "Db" },
					{ "F#", "B", "C#", "E" }, { "F", "Bb", "C", "Eb" },
					{ "Fb", "Bbb", "Cb", "Ebb" }, { "G#", "C#", "D#", "F#" },
					{ "G", "C", "D", "F" }, { "Gb", "Cb", "Db", "Fb" } };

			private String[][] DOMINANT7THAUGMENTED5TH = { { "A#", "Cx", "Ex", "G#" },
					{ "A", "C#", "E#", "G" }, { "Ab", "C", "E", "Gb" },
					{ "B#", "Dx", "F#x", "A#" }, { "B", "D#", "Fx", "A" },
					{ "Bb", "D", "F#", "Ab" }, { "C#", "E#", "Gx", "B" },
					{ "C", "E", "G#", "Bb" }, { "Cb", "Eb", "G", "Bbb" },
					{ "D#", "Fx", "Ax", "C#" }, { "D", "F#", "A#", "C" },
					{ "Db", "F", "A", "Cb" }, { "E#", "Gx", "Bx", "D#" },
					{ "E", "G#", "B#", "D" }, { "Eb", "G", "B", "Db" },
					{ "F#", "A#", "Cx", "E" }, { "F", "A", "C#", "Eb" },
					{ "Fb", "Ab", "C", "Ebb" }, { "G#", "B#", "Dx", "F#" },
					{ "G", "B", "D#", "F" }, { "Gb", "Bb", "D", "Fb" } };

			private String[][] DOMINANT7THFLATTENED5TH = { { "A#", "Cx", "E", "G#" },
					{ "A", "C#", "Eb", "G" }, { "Ab", "C", "Ebb", "Gb" },
					{ "B#", "Dx", "F#", "A#" }, { "B", "D#", "F", "A" },
					{ "Bb", "D", "Fb", "Ab" }, { "C#", "E#", "G", "B" },
					{ "C", "E", "Gb", "Bb" }, { "Cb", "Eb", "Gbb", "Bbb" },
					{ "D#", "Fx", "A", "C#" }, { "D", "F#", "Ab", "C" },
					{ "Db", "F", "Abb", "Cb" }, { "E#", "Gx", "B", "D#" },
					{ "E", "G#", "Bb", "D" }, { "Eb", "G", "Bbb", "Db" },
					{ "F#", "A#", "C", "E" }, { "F", "A", "Cb", "Eb" },
					{ "Fb", "Ab", "Cbb", "Ebb" }, { "G#", "B#", "D", "F#" },
					{ "G", "B", "Db", "F" }, { "Gb", "Bb", "Dbb", "Fb" } };

			private String[][] MINOR7TH = { { "A#", "C#", "E#", "G#" },
					{ "A", "C", "E", "G" }, { "Ab", "Cb", "Eb", "Gb" },
					{ "B#", "D#", "Fx", "A#" }, { "B", "D", "F#", "A" },
					{ "Bb", "Db", "F", "Ab" }, { "C#", "E", "G#", "B" },
					{ "C", "Eb", "G", "Bb" }, { "Cb", "Ebb", "Gb", "Bbb" },
					{ "D#", "F#", "A#", "C#" }, { "D", "F", "A", "C" },
					{ "Db", "Fb", "Ab", "Cb" }, { "E#", "G#", "B#", "D#" },
					{ "E", "G", "B", "D" }, { "Eb", "Gb", "Bb", "Db" },
					{ "F#", "A", "C#", "E" }, { "F", "Ab", "C", "Eb" },
					{ "Fb", "Abb", "Cb", "Ebb" }, { "G#", "B", "D#", "F#" },
					{ "G", "Bb", "D", "F" }, { "Gb", "Bbb", "Db", "Fb" } };

			private String[][] MINORMAJOR7TH = { { "A#", "C#", "E#", "Gx" },
					{ "A", "C", "E", "G#" }, { "Ab", "Cb", "Eb", "G" },
					{ "B#", "D#", "Fx", "Ax" }, { "B", "D", "F#", "A#" },
					{ "Bb", "Db", "F", "A" }, { "C#", "E", "G#", "B#" },
					{ "C", "Eb", "G", "B" }, { "Cb", "Ebb", "Gb", "Bb" },
					{ "D#", "F#", "A#", "Cx" }, { "D", "F", "A", "C#" },
					{ "Db", "Fb", "Ab", "C" }, { "E#", "G#", "B#", "Dx" },
					{ "E", "G", "B", "D#" }, { "Eb", "Gb", "Bb", "D" },
					{ "F#", "A", "C#", "E#" }, { "F", "Ab", "C", "E" },
					{ "Fb", "Abb", "Cb", "Eb" }, { "G#", "B", "D#", "Fx" },
					{ "G", "Bb", "D", "F#" }, { "Gb", "Bbb", "Db", "F" } };

			private String[][] MINORADD4TH = { { "A#", "C#", "D#", "E#" },
					{ "A", "C", "D", "E" }, { "Ab", "Cb", "Db", "Eb" },
					{ "B#", "D#", "E#", "Fx" }, { "B", "D", "E", "F#" },
					{ "Bb", "Db", "Eb", "F" }, { "C#", "E", "F#", "G#" },
					{ "C", "Eb", "F", "G" }, { "Cb", "Ebb", "Fb", "Gb" },
					{ "D#", "F#", "G#", "A#" }, { "D", "F", "G", "A" },
					{ "Db", "Fb", "Gb", "Ab" }, { "E#", "G#", "A#", "B#" },
					{ "E", "G", "A", "B" }, { "Eb", "Gb", "Ab", "Bb" },
					{ "F#", "A", "B", "C#" }, { "F", "Ab", "Bb", "C" },
					{ "Fb", "Abb", "Bbb", "Cb" }, { "G#", "B", "C#", "D#" },
					{ "G", "Bb", "C", "D" }, { "Gb", "Bbb", "Cb", "Db" } };

			private String[][] MINORADD9TH = { { "A#", "C#", "(E#)", "B#" },
					{ "A", "C", "(E)", "B" }, { "Ab", "Cb", "(Eb)", "Bb" },
					{ "B#", "D#", "(Fx)", "Cx" }, { "B", "D", "(F#)", "C#" },
					{ "Bb", "Db", "(F)", "C" }, { "C#", "E", "(G#)", "D#" },
					{ "C", "Eb", "(G)", "D" }, { "Cb", "Ebb", "(Gb)", "Db" },
					{ "D#", "F#", "(A#)", "E#" }, { "D", "F", "(A)", "E" },
					{ "Db", "Fb", "(Ab)", "Eb" }, { "E#", "G#", "(B#)", "Fx" },
					{ "E", "G", "(B)", "F#" }, { "Eb", "Gb", "(Bb)", "F" },
					{ "F#", "A", "(C#)", "G#" }, { "F", "Ab", "(C)", "G" },
					{ "Fb", "Abb", "(Cb)", "Gb" }, { "G#", "B", "(D#)", "A#" },
					{ "G", "Bb", "(D)", "A" }, { "Gb", "Bbb", "(Db)", "Ab" } };

			private String[][] MINORFLATTENED6TH = { { "A#", "C#", "E#", "F#" },
					{ "A", "C", "E", "F" }, { "Ab", "Cb", "Eb", "Fb" },
					{ "B#", "D#", "Fx", "G#" }, { "B", "D", "F#", "G" },
					{ "Bb", "Db", "F", "Gb" }, { "C#", "E", "G#", "A" },
					{ "C", "Eb", "G", "Ab" }, { "Cb", "Ebb", "Gb", "Abb" },
					{ "D#", "F#", "A#", "B" }, { "D", "F", "A", "Bb" },
					{ "Db", "Fb", "Ab", "Bbb" }, { "E#", "G#", "B#", "C#" },
					{ "E", "G", "B", "C" }, { "Eb", "Gb", "Bb", "Cb" },
					{ "F#", "A", "C#", "D" }, { "F", "Ab", "C", "Db" },
					{ "Fb", "Abb", "Cb", "Dbb" }, { "G#", "B", "D#", "E" },
					{ "G", "Bb", "D", "Eb" }, { "Gb", "Bbb", "Db", "Ebb" } };

			private String[][] MINOR6TH = { { "A#", "C#", "E#", "Fx" },
					{ "A", "C", "E", "F#" }, { "Ab", "Cb", "Eb", "F" },
					{ "B#", "D#", "Fx", "Gx" }, { "B", "D", "F#", "G#" },
					{ "Bb", "Db", "F", "G" }, { "C#", "E", "G#", "A#" },
					{ "C", "Eb", "G", "A" }, { "Cb", "Ebb", "Gb", "Ab" },
					{ "D#", "F#", "A#", "B#" }, { "D", "F", "A", "B" },
					{ "Db", "Fb", "Ab", "Bb" }, { "E#", "G#", "B#", "Cx" },
					{ "E", "G", "B", "C#" }, { "Eb", "Gb", "Bb", "C" },
					{ "F#", "A", "C#", "D#" }, { "F", "Ab", "C", "D" },
					{ "Fb", "Abb", "Cb", "Db" }, { "G#", "B", "D#", "E#" },
					{ "G", "Bb", "D", "E" }, { "Gb", "Bbb", "Db", "Eb" } };

			private String[][] HALFDIMINISHED7TH = { { "A#", "C#", "E", "G#" },
					{ "A", "C", "Eb", "G" }, { "Ab", "Cb", "Ebb", "Gb" },
					{ "B#", "D#", "F#", "A#" }, { "B", "D", "F", "A" },
					{ "Bb", "Db", "Fb", "Ab" }, { "C#", "E", "G", "B" },
					{ "C", "Eb", "Gb", "Bb" }, { "Cb", "Ebb", "Gbb", "Bbb" },
					{ "D#", "F#", "A", "C#" }, { "D", "F", "Ab", "C" },
					{ "Db", "Fb", "Abb", "Cb" }, { "E#", "G#", "B", "D#" },
					{ "E", "G", "Bb", "D" }, { "Eb", "Gb", "Bbb", "Db" },
					{ "F#", "A", "C", "E" }, { "F", "Ab", "Cb", "Eb" },
					{ "Fb", "Abb", "Cbb", "Ebb" }, { "G#", "B", "D", "F#" },
					{ "G", "Bb", "Db", "F" }, { "Gb", "Bbb", "Dbb", "Fb" } };

			private String[][] FULLYDIMINISHED7TH = { { "A#", "C#", "E", "G" },
					{ "A", "C", "Eb", "Gb" }, { "Ab", "Cb", "Ebb", "Gbb" },
					{ "B#", "D#", "F#", "A" }, { "B", "D", "F", "Ab" },
					{ "Bb", "Db", "Fb", "Abb" }, { "C#", "E", "G", "Bb" },
					{ "C", "Eb", "Gb", "Bbb" }, { "Cb", "Ebb", "Gbb", "Bbbb" },
					{ "D#", "F#", "A", "C" }, { "D", "F", "Ab", "Cb" },
					{ "Db", "Fb", "Abb", "Cbb" }, { "E#", "G#", "B", "D" },
					{ "E", "G", "Bb", "Db" }, { "Eb", "Gb", "Bbb", "Dbb" },
					{ "F#", "A", "C", "Eb" }, { "F", "Ab", "Cb", "Ebb" },
					{ "Fb", "Abb", "Cbb", "Ebbb" }, { "G#", "B", "D", "F" },
					{ "G", "Bb", "Db", "Fb" }, { "Gb", "Bbb", "Dbb", "Fbb" } };

			private Chords Major7th = new Chords("Major 7th", "M7", MAJOR7TH, "root",
					"major 3rd", "perfect 5th", "major 7th", 0, 4, 7, 11, 4);
			private Chords Major7thSuspended2nd = new Chords("Major 7th Suspended 2nd",
					"M7sus2", MAJOR7THSUSPENDED2ND, "root", "major 2nd", "perfect 5th",
					"major 7th", 0, 2, 7, 11, 4);
			private Chords Major7thSuspended4th = new Chords("Major 7th Suspended 4th",
					"M7sus4", MAJOR7THSUSPENDED4TH, "root", "perfect 4th",
					"perfect 5th", "major 7th", 0, 5, 7, 11, 4);
			private Chords Major7thAugmented5th = new Chords("Major 7th Augmented 5th",
					"M7#5", MAJOR7THAUGMENTED5TH, "root", "major 3rd", "augmented 5th",
					"major 7th", 0, 4, 7, 11, 4);
			private Chords Major7thFlattened5th = new Chords("Major 7th Flattened 5th",
					"M7b5", MAJOR7THFLATTENED5TH, "root", "major 3rd", "flattened 5th",
					"major 7th", 0, 4, 7, 11, 4);
			private Chords Sixth = new Chords("Sixth", "6", SIXTH, "root", "major 3rd",
					"perfect 5th", "major 6th", 0, 4, 7, 9, 4);
			private Chords MajorFlat6 = new Chords("Major Flat 6", "b6", MAJORFLAT6,
					"root", "major 3rd", "perfect 5th", "minor 6th", 0, 4, 7, 8, 4);
			private Chords MajorAdd4th = new Chords("Major Add 4th", "add4",
					MAJORADD4TH, "root", "major 3rd", "perfect 4th", "perfect 5th", 0,
					4, 6, 7, 4);
			private Chords MajorAdd9th = new Chords("Major Add 9th", "add9",
					MAJORADD9TH, "root", "major 3rd", "perfect 5th", "major 9th", 0, 4,
					7, 14, 4);
			private Chords Dominant7th = new Chords("Dominant 7th", "7", DOMINANT7TH,
					"root", "major 3rd", "perfect 5th", "minor 7th", 0, 4, 7, 10, 4);
			private Chords Dominant7thSuspended2nd = new Chords(
					"Dominant 7th Suspended 2nd", "7sus2", DOMINANT7THSUSPENDED2ND,
					"root", "major 2nd", "perfect 5th", "minor 7th", 0, 2, 7, 10, 4);
			private Chords Dominant7thSuspended4th = new Chords(
					"Dominant 7th Suspended 4th", "7sus4", DOMINANT7THSUSPENDED4TH,
					"root", "perfect 4th", "perfect 5th", "minor 7th", 0, 5, 7, 10, 4);
			private Chords Dominant7thAugmented5th = new Chords(
					"Dominant 7th Augmented 5th", "7#5", DOMINANT7THAUGMENTED5TH,
					"root", "major 3rd", "augmented 5th", "minor 7th", 0, 4, 7, 10, 4);
			private Chords Dominant7thFlattened5th = new Chords(
					"Dominant 7th Flattened 5th", "7b5", DOMINANT7THFLATTENED5TH,
					"root", "major 3rd", "flattened 5th", "minor 7th", 0, 4, 7, 10, 4);
			private Chords Minor7th = new Chords("Minor 7th", "m7", MINOR7TH, "root",
					"minor 3rd", "perfect 5th", "minor 7th", 0, 3, 7, 10, 4);
			private Chords MinorMajor7th = new Chords("Minor(Major) 7th", "m/M7",
					MINORMAJOR7TH, "root", "minor 3rd", "perfect 5th", "major 7th", 0,
					3, 7, 11, 4);
			private Chords MinorAdd4th = new Chords("Minor Add 4th", "madd4",
					MINORADD4TH, "root", "minor 3rd", "perfect 4th", "perfect 5th", 0,
					3, 5, 7, 4);
			private Chords MinorAdd9th = new Chords("Minor Add 9th", "madd9",
					MINORADD9TH, "root", "minor 3rd", "perfect 5th", "major 9th", 0, 3,
					7, 14, 4);
			private Chords MinorFlattened6th = new Chords("Minor Flattened 6th", "mb6",
					MINORFLATTENED6TH, "root", "minor 3rd", "perfect 5th", "minor 6th",
					0, 3, 7, 8, 4);
			private Chords Minor6th = new Chords("Minor 6th", "m6", MINOR6TH, "root",
					"minor 3rd", "perfect 5th", "major 6th", 0, 3, 7, 9, 4);
			private Chords HalfDiminished7th = new Chords("Half Diminished 7th",
					"m7b5", HALFDIMINISHED7TH, "root", "minor 3rd", "flattened 5th",
					"minor 7th", 0, 3, 7, 10, 4);
			private Chords FullyDiminished7th = new Chords("Fully Diminished 7th",
					"dim7", FULLYDIMINISHED7TH, "root", "minor 3rd", "flattened 5th",
					"flattened minor 7th", 0, 3, 7, 10, 4);

			private String[][] MAJOR6THADD9TH = { { "A#", "Cx", "(E#)", "Fx", "B#" },
					{ "A", "C#", "(E)", "F#", "B" }, { "Ab", "C", "(Eb)", "F", "Bb" },
					{ "B#", "Dx", "(Fx)", "Gx", "Cx" },
					{ "B", "D#", "(F#)", "G#", "C#" }, { "Bb", "D", "(F)", "G", "C" },
					{ "C#", "E#", "(G#)", "A#", "D#" }, { "C", "E", "(G)", "A", "D" },
					{ "Cb", "Eb", "(Gb)", "Ab", "Db" },
					{ "D#", "Fx", "(A#)", "B#", "E#" }, { "D", "F#", "(A)", "B", "E" },
					{ "Db", "F", "(Ab)", "Bb", "Eb" },
					{ "E#", "Gx", "(B#)", "Cx", "Fx" },
					{ "E", "G#", "(B)", "C#", "F#" }, { "Eb", "G", "(Bb)", "C", "F" },
					{ "F#", "A#", "(C#)", "D#", "G#" }, { "F", "A", "(C)", "D", "G" },
					{ "Fb", "Ab", "(Cb)", "Db", "Gb" },
					{ "G#", "B#", "(D#)", "E#", "A#" }, { "G", "B", "(D)", "E", "A" },
					{ "Gb", "Bb", "(Db)", "Eb", "Ab" } };

			private String[][] MINOR6THADD9TH = { { "A#", "C#", "(E#)", "Fx", "B#" },
					{ "A", "C", "(E)", "F#", "B" }, { "Ab", "Cb", "(Eb)", "F", "Bb" },
					{ "B#", "D#", "(Fx)", "Gx", "Cx" },
					{ "B", "D", "(F#)", "G#", "C#" }, { "Bb", "Db", "(F)", "G", "C" },
					{ "C#", "E", "(G#)", "A#", "D#" }, { "C", "Eb", "(G)", "A", "D" },
					{ "Cb", "Ebb", "(Gb)", "Ab", "Db" },
					{ "D#", "F#", "(A#)", "B#", "E#" }, { "D", "F", "(A)", "B", "E" },
					{ "Db", "Fb", "(Ab)", "Bb", "Eb" },
					{ "E#", "G#", "(B#)", "Cx", "Fx" },
					{ "E", "G", "(B)", "C#", "F#" }, { "Eb", "Gb", "(Bb)", "C", "F" },
					{ "F#", "A", "(C#)", "D#", "G#" }, { "F", "Ab", "(C)", "D", "G" },
					{ "Fb", "Abb", "(Cb)", "Db", "Gb" },
					{ "G#", "B", "(D#)", "E#", "A#" }, { "G", "Bb", "(D)", "E", "A" },
					{ "Gb", "Bbb", "(Db)", "Eb", "Ab" } };

			private String[][] DOMINANTADD9TH = { { "A#", "Cx", "(E#)", "G#", "B#" },
					{ "A", "C#", "(E)", "G", "B" }, { "Ab", "C", "(Eb)", "Gb", "Bb" },
					{ "B#", "Dx", "(Fx)", "A#", "Cx" },
					{ "B", "D#", "(F#)", "A", "C#" }, { "Bb", "D", "(F)", "Ab", "C" },
					{ "C#", "E#", "(G#)", "B", "D#" }, { "C", "E", "(G)", "Bb", "D" },
					{ "Cb", "Eb", "(Gb)", "Bbb", "Db" },
					{ "D#", "Fx", "(A#)", "C#", "E#" }, { "D", "F#", "(A)", "C", "E" },
					{ "Db", "F", "(Ab)", "Cb", "Eb" },
					{ "E#", "Gx", "(B#)", "D#", "Fx" },
					{ "E", "G#", "(B)", "D", "F#" }, { "Eb", "G", "(Bb)", "Db", "F" },
					{ "F#", "A#", "(C#)", "E", "G#" }, { "F", "A", "(C)", "Eb", "G" },
					{ "Fb", "Ab", "(Cb)", "Ebb", "Gb" },
					{ "G#", "B#", "(D#)", "F#", "A#" }, { "G", "B", "(D)", "F", "A" },
					{ "Gb", "Bb", "(Db)", "Fb", "Ab" } };

			private String[][] DOMINANT9THFLATTENED5TH = {
					{ "A#", "(Cx)", "E", "G#", "B#" }, { "A", "(C#)", "Eb", "G", "B" },
					{ "Ab", "(C)", "Ebb", "Gb", "Bb" },
					{ "B#", "(Dx)", "F#", "A#", "Cx" },
					{ "B", "(D#)", "F", "A", "C#" }, { "Bb", "(D)", "Fb", "Ab", "C" },
					{ "C#", "(E#)", "G", "B", "D#" }, { "C", "(E)", "Gb", "Bb", "D" },
					{ "Cb", "(Eb)", "Gbb", "Bbb", "Db" },
					{ "D#", "(Fx)", "A", "C#", "E#" }, { "D", "(F#)", "Ab", "C", "E" },
					{ "Db", "(F)", "Abb", "Cb", "Eb" },
					{ "E#", "(Gx)", "B", "D#", "Fx" },
					{ "E", "(G#)", "Bb", "D", "F#" },
					{ "Eb", "(G)", "Bbb", "Db", "F" },
					{ "F#", "(A#)", "C", "E", "G#" }, { "F", "(A)", "Cb", "Eb", "G" },
					{ "Fb", "(Ab)", "Cbb", "Ebb", "Gb" },
					{ "G#", "(B#)", "D", "F#", "A#" }, { "G", "(B)", "Db", "F", "A" },
					{ "Gb", "(Bb)", "Dbb", "Fb", "Ab" } };

			private String[][] DOMINANT9THAUGMENTED5TH = {
					{ "A#", "(Cx)", "Ex", "G#", "B#" },
					{ "A", "(C#)", "E#", "G", "B" }, { "Ab", "(C)", "E", "Gb", "Bb" },
					{ "B#", "(Dx)", "F#x", "A#", "Cx" },
					{ "B", "(D#)", "Fx", "A", "C#" }, { "Bb", "(D)", "F#", "Ab", "C" },
					{ "C#", "(E#)", "Gx", "B", "D#" }, { "C", "(E)", "G#", "Bb", "D" },
					{ "Cb", "(Eb)", "G", "Bbb", "Db" },
					{ "D#", "(Fx)", "Ax", "C#", "E#" },
					{ "D", "(F#)", "A#", "C", "E" }, { "Db", "(F)", "A", "Cb", "Eb" },
					{ "E#", "(Gx)", "Bx", "D#", "Fx" },
					{ "E", "(G#)", "B#", "D", "F#" }, { "Eb", "(G)", "B", "Db", "F" },
					{ "F#", "(A#)", "Cx", "E", "G#" }, { "F", "(A)", "C#", "Eb", "G" },
					{ "Fb", "(Ab)", "C", "Ebb", "Gb" },
					{ "G#", "(B#)", "Dx", "F#", "A#" }, { "G", "(B)", "D#", "F", "A" },
					{ "Gb", "(Bb)", "D", "Fb", "Ab" } };

			private String[][] MINOR9TH = { { "A#", "C#", "(E#)", "G#", "B#" },
					{ "A", "C", "(E)", "G", "B" }, { "Ab", "Cb", "(Eb)", "Gb", "Bb" },
					{ "B#", "D#", "(Fx)", "A#", "Cx" },
					{ "B", "D", "(F#)", "A", "C#" }, { "Bb", "Db", "(F)", "Ab", "C" },
					{ "C#", "E", "(G#)", "B", "D#" }, { "C", "Eb", "(G)", "Bb", "D" },
					{ "Cb", "Ebb", "(Gb)", "Bbb", "Db" },
					{ "D#", "F#", "(A#)", "C#", "E#" }, { "D", "F", "(A)", "C", "E" },
					{ "Db", "Fb", "(Ab)", "Cb", "Eb" },
					{ "E#", "G#", "(B#)", "D#", "Fx" }, { "E", "G", "(B)", "D", "F#" },
					{ "Eb", "Gb", "(Bb)", "Db", "F" },
					{ "F#", "A", "(C#)", "E", "G#" }, { "F", "Ab", "(C)", "Eb", "G" },
					{ "Fb", "Abb", "(Cb)", "Ebb", "Gb" },
					{ "G#", "B", "(D#)", "F#", "A#" }, { "G", "Bb", "(D)", "F", "A" },
					{ "Gb", "Bbb", "(Db)", "Fb", "Ab" } };

			private String[][] MINOR9THFLATTENED5TH = {
					{ "A#", "(C#)", "E", "G#", "B#" }, { "A", "(C)", "Eb", "G", "B" },
					{ "Ab", "(Cb)", "Ebb", "Gb", "Bb" },
					{ "B#", "(D#)", "F#", "A#", "Cx" }, { "B", "(D)", "F", "A", "C#" },
					{ "Bb", "(Db)", "Fb", "Ab", "C" }, { "C#", "(E)", "G", "B", "D#" },
					{ "C", "(Eb)", "Gb", "Bb", "D" },
					{ "Cb", "(Ebb)", "Gbb", "Bbb", "Db" },
					{ "D#", "(F#)", "A", "C#", "E#" }, { "D", "(F)", "Ab", "C", "E" },
					{ "Db", "(Fb)", "Abb", "Cb", "Eb" },
					{ "E#", "(G#)", "B", "D#", "Fx" }, { "E", "(G)", "Bb", "D", "F#" },
					{ "Eb", "(Gb)", "Bbb", "Db", "F" },
					{ "F#", "(A)", "C", "E", "G#" }, { "F", "(Ab)", "Cb", "Eb", "G" },
					{ "Fb", "(Abb)", "Cbb", "Ebb", "Gb" },
					{ "G#", "(B)", "D", "F#", "A#" }, { "G", "(Bb)", "Db", "F", "A" },
					{ "Gb", "(Bbb)", "Dbb", "Fb", "Ab" } };

			private String[][] MAJOR9TH = { { "A#", "Cx", "(E#)", "Gx", "B#" },
					{ "A", "C#", "(E)", "G#", "B" }, { "Ab", "C", "(Eb)", "G", "Bb" },
					{ "B#", "Dx", "(Fx)", "Ax", "Cx" },
					{ "B", "D#", "(F#)", "A#", "C#" }, { "Bb", "D", "(F)", "A", "C" },
					{ "C#", "E#", "(G#)", "B#", "D#" }, { "C", "E", "(G)", "B", "D" },
					{ "Cb", "Eb", "(Gb)", "Bb", "Db" },
					{ "D#", "Fx", "(A#)", "Cx", "E#" },
					{ "D", "F#", "(A)", "C#", "E" }, { "Db", "F", "(Ab)", "C", "Eb" },
					{ "E#", "Gx", "(B#)", "Dx", "Fx" },
					{ "E", "G#", "(B)", "D#", "F#" }, { "Eb", "G", "(Bb)", "D", "F" },
					{ "F#", "A#", "(C#)", "E#", "G#" }, { "F", "A", "(C)", "E", "G" },
					{ "Fb", "Ab", "(Cb)", "Eb", "Gb" },
					{ "G#", "B#", "(D#)", "Fx", "A#" }, { "G", "B", "(D)", "F#", "A" },
					{ "Gb", "Bb", "(Db)", "F", "Ab" } };

			private String[][] MAJOR9THSUSPENDED4TH = {
					{ "A#", "D#", "(E#)", "Gx", "B#" }, { "A", "D", "(E)", "G#", "B" },
					{ "Ab", "Db", "(Eb)", "G", "Bb" },
					{ "B#", "E#", "(Fx)", "Ax", "Cx" },
					{ "B", "E", "(F#)", "A#", "C#" }, { "Bb", "Eb", "(F)", "A", "C" },
					{ "C#", "F#", "(G#)", "B#", "D#" }, { "C", "F", "(G)", "B", "D" },
					{ "Cb", "Fb", "(Gb)", "Bb", "Db" },
					{ "D#", "G#", "(A#)", "Cx", "E#" }, { "D", "G", "(A)", "C#", "E" },
					{ "Db", "Gb", "(Ab)", "C", "Eb" },
					{ "E#", "A#", "(B#)", "Dx", "Fx" },
					{ "E", "A", "(B)", "D#", "F#" }, { "Eb", "Ab", "(Bb)", "D", "F" },
					{ "F#", "B", "(C#)", "E#", "G#" }, { "F", "Bb", "(C)", "E", "G" },
					{ "Fb", "Bbb", "(Cb)", "Eb", "Gb" },
					{ "G#", "C#", "(D#)", "Fx", "A#" }, { "G", "C", "(D)", "F#", "A" },
					{ "Gb", "Cb", "(Db)", "F", "Ab" } };

			private String[][] MAJOR7THADDFLATTENED9TH = {
					{ "A#", "Cx", "(E#)", "Gx", "B" },
					{ "A", "C#", "(E)", "G#", "Bb" },
					{ "Ab", "C", "(Eb)", "G", "Bbb" },
					{ "B#", "Dx", "(Fx)", "Ax", "C#" },
					{ "B", "D#", "(F#)", "A#", "C" }, { "Bb", "D", "(F)", "A", "Cb" },
					{ "C#", "E#", "(G#)", "B#", "D" }, { "C", "E", "(G)", "B", "Db" },
					{ "Cb", "Eb", "(Gb)", "Bb", "Dbb" },
					{ "D#", "Fx", "(A#)", "Cx", "E" },
					{ "D", "F#", "(A)", "C#", "Eb" },
					{ "Db", "F", "(Ab)", "C", "Ebb" },
					{ "E#", "Gx", "(B#)", "Dx", "F#" },
					{ "E", "G#", "(B)", "D#", "F" }, { "Eb", "G", "(Bb)", "D", "Fb" },
					{ "F#", "A#", "(C#)", "E#", "G" }, { "F", "A", "(C)", "E", "Gb" },
					{ "Fb", "Ab", "(Cb)", "Eb", "Gbb" },
					{ "G#", "B#", "(D#)", "Fx", "A" }, { "G", "B", "(D)", "F#", "Ab" },
					{ "Gb", "Bb", "(Db)", "F", "Abb" } };

			private String[][] DOMINANTADD6TH = { { "A#", "Cx", "(E#)", "Fx", "G#" },
					{ "A", "C#", "(E)", "F#", "G" }, { "Ab", "C", "(Eb)", "F", "Gb" },
					{ "B#", "Dx", "(Fx)", "Gx", "A#" },
					{ "B", "D#", "(F#)", "G#", "A" }, { "Bb", "D", "(F)", "G", "Ab" },
					{ "C#", "E#", "(G#)", "A#", "B" }, { "C", "E", "(G)", "A", "Bb" },
					{ "Cb", "Eb", "(Gb)", "Ab", "Bbb" },
					{ "D#", "Fx", "(A#)", "B#", "C#" }, { "D", "F#", "(A)", "B", "C" },
					{ "Db", "F", "(Ab)", "Bb", "Cb" },
					{ "E#", "Gx", "(B#)", "Cx", "D#" },
					{ "E", "G#", "(B)", "C#", "D" }, { "Eb", "G", "(Bb)", "C", "Db" },
					{ "F#", "A#", "(C#)", "D#", "E" }, { "F", "A", "(C)", "D", "Eb" },
					{ "Fb", "Ab", "(Cb)", "Db", "Ebb" },
					{ "G#", "B#", "(D#)", "E#", "F#" }, { "G", "B", "(D)", "E", "F" },
					{ "Gb", "Bb", "(Db)", "Eb", "Fb" } };

			private String[][] MINORMAJOR9TH = { { "A#", "C#", "(E#)", "Gx", "B#" },
					{ "A", "C", "(E)", "G#", "B" }, { "Ab", "Cb", "(Eb)", "G", "Bb" },
					{ "B#", "D#", "(Fx)", "Ax", "Cx" },
					{ "B", "D", "(F#)", "A#", "C#" }, { "Bb", "Db", "(F)", "A", "C" },
					{ "C#", "E", "(G#)", "B#", "D#" }, { "C", "Eb", "(G)", "B", "D" },
					{ "Cb", "Ebb", "(Gb)", "Bb", "Db" },
					{ "D#", "F#", "(A#)", "Cx", "E#" }, { "D", "F", "(A)", "C#", "E" },
					{ "Db", "Fb", "(Ab)", "C", "Eb" },
					{ "E#", "G#", "(B#)", "Dx", "Fx" },
					{ "E", "G", "(B)", "D#", "F#" }, { "Eb", "Gb", "(Bb)", "D", "F" },
					{ "F#", "A", "(C#)", "E#", "G#" }, { "F", "Ab", "(C)", "E", "G" },
					{ "Fb", "Abb", "(Cb)", "Eb", "Gb" },
					{ "G#", "B", "(D#)", "Fx", "A#" }, { "G", "Bb", "(D)", "F#", "A" },
					{ "Gb", "Bbb", "(Db)", "F", "Ab" } };

			private String[][] MINORMAJORFLATTENED9TH = {
					{ "A#", "C#", "(E#)", "Gx", "B" }, { "A", "C", "(E)", "G#", "Bb" },
					{ "Ab", "Cb", "(Eb)", "G", "Bbb" },
					{ "B#", "D#", "(Fx)", "Ax", "C#" },
					{ "B", "D", "(F#)", "A#", "C" }, { "Bb", "Db", "(F)", "A", "Cb" },
					{ "C#", "E", "(G#)", "B#", "D" }, { "C", "Eb", "(G)", "B", "Db" },
					{ "Cb", "Ebb", "(Gb)", "Bb", "Dbb" },
					{ "D#", "F#", "(A#)", "Cx", "E" }, { "D", "F", "(A)", "C#", "Eb" },
					{ "Db", "Fb", "(Ab)", "C", "Ebb" },
					{ "E#", "G#", "(B#)", "Dx", "F#" }, { "E", "G", "(B)", "D#", "F" },
					{ "Eb", "Gb", "(Bb)", "D", "Fb" },
					{ "F#", "A", "(C#)", "E#", "G" }, { "F", "Ab", "(C)", "E", "Gb" },
					{ "Fb", "Abb", "(Cb)", "Eb", "Gbb" },
					{ "G#", "B", "(D#)", "Fx", "A" }, { "G", "Bb", "(D)", "F#", "Ab" },
					{ "Gb", "Bbb", "(Db)", "F", "Abb" } };

			private String[][] DOMINANTADDAUGMENTED9TH = {
					{ "A#", "Cx", "(E#)", "G#", "Bx" },
					{ "A", "C#", "(E)", "G", "B#" }, { "Ab", "C", "(Eb)", "Gb", "B" },
					{ "B#", "Dx", "(Fx)", "A#", "C#x" },
					{ "B", "D#", "(F#)", "A", "Cx" }, { "Bb", "D", "(F)", "Ab", "C#" },
					{ "C#", "E#", "(G#)", "B", "Dx" }, { "C", "E", "(G)", "Bb", "D#" },
					{ "Cb", "Eb", "(Gb)", "Bbb", "D" },
					{ "D#", "Fx", "(A#)", "C#", "Ex" },
					{ "D", "F#", "(A)", "C", "E#" }, { "Db", "F", "(Ab)", "Cb", "E" },
					{ "E#", "Gx", "(B#)", "D#", "F#x" },
					{ "E", "G#", "(B)", "D", "Fx" }, { "Eb", "G", "(Bb)", "Db", "F#" },
					{ "F#", "A#", "(C#)", "E", "Gx" }, { "F", "A", "(C)", "Eb", "G#" },
					{ "Fb", "Ab", "(Cb)", "Ebb", "G" },
					{ "G#", "B#", "(D#)", "F#", "Ax" }, { "G", "B", "(D)", "F", "A#" },
					{ "Gb", "Bb", "(Db)", "Fb", "A" } };

			private String[][] DOMINANTFLATTENED5THADDAUGMENTED9TH = {
					{ "A#", "Cx", "E", "G#", "Bx" }, { "A", "C#", "Eb", "G", "B#" },
					{ "Ab", "C", "Ebb", "Gb", "B" }, { "B#", "Dx", "F#", "A#", "C#x" },
					{ "B", "D#", "F", "A", "Cx" }, { "Bb", "D", "Fb", "Ab", "C#" },
					{ "C#", "E#", "G", "B", "Dx" }, { "C", "E", "Gb", "Bb", "D#" },
					{ "Cb", "Eb", "Gbb", "Bbb", "D" }, { "D#", "Fx", "A", "C#", "Ex" },
					{ "D", "F#", "Ab", "C", "E#" }, { "Db", "F", "Abb", "Cb", "E" },
					{ "E#", "Gx", "B", "D#", "F#x" }, { "E", "G#", "Bb", "D", "Fx" },
					{ "Eb", "G", "Bbb", "Db", "F#" }, { "F#", "A#", "C", "E", "Gx" },
					{ "F", "A", "Cb", "Eb", "G#" }, { "Fb", "Ab", "Cbb", "Ebb", "G" },
					{ "G#", "B#", "D", "F#", "Ax" }, { "G", "B", "Db", "F", "A#" },
					{ "Gb", "Bb", "Dbb", "Fb", "A" } };

			private String[][] DOMINANTADDFLATTENED9TH = {
					{ "A#", "Cx", "(E#)", "G#", "B" }, { "A", "C#", "(E)", "G", "Bb" },
					{ "Ab", "C", "(Eb)", "Gb", "Bbb" },
					{ "B#", "Dx", "(Fx)", "A#", "C#" },
					{ "B", "D#", "(F#)", "A", "C" }, { "Bb", "D", "(F)", "Ab", "Cb" },
					{ "C#", "E#", "(G#)", "B", "D" }, { "C", "E", "(G)", "Bb", "Db" },
					{ "Cb", "Eb", "(Gb)", "Bbb", "Dbb" },
					{ "D#", "Fx", "(A#)", "C#", "E" }, { "D", "F#", "(A)", "C", "Eb" },
					{ "Db", "F", "(Ab)", "Cb", "Ebb" },
					{ "E#", "Gx", "(B#)", "D#", "F#" }, { "E", "G#", "(B)", "D", "F" },
					{ "Eb", "G", "(Bb)", "Db", "Fb" },
					{ "F#", "A#", "(C#)", "E", "G" }, { "F", "A", "(C)", "Eb", "Gb" },
					{ "Fb", "Ab", "(Cb)", "Ebb", "Gbb" },
					{ "G#", "B#", "(D#)", "F#", "A" }, { "G", "B", "(D)", "F", "Ab" },
					{ "Gb", "Bb", "(Db)", "Fb", "Abb" } };

			private String[][] MINOR7THFLATTENED9TH = {
					{ "A#", "C#", "(E#)", "G#", "B" }, { "A", "C", "(E)", "G", "Bb" },
					{ "Ab", "Cb", "(Eb)", "Gb", "Bbb" },
					{ "B#", "D#", "(Fx)", "A#", "C#" }, { "B", "D", "(F#)", "A", "C" },
					{ "Bb", "Db", "(F)", "Ab", "Cb" }, { "C#", "E", "(G#)", "B", "D" },
					{ "C", "Eb", "(G)", "Bb", "Db" },
					{ "Cb", "Ebb", "(Gb)", "Bbb", "Dbb" },
					{ "D#", "F#", "(A#)", "C#", "E" }, { "D", "F", "(A)", "C", "Eb" },
					{ "Db", "Fb", "(Ab)", "Cb", "Ebb" },
					{ "E#", "G#", "(B#)", "D#", "F#" }, { "E", "G", "(B)", "D", "F" },
					{ "Eb", "Gb", "(Bb)", "Db", "Fb" },
					{ "F#", "A", "(C#)", "E", "G" }, { "F", "Ab", "(C)", "Eb", "Gb" },
					{ "Fb", "Abb", "(Cb)", "Ebb", "Gbb" },
					{ "G#", "B", "(D#)", "F#", "A" }, { "G", "Bb", "(D)", "F", "Ab" },
					{ "Gb", "Bbb", "(Db)", "Fb", "Abb" } };

			private String[][] MINOR7THAUGMENTED9TH = {
					{ "A#", "C#", "(E#)", "G#", "Bx" }, { "A", "C", "(E)", "G", "B#" },
					{ "Ab", "Cb", "(Eb)", "Gb", "B" },
					{ "B#", "D#", "(Fx)", "A#", "C#x" },
					{ "B", "D", "(F#)", "A", "Cx" }, { "Bb", "Db", "(F)", "Ab", "C#" },
					{ "C#", "E", "(G#)", "B", "Dx" }, { "C", "Eb", "(G)", "Bb", "D#" },
					{ "Cb", "Ebb", "(Gb)", "Bbb", "D" },
					{ "D#", "F#", "(A#)", "C#", "Ex" }, { "D", "F", "(A)", "C", "E#" },
					{ "Db", "Fb", "(Ab)", "Cb", "E" },
					{ "E#", "G#", "(B#)", "D#", "F#x" },
					{ "E", "G", "(B)", "D", "Fx" }, { "Eb", "Gb", "(Bb)", "Db", "F#" },
					{ "F#", "A", "(C#)", "E", "Gx" }, { "F", "Ab", "(C)", "Eb", "G#" },
					{ "Fb", "Abb", "(Cb)", "Ebb", "G" },
					{ "G#", "B", "(D#)", "F#", "Ax" }, { "G", "Bb", "(D)", "F", "A#" },
					{ "Gb", "Bbb", "(Db)", "Fb", "A" } };

			private Chords Major6thAdd9th = new Chords("Major 6th Add 9th", "6add9",
					MAJOR6THADD9TH, "root", "major 3rd", "perfect 5th", "major 6th",
					"major 9th", 0, 4, 5, 9, 14, 5);
			private Chords Minor6thAdd9th = new Chords("Minor 6th Add 9th", "m6add9",
					MINOR6THADD9TH, "root", "minor 3rd", "perfect 5th", "major 6th",
					"major 9th", 0, 3, 5, 9, 14, 5);
			private Chords DominantAdd9th = new Chords("Dominant Add 9th", "9",
					DOMINANTADD9TH, "root", "major 3rd", "perfect 5th", "minor 7th",
					"major 9th", 0, 4, 5, 10, 14, 5);
			private Chords Dominant9thFlattened5th = new Chords(
					"Dominant 9th Flattened 5th", "9b5", DOMINANT9THFLATTENED5TH,
					"root", "major 3rd", "flattened 5th", "minor 7th", "major 9th", 0,
					4, 5, 10, 14, 5);
			private Chords Dominant9thAugmented5th = new Chords(
					"Dominant 9th Augmented 5th", "9#5", DOMINANT9THAUGMENTED5TH,
					"root", "major 3rd", "augmented 5th", "minor 7th", "major 9th", 0,
					4, 5, 10, 14, 5);
			private Chords Minor9th = new Chords("Minor 9th", "m9", MINOR9TH, "root",
					"minor 3rd", "perfect 5th", "minor 7th", "major 9th", 0, 3, 5, 10,
					14, 5);
			private Chords Minor9thFlattened5th = new Chords("Minor 9th Flattened 5th",
					"m9b5", MINOR9THFLATTENED5TH, "root", "minor 3rd", "flattened 5th",
					"minor 7th", "major 9th", 0, 3, 5, 10, 14, 5);
			private Chords Major9th = new Chords("Major 9th", "M9", MAJOR9TH, "root",
					"major 3rd", "perfect 5th", "major 7th", "major 9th", 0, 4, 5, 11,
					14, 5);
			private Chords Major9thSuspended4th = new Chords("Major 9th Suspended 4th",
					"M9sus4", MAJOR9THSUSPENDED4TH, "root", "perfect 4th",
					"perfect 5th", "major 7th", "major 9th", 0, 5, 5, 11, 14, 5);
			private Chords Major7thAddFlattened9th = new Chords(
					"Major 7th Add Flattened 9th", "M7b9", MAJOR7THADDFLATTENED9TH,
					"root", "major 3rd", "perfect 5th", "major 7th", "minor 9th", 0, 4,
					5, 11, 13, 5);
			private Chords DominantAdd6th = new Chords("Dominant Add 6th", "7add6",
					DOMINANTADD6TH, "root", "major 3rd", "perfect 5th", "major 6th",
					"minor 7th", 0, 4, 5, 9, 10, 5);
			private Chords MinorMajor9th = new Chords("Minor(Major) 9th", "m/M9",
					MINORMAJOR9TH, "root", "minor 3rd", "perfect 5th", "major 7th",
					"major 9th", 0, 3, 5, 11, 14, 5);
			private Chords MinorMajorFlattened9th = new Chords(
					"Minor(Major) Flattened 9th", "m/Mb9", MINORMAJORFLATTENED9TH,
					"root", "minor 3rd", "perfect 5th", "major 7th", "minor 9th", 0, 3,
					5, 11, 13, 5);
			private Chords DominantAddAugmented9th = new Chords(
					"Dominant Add Augmented 9th", "7#9", DOMINANTADDAUGMENTED9TH,
					"root", "major 3rd", "perfect 5th", "minor 7th", "augmented 9th",
					0, 4, 5, 10, 14, 5);
			private Chords DominantFlattened5thAddAugmented9th = new Chords(
					"Dominant Flattened 5th Add Augmented 9th", "7b5#9",
					DOMINANTFLATTENED5THADDAUGMENTED9TH, "root", "major 3rd",
					"flattened 5th", "minor 7th", "augmented 9th", 0, 4, 5, 10, 14, 5);
			private Chords DominantAddFlattened9th = new Chords(
					"Dominant Add Flattened 9th", "7b9", DOMINANTADDFLATTENED9TH,
					"root", "major 3rd", "perfect 5th", "minor 7th", "flattened 9th",
					0, 4, 5, 10, 14, 5);
			private Chords Minor7thFlattened9th = new Chords("Minor 7th Flattened 9th",
					"m7b9", MINOR7THFLATTENED9TH, "root", "minor 3rd", "perfect 5th",
					"minor 7th", "flattened 9th", 0, 3, 5, 10, 14, 5);
			private Chords Minor7thAugmented9th = new Chords("Minor 7th Augmented 9th",
					"m7#9", MINOR7THAUGMENTED9TH, "root", "minor 3rd", "perfect 5th",
					"minor 7th", "augmented 9th", 0, 3, 5, 10, 14, 5);

			private Chords dictionary[] = { Major, Flattened5th, Minor, Diminished,
					Augmented, Suspended2nd, Suspended4th, PowerChord, Major7th,
					Major7thSuspended2nd, Major7thSuspended4th, Major7thAugmented5th,
					Major7thFlattened5th, Sixth, MajorFlat6, MajorAdd4th, MajorAdd9th,
					Dominant7th, Dominant7thSuspended2nd, Dominant7thSuspended4th,
					Dominant7thAugmented5th, Dominant7thFlattened5th, Minor7th,
					MinorMajor7th, MinorAdd4th, MinorAdd9th, MinorFlattened6th,
					Minor6th, HalfDiminished7th, FullyDiminished7th, Major6thAdd9th,
					Minor6thAdd9th, DominantAdd9th, Dominant9thFlattened5th,
					Dominant9thAugmented5th, Minor9th, Minor9thFlattened5th, Major9th,
					Major9thSuspended4th, Major7thAddFlattened9th, DominantAdd6th,
					MinorMajor9th, MinorMajorFlattened9th, DominantAddAugmented9th,
					DominantFlattened5thAddAugmented9th, DominantAddFlattened9th,
					Minor7thFlattened9th, Minor7thAugmented9th };
			
			public BackEndDictionary(){}
			
			public int findIndex(String n) {
				n = n.trim();
				for (int x = 0; x < dictionary.length; x++) {
					if (dictionary[x].abbrName.equals(n)) {
						return x;
					}
				}
				return -1;
			}
			
			public String format(String s){
				s = s.replace('b', '♭');
				s = s.replace('#', '♯');
				return s;
			}
			
			public String unformat(String s){
				s = s.trim();
				s = s.replace('♭', 'b');
				s = s.replace('♯', '#');
				return s;
			}

			public String getName(String n) {
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					return format(dictionary[x].name);
				}
			}

			public String getAbbrName(String n) {
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					return format(dictionary[x].abbrName);
				}
			}

			public String getFirstNote(String r, String n) {
				r = unformat(r);
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					for (int y = 0; y < dictionary[x].notes.length; y++) {
						if (dictionary[x].notes[y][0].equals(r)) {
							return format(dictionary[x].notes[y][0]);
						}
					}
					return "error";
				}
			}

			public String getSecondNote(String r, String n) {
				r = unformat(r);
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					for (int y = 0; y < dictionary[x].notes.length; y++) {
						if (dictionary[x].notes[y][0].equals(r)) {
							return format(dictionary[x].notes[y][1]);
						}
					}
					return "error";
				}
			}

			public String getThirdNote(String r, String n) {
				r = unformat(r);
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					for (int y = 0; y < dictionary[x].notes.length; y++) {
						if (dictionary[x].notes[y][0].equals(r)) {
							return format(dictionary[x].notes[y][2]);
						}
					}
					return "error";
				}
			}

			public String getFourthNote(String r, String n) {
				r = unformat(r);
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					for (int y = 0; y < dictionary[x].notes.length; y++) {
						if (dictionary[x].notes[y][0].equals(r)) {
							return format(dictionary[x].notes[y][3]);
						}
					}
					return "error";
				}
			}

			public String getFifthNote(String r, String n) {
				r = unformat(r);
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					for (int y = 0; y < dictionary[x].notes.length; y++) {
						if (dictionary[x].notes[y][0].equals(r)) {
							return format(dictionary[x].notes[y][4]);
						}
					}
					return "error";
				}
			}
			
			public String getNotes(String r, String n){
				r = unformat(r);
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return "error";
				} else {
					if(x<8){
						return format(getFirstNote(r,n)+"-"+getSecondNote(r,n)+"-"+getThirdNote(r,n));
					}else if(x>=8 && x<30){
						return format(getFirstNote(r,n)+"-"+getSecondNote(r,n)+"-"+getThirdNote(r,n)+"-"+getFourthNote(r,n));
					}else{
						return format(getFirstNote(r,n)+"-"+getSecondNote(r,n)+"-"+getThirdNote(r,n)+"-"+getFourthNote(r,n)+"-"+getFifthNote(r,n));
					}
				}
			}
			
			public int getNum(String n){
				n = unformat(n);
				int x = findIndex(n);
				if (x == -1) {
					return -1;
				} else {
					return dictionary[x].num;
				}
			}

}
