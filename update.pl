#!/usr/bin/perl
# Update script
use strict;
use warnings;
my date = `date`
$date =~ s/ //g;
print "run update-script\n";
print  "run apt-get update \n";
open (DATEI, ">update$date.log") or die $!;
print DATEI"run update-script $date\n";
print DATEI"run apt-get update\n";
system("sudo /usr/bin/apt-get update -y");
print "Führe apt-get upgrade aus\n";
print DATEI"Führe apt-get upgrade aus\n";
system("sudo /usr/bin/apt-get upgrade -y");
print "stop update-script\n";
print "finish\n";
print DATEI"stop update-script\n";
print DATEI"finish\n";
close(DATEI);
