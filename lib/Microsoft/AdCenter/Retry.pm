package Microsoft::AdCenter::Retry;
# Copyright (C) 2010 Andre Paterlini Oliveira Vieira
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Class::Accessor::Chained Exporter Microsoft::AdCenter/;

our @EXPORT_OK = qw/CONNECTION_ERROR INTERNAL_SERVER_ERROR/;
our %EXPORT_TAGS = (
    ErrorTypes => [qw/CONNECTION_ERROR INTERNAL_SERVER_ERROR/]
);

__PACKAGE__->mk_accessors(qw/ErrorType RetryTimes WaitTime ScalingWaitTime Callback/);

sub new {
    my ($pkg, %args) = @_;
    my $self = bless {}, $pkg;
    foreach my $k (keys %args) {
        if ($self->can($k)) {
            $self->$k($args{$k});
        }
    }
    return $self;
}

sub CONNECTION_ERROR {
    return 1;
}

sub INTERNAL_SERVER_ERROR {
    return 2;
}

1;
