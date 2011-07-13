package Redis::Schema::Base;
use strict;
use warnings;
use base qw/Redis/;
use Scalar::Util qw/blessed/;

sub schema_name {
    my $self = shift;
    my ($schema) = ( blessed($self) =~ /^.+Schema::(.+)$/);
}

sub hset {
    my ($self,$key,$value) = @_;
    $self->SUPER::hset($self->schema_name,$key,$value);
}

sub hget {
    my ($self,$key) = @_;
    $self->SUPER::hget($self->schema_name,$key);
}

1;
