package Microsoft::AdCenter::CustomerBillingService::ApplicationFault;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerBillingService::ApplicationFault - Represents "ApplicationFault" in Microsoft AdCenter Customer Billing Service.

=cut

sub _type_name {
    return 'ApplicationFault';
}

sub _namespace_uri {
    return 'https://adapi.microsoft.com';
}

our @_attributes = (qw/
    TrackingId
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    TrackingId => 'string',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    TrackingId => 0,
);

sub _attribute_min_occurs {
    my ($self, $attribute) = @_;
    if (exists $_attribute_min_occurs{$attribute}) {
        return $_attribute_min_occurs{$attribute};
    }
    return $self->SUPER::_attribute_min_occurs($attribute);
}

__PACKAGE__->mk_accessors(@_attributes);

1;

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730328%28v=MSADS.70%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

=head2 new

Creates a new instance

=head2 TrackingId

Gets/sets TrackingId (string)

=cut

