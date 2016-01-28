#!/usr/bin/perl -w

#use strict;

$P = $ARGV[0];

@P = split //, $P;

for ( $k=0; $k < @P ; $k++ ) {
	$P{$P[$k]} .= "$k";
}

print '(.)';

for ( $k=1; $k < @P; $k++ ) {
	if ( $P[$k] ne $P[$k-1] ) {
		print '(?!';
		$f=1;
		for ($h=0; $h < $k ; $h++ ) {
			$i=$h+1;
			if ( $P[$h] ne $P[$k]) {
				print "|" if ($f == 0);
				print "\\$i";
				$f=0;
			}
		}
		$s .= "\$$i";
		print ')(.)';
	} else {
		$i=$k;
		$s .= "\$$i";
		print '(.)';
	}
}
print
