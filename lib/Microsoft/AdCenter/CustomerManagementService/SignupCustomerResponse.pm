package Microsoft::AdCenter::CustomerManagementService::SignupCustomerResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::SignupCustomerResponse - Represents "SignupCustomerResponse" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'SignupCustomerResponse';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customermanagement';
}

our @_attributes = (qw/
    AccountId
    AccountNumber
    CreateTime
    CustomerId
    CustomerNumber
    UserId
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AccountId => 'long',
    AccountNumber => 'string',
    CreateTime => 'dateTime',
    CustomerId => 'long',
    CustomerNumber => 'string',
    UserId => 'long',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    AccountId => 1,
    AccountNumber => 1,
    CreateTime => 1,
    CustomerId => 1,
    CustomerNumber => 1,
    UserId => 1,
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

=head2 AccountId

Gets/sets AccountId (long)

=head2 AccountNumber

Gets/sets AccountNumber (string)

=head2 CreateTime

Gets/sets CreateTime (dateTime)

=head2 CustomerId

Gets/sets CustomerId (long)

=head2 CustomerNumber

Gets/sets CustomerNumber (string)

=head2 UserId

Gets/sets UserId (long)

=cut

