# Tie::Simple

This is a cousin of my Tie::Filter module. Tie::Simple basically dumbs down
the implementation of simple ties so that a full-blown package need not be
created for the very simple stuff that should be tied. In fact, Tie::Filter
could be reimplemented using Tie::Simple--it won't, but it could.

The implementation is a little nasty, but it works (I think...). Anyway, if you
need some quick tied variables, this can be the way to go. All the ties
"implement" the Tie::Scalar, Tie::Array, Tie::Hash, or Tie::Handle classes
depending on the tie type to make things just a little easier. The way this has
been done isn't precisely intuitive, but I was too lazy to do it better.

If someone wants to modify the code and improve it, please do and send me some
patches.

## INSTALLATION

Follow the typical Perl custom:

    perl Makefile.PL
    make
    make test
    make install

I use PerlIO for the handle tie tests, so 5.8.0 or better is required for the
all tests to succeed, but the classes themselves will probably work with 5.6.

## COPYRIGHT AND LICENSE

Copyright 2004, 2015 Andrew Sterling hanenkamp. This library is made available
under the same terms as Perl itself.
