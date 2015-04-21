#!/usr/bin/perl -w
use strict;

use Config::Find;
use File::Path;
use Test::More tests => 9;

$ENV{HOME} = 't/data';

my $fn = Config::Find->find( name => 'test1' );
is($fn,'t/data/.test1');
$fn = Config::Find->find( names => ['test2','test1'] );
is($fn,'t/data/.test2');

eval { $fn = Config::Find->find( names => ['does','not','exist'] ) };
is($fn,undef);

eval { $fn = Config::Find->find( names => 'string' ) };
like($@,qr/expecting an array ref/);
eval { $fn = Config::Find->find( names => ['string'], mode => 'append' ) };
like($@,qr/invalid option mode/);
eval { $fn = Config::Find->find( names => ['string'], scope => 'peri' ) };
like($@,qr/invalid option scope/);

eval { $fn = Config::Find->find( names => ['test1','test2'], mode => 'read' ) };
is($fn,'t/data/.test1');
eval { $fn = Config::Find->find( names => ['test3'], mode => 'write' ) };
is($fn,'t/data/.test3');

mkdir('conf');
eval { $fn = Config::Find->find( names => ['test3'], mode => 'write', scope => 'global' ) };
like($fn,qr!/conf/test3.conf$!);
rmdir('conf');
