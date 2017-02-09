#!/usr/bin/perl

my $message = <<'END_MESSAGE';

#############  IMPORTANT SAFETY ANNOUNCEMENT #################

This is the NEW landing page for apache2buddy.pl

Please don't curl and perl the domain any more.

For security reasons, the following 
execution method will bring you to this page:

  # curl apache2buddy.pl | perl

Instead please run / bookmark the following:

  # curl -sL https://raw.githubusercontent.com/richardforth/apache2buddy/master/apache2buddy.pl | perl
  
This method is much safer.

For more information on this change refer to the README.md:
https://github.com/richardforth/apache2buddy/blob/master/README.md

Pay specific attention to the "Security Concerns" and 
"Typocamping is a thing and why you should be concerned" 
sections.

The domain will slowly be phased out and will eventually be released.
This landing page marks the start of that process. 

############### END IMPORTANT SAFTEY ANNOUNCEMENT ##############

END_MESSAGE

print $message;
print "Done.\n";
