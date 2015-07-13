#!/usr/bin/awk -f
##!/usr/local/bin/gawk -f
BEGIN {
	# ARGV[0] is the filename of the script itself.
	#ARGV[1] = "ab.txt"
    ARGV[1] = "研究社新和英大辞典第５版.txt"
    # Set ARGV length.
    ARGC = 2
}

BEGIN {
	f = "ab"

}

FILENAME == ARGV[1] {
	while ( (getline pat < f) > 0 ) {
		if(match($0, pat)) {
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

