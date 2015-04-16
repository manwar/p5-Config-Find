package Config::Find::Win95;

our $VERSION = '0.01';

use strict;
use warnings;

use Config::Find::WinAny

our @ISA = qw(Config::Find::WinAny);

1;
__END__

=encoding utf-8

=head1 NAME

Config::Find::Win95 - Win95 idiosyncrasies for Config::Find

=head1 SYNOPSIS

  # don't use Config::Find::Win95 directly
  use Config::Find;

=head1 ABSTRACT

Implements Win95 specific features for Config::Find

=head1 DESCRIPTION

Contains any idiosyncrasies found within Win95, that do not apply to the 
standard Win32 base.

=head1 SEE ALSO

L<Config::Find>, L<Config::Find::WinAny>, L<Config::Find::Any>

=head1 AUTHOR

Salvador Fandiño, E<lt>sfandino@yahoo.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Salvador Fandiño

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
