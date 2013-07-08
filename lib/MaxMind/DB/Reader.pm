package MaxMind::DB::Reader;

use strict;
use warnings;

use Module::Implementation;

my $Implementation;

{
    my $loader = Module::Implementation::build_loader_sub(
        implementations => [ 'XS', 'PP' ],
    );

    $loader->();
}

sub new {
    shift;
    return $Implementation->new(@_);
}

1;