#!/usr/bin/awk -f
##!/usr/local/bin/gawk -f
BEGIN {
	# ARGV[0] is the filename of the script itself.
	#ARGV[1] = "ab.txt"
    ARGV[1] = "研究社新和英大辞典第５版"
    #ARGV[1] = "機能別日本語文型辞典"
    #ARGV[1] = "ef"
    # Set ARGV length.
    ARGC = 2
}

BEGIN {
	f = "cd"

}

FILENAME == ARGV[1] {
	while ( (getline pat < f) > 0 ) {
		split (pat, t, "\t")
		reg = t[1]
		if(match($0, reg)) {
			a [++i] = pat "\n" $0
		}
	}
	close (f)
}
END {
	for (k in a) {
		print a[k]
	}	
}

