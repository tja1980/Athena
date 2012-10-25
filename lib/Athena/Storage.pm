package Athena::Storage;
use Mojo::Base 'Mojolicious';

use base 'Mojolicious::Plugin';
use base 'Athena::Base';



sub register {
    my ( $self, $app ) = @_;
    
    $app->helper ( make_repository_structure   => sub {
       my $self = shift;
       
       __make_repository_directories ( "c:\\temp\\test", 3);
       
       
    });
    
}

sub __make_repository_directories {
    my ( $base, $depth ) = @_;
    
    my $directory_names = {
        0   =>  0,
        1   =>  1,
        2   =>  2,
        3   =>  3,
        4   =>  4,
        5   =>  5,
        6   =>  6,
        7   =>  7,
        8   =>  8,
        9   =>  9,
        10  =>  'a',
        11  =>  'b',
        12  =>  'c',
        13  =>  'd',
        14  =>  'e',
        15  =>  'f'
    };
    
    my $directories = 16;
    
    mkdir $base
        or die $!;
        
    return 0 if $depth == 0;
    
    my $directory = 0;
    
    for ( my $i = 0; $i < $directories; $i++ ) {
        __make_repository_directories ( $base . "\\" . $directory_names->{$directory}, $depth - 1 );
        
        $directory++;
    }
}

1;