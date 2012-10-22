package Athena::Helper::Authentication;

use strict;
use warnings;

use base 'Mojolicious::Plugin';

sub register {
    my ( $self, $app ) = @_;
    
    $app->helper(
        validate => sub {
            # username, password
        });
    
    $app->helper(
        
    )
}