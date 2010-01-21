#!/usr/bin/perl
# Perl routines to dump Concordia database information

use IO::Handle;
use WWW::Curl::Easy;

my $tmp;
my $page;
my $status;
my $curl = new WWW::Curl::Easy;

my $yrsess;
my $faculty;
my $type;
my $Course;

my @courseNames;

my $baseURL = "http://regsis.concordia.ca/class_schedule/";

open($tmp, ">", \$page);

$yrsess = '2009' . '4';
$faculty = '04';
$type = 'U';

#$curl->setopt(CURLOPT_COOKIEJAR, 'cookies.txt');
#$curl->setopt(CURLOPT_COOKIEFILE, 'cookies.txt');
$curl->setopt(CURLOPT_REFERER, $baseURL . "Sel_yrses.html");
$curl->setopt(CURLOPT_URL, $baseURL . "ww701f.exe");
$curl->setopt(CURLOPT_POSTFIELDS, 'yrsess='.$yrsess.'&faculty='.$faculty.'&type='.$type);
$curl->setopt(CURLOPT_WRITEDATA, $tmp);

$status = $curl->perform;

my @lines = split(/\n/, $page);

foreach my $line (@lines)
{
	while($line =~ m/<option value=\"(\S+)\s+\"/g)
	{
		print "$1\n";
		push(@courseNames, $1);
	}
}

$curl->setopt(CURLOPT_REFERER, $baseURL . "ww701f.exe");
$curl->setopt(CURLOPT_URL, $baseURL . "ww701f.exe");

foreach $courseName (@courseNames) {

$Course = $courseName . "+" x (14 - length($courseName));

$curl->setopt(CURLOPT_POSTFIELDS, 'Course='.$Course.'&courno=&campus=All&yrsess='.$yrsess.'&faculty='.$faculty.'&type='.$type.'&TABLE=MAIN');

$status = $curl->perform;

my @lines = split(/\n/, $page);

foreach my $line (@lines)
{
	if($line =~ m/.*<img src="\/image\/\S+\.jpg"><\/td><td width=8% align=center>(\S+)\s+<\/td><td width=8% align=center>(\S+)\s*<\/td><td width=64% align=center>([^<]+)<\/td><td width=15% align=center>\((\d+) credits\)<\/td>.*/g)
	{
		print "$1\t$2\t$3\t$4 credits\n";
	}

	if($line =~ m/.*<tr><td width=3%>\/(\d)<\/td><td witdh=15%>(<b><\/b>|\.+)\s+(\w{3}) (\w+)<\/td><td width=8%>(\S+)<\/td><td width=20%>(\S+) (\w+)\&nbsp\;\&nbsp\;<\/td><td width=9%>([^<]*)<\/td><td width=16%>([^<]+)<\/td>.*/g)
	{
		print "$1 $3 $4 $5 $6 $7 $8 $9 $10\n";
	}
}

}

















