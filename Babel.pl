#!/usr/bin/perl -w

#use strict;

$P = $ARGV[0];

@P = split //, $P;

for ( $k=0; $k < @P ; $k++ ) {
	$P{$P[$k]} .= "$k";
}

#$l = scalar keys %P;
#if ( $l > 10 ) {
#	print "More than 10 letters($l). Exiting\n";
#	exit 1;
#}

print 's/.*?(.)';

for ( $k=1; $k < @P; $k++ ) {
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
}
$i++;
print ".*/$s\$$i/\n";
