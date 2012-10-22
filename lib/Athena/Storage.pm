package Athena::Storage;
use Mojo::Base 'Mojolicious';

use base 'Athena::Base';

sub register {
    my ( $self, $app ) = @_;
    
    
    
}

sub _create_parent_directory {
    
}

sub _create_child_directories {
    my ( $path, $level ) = @_;
    
    unless ( defined ( $level ) ) { $level = 3; }
    
    for ( my $i = 0; $i != $level ) {
        
    }
}