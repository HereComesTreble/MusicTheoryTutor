package edu.asu.chord.tutor;

public class Chords {

	

	// Actual Class
	public String name, abbrName, first, second, third, fourth, fifth;
	
	public String[][] notes;

	public int intervalOne, intervalTwo, intervalThree, intervalFour,
			intervalFive, num;

	public Chords() {
	}

	public Chords(String n, String an, String[][] no, String f, String s,
			String t, int fir, int sec, int thi, int m) {
		name = n;
		abbrName = an;
		notes = no;
		first = f;
		second = s;
		third = t;
		num = m;

		intervalOne = fir;
		intervalTwo = sec;
		intervalThree = thi;

	}

	public Chords(String n, String an, String[][] no, String f, String s,
			String t, String fo, int fir, int sec, int thi, int fou, int m) {
		name = n;
		abbrName = an;
		notes = no;
		first = f;
		second = s;
		third = t;
		fourth = fo;
		num = m;

		intervalOne = fir;
		intervalTwo = sec;
		intervalThree = thi;
		intervalFour = fou;
	}

	public Chords(String n, String an, String[][] no, String f, String s,
			String t, String fo, String fi, int fir, int sec, int thi, int fou,
			int fif, int m) {
		name = n;
		abbrName = an;
		notes = no;
		first = f;
		second = s;
		third = t;
		fourth = fo;
		fifth = fi;
		num = m;

		intervalOne = fir;
		intervalTwo = sec;
		intervalThree = thi;
		intervalFour = fou;
		intervalFive = fif;
	}
}
