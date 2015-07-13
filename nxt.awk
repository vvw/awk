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
	pat = "なります"
}

FILENAME == ARGV[1] {
	if ( match($0, pat) ) {
		a[FNR] = $0
	} 
}
END {
	for (k in a) {
		printf "%s\n\t%s\n", pat, a[k]
	}
}

