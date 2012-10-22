package Athena;
use Mojo::Base 'Mojolicious';




sub startup {
  my $self = shift;

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('home#index');
  
  $r->get('/repository/fields'=> sub {
    my $self = shift;
		
	$self->render ( template	=> 'manage\respository', layout	=> 'default' );
  });
}

1;
