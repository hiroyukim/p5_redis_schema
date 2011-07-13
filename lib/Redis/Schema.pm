package Redis::Schema;
use strict;
use warnings;
our $VERSION = '0.01';

1;
__END__

=head1 NAME

Redis::Schema -

=head1 SYNOPSIS

  package Your::Redis::Schema::Base;
  use base 'Redis::Schema::Base';

  package Your::Redis::Schema::Content;
  use base 'Your::Redis::Schema::Base';

  
  package Your::Redis::Factory;
  use base 'Redis::Schema::Factory';

  pacakge Your::Module;

  my $r = Your::Redis::Factory->create('Content');

  $r->hset('key','value');


=head1 DESCRIPTION

Redis::Schema is

=head1 AUTHOR

Hiroyuki Yamanaka E<lt>hiroyukimm at gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
