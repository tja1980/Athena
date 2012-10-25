package Athena;
use Mojo::Base 'Mojolicious';

use Athena::Storage;


sub startup {
  my $self = shift;

  $self->plugin('Config');
  $self->plugin('Athena::Storage');
  
  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/' => sub {
    my $self = shift;
    
    $self->render ( template	=> 'home/index',
                    layout	    => 'default' );
  });
  
  $r->get ( '/storage' => sub {
    my $self = shift;
    
    $self->make_repository_structure();
  });
  
  
}

1;
