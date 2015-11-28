package Tie::Simple::Util;

use strict;
use warnings;

# Copyright 2004, 2015 Andrew Sterling Hanenkamp. This software
# is made available under the same terms as Perl itself.

sub _doit {
	my $self = shift;
	my $parent = shift;
	my $method = shift;

	if (defined $$self{subs}{$method}) {
		$$self{subs}{$method}->($$self{data}, @_);
	} elsif ($parent->can($method)) {
		no strict 'refs';
		my $sub = "$parent\::$method";
		&{$sub}($self, @_);
	}
}

1
