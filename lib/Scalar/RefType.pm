package Scalar::RefType;

use 5.020000;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Scalar::RefType ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
        sref 
        aref
        href
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT    = ( @{ $EXPORT_TAGS{'all'} } );

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Scalar::RefType', $VERSION);

# Preloaded methods go here.

1;

__END__

=head1 NAME

Scalar::RefType - Perl extension for getting the reftype of a scalar ref

=head1 SYNOPSIS

  use Scalar::RefType;
  my $x = \1;
  my $y = ['a' .. 'z'];
  my $z = { a => 1, b => 2};

  ok(sref($x),"scalar ref");
  ok(aref($y),"array ref");
  ok(href($z),"hash ref");

=head1 DESCRIPTION

Perl extension for getting the reftype of a scalar ref. given a ref,
it is easy to use sref, aref, href to know the ref type

=head1 EXPORT

=head2 sref

    accept one and only one argument, otherwise die
    return true if the arg is a scalar ref

=head2 aref

    accept one and only one argument, otherwise die
    return true if the arg is a array ref

=head2 href

    accept one and only one argument, otherwise die
    return true if the arg is a hash ref

=head1 AUTHOR

Hao Wu E<lt>echowuhao@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 by Hao Wu

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.20.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
