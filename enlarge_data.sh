#!/usr/bin/perl

@files = ('quijote.txt');

foreach my $f (@files) {
  print $f.'.. ';
  for my $i (0..2) { 
    system('cp '.$f.' '.$f.'-big.txt; cat '.$f.' >> '.$f.'-big.txt; rm '.$f.'; mv '.$f.'-big.txt '.$f.';');
  }
}
print "OK\n";

