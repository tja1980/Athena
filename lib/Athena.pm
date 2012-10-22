package Athena;
use Mojo::Base 'Mojolicious';




sub startup {
  my $self = shift;

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/' => sub {
    my $self = shift;
    
    $self->render ( template	=> 'home/index',
                    layout	    => 'default' );
  });
  
  
}

1;
