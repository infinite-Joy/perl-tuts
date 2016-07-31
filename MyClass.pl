package MyClass;

sub new {
   my ($class_name) = @_;
   my $new_instance = {};
   bless $new_instance, $class_name;
   return $new_instance;
}

sub set {
   my ($self, $name, $value) = @_;
   $self->{$name} = $value;
}

sub get {
   my ($self, $name) = @_;
   return $self->{$name};
}
1;

my $instance = MyClass->new; # Same as MyClass::new("MyClass")
$instance->set('age', 30);   # Same as MyClass::set($instance, 'age', 30)
print $instance->get('age'), "\n"; # Same as MyClass::get($instance, 'age')
