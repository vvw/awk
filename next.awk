#!/usr/bin/awk -f
BEGIN {
	# ARGV[0] is the filename of the script itself.
	ARGV[1] = "ab"
    ARGV[2] = "cd"
    # Set ARGV length.
    ARGC = 3    
}

FILENAME == "ab" {
	ab[FNR] = $0
	next	# 短路后面的所有动作
}
FILENAME == "cd" {
	for (i=1; i < length(ab) + 1; i++) {
		#split (ab[k], a)
		reg = ab[i]
		if(match($0, reg)) {
			printf "%s\n\t%s\n", reg, $0
		}
	}
}



 