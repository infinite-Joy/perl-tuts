 use GraphViz;
 use Devel::DProfPP;
 
 my $graph = GraphViz->new();
 my %edges = ();
 Devel::DProfPP->new(enter => sub {
     my $pp = shift;
     my @stack = $pp->stack;
     my $to = $stack[-1]->sub_name;
     my $from = @stack > 1 ? $stack[-2]->sub_name : "MAIN BODY";
     $graph->add_edge($from => $to) unless $edges{$from." -> ".$to}++;
 })->parse;
 
 print $graph->as_png;
