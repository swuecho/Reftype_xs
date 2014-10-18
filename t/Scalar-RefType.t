use strict;
use warnings;

use Test::More tests => 4;
BEGIN { use_ok('Scalar::RefType') };

my $x = \1;
my $y = ['a' .. 'z'];
my $z = { a => 1, b => 2};

ok(sref($x),"scalar ref");
ok(aref($y),"array ref");
ok(href($z),"hash ref");

