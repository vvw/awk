#!/usr/bin/awk -f
BEGIN {
	# ARGV[0] is the filename of the script itself.
	ARGV[1] = "capitals"
    ARGV[2] = "countries"
    # Set ARGV length.
    ARGC = 3
    
}

BEGIN { 
	pat = "安くなります" 
	reg = "ではありませんでした"
}

FILENAME == "capitals" {
    cap[$1] = $2
    #print length(cap)
}
END {print cap["USA"]}

$0 ~ pat {print; print FNR; print length($0)}  # FNR 当前行数
$0 ~ reg {print}
END { print NR }

 