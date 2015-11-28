package Tie::Simple::Scalar;

use strict;
use warnings;

use base qw(Tie::Scalar Tie::Simple);
use Tie::Simple::Util;

# Copyright 2004, 2015 Andrew Sterling Hanenkamp. This software
# is made available under the same terms as Perl itself.

sub _doit {
	my $self = shift;
	Tie::Simple::Util::_doit($self, 'Tie::Scalar', @_);
}

sub FETCH { shift->_doit('FETCH') }
sub STORE { shift->_doit('STORE', @_) }
sub UNTIE { shift->_doit('UNTIE') }
sub DESTROY { shift->_doit('DESTROY') }

1
