package Redis::Schema::Factory;
use strict;
use warnings;
use Class::Load;

sub base_name { die }

sub create {
    my ($class,$schema_name) = @_;

    my $module = $class->base_name . '::' . $schema_name;
   
    load_class($module);
    
    return module->new;
}

1;
