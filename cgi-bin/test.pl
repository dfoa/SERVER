 use strict;
  use warnings;
  
  use Apache2::RequestRec ();
  use Apache2::RequestIO ();
  
  use Apache2::Const -compile => qw(OK);
  
  sub handler {
      my $r = shift;
  
      $r->content_type('text/plain');
      $r->print("Now is: " . scalar(localtime) . "\n");
      print $r;
      return Apache2::Const::OK;
  }
