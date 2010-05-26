package Microsoft::AdCenter::SOAPFault;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Class::Accessor::Chained Microsoft::AdCenter/;

use Data::Dumper;

__PACKAGE__->mk_accessors(qw/
    faultcode
    faultstring
    detail
/);

use overload q("") => \&to_string;

sub to_string {
    my $self = shift;
    return Dumper($self);
}

1;
