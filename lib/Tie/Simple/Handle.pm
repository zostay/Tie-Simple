package Tie::Simple::Handle;

use strict;
use warnings;

use base qw(Tie::Handle Tie::Simple);

# Copyright 2004, 2015 Andrew Sterling Hanenkamp. This software
# is made available under the same terms as Perl itself.

sub _doit {
	my $self = shift;
	Tie::Simple::Util::_doit($self, 'Tie::Handle', @_);
}

sub WRITE { shift->_doit('WRITE', @_) }
sub PRINT { shift->_doit('PRINT', @_) }
sub PRINTF { shift->_doit('PRINTF', @_) }
sub READ { shift->_doit('READ', @_) }
sub READLINE { shift->_doit('READLINE') }
sub GETC { shift->_doit('GETC') }
sub CLOSE { shift->_doit('CLOSE') }
sub UNTIE { shift->_doit('UNTIE') }
sub DESTROY { shift->_doit('DESTROY') }

1
