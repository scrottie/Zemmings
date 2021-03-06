package Zemmings;
use Avenger;

use Zemmings::Map;

sub new {
    my $package = shift;
    my %opts = @_;
    bless \%opts, $package;
}

sub start {
    my $self = shift;
    my %opts = @_;

    my @levels = glob "*.lvl";

    my $map = Zemmings::Map->new( file => $levels[ int rand @levels ] );
}

start 'MainScreen';

'brains';
