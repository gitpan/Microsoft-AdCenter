package Microsoft::AdCenter::SecureDataManagementService::PaymentMethod;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::SecureDataManagementService::PaymentMethod - Represents "PaymentMethod" in Microsoft AdCenter Secure Data Management Service.

=cut

sub _type_name {
    return 'PaymentMethod';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customermanagement/Entities';
}

our @_attributes = (qw/
    Address
    CustomerId
    Id
    TimeStamp
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Address => 'Address',
    CustomerId => 'long',
    Id => 'long',
    TimeStamp => 'base64Binary',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    Address => 0,
    CustomerId => 0,
    Id => 0,
    TimeStamp => 0,
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

=head2 Address

Gets/sets Address (Address)

=head2 CustomerId

Gets/sets CustomerId (long)

=head2 Id

Gets/sets Id (long)

=head2 TimeStamp

Gets/sets TimeStamp (base64Binary)

=cut

