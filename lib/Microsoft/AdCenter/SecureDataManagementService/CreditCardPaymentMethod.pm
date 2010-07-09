package Microsoft::AdCenter::SecureDataManagementService::CreditCardPaymentMethod;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::SecureDataManagementService::PaymentMethod/;

=head1 NAME

Microsoft::AdCenter::SecureDataManagementService::CreditCardPaymentMethod - Represents "CreditCardPaymentMethod" in Microsoft AdCenter Secure Data Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::SecureDataManagementService::PaymentMethod

=cut

sub _type_name {
    return 'CreditCardPaymentMethod';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customermanagement/Entities';
}

our @_attributes = (qw/
    ExpirationDate
    FirstName
    LastName
    MiddleInitial
    Number
    SecurityCode
    Type
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    ExpirationDate => 'long',
    FirstName => 'string',
    LastName => 'string',
    MiddleInitial => 'string',
    Number => 'string',
    SecurityCode => 'string',
    Type => 'CreditCardType',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

__PACKAGE__->mk_accessors(__PACKAGE__->_attributes);

1;

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730328%28v=MSADS.70%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

Remark: Inherited methods are not listed.

=head2 new

Creates a new instance

=head2 ExpirationDate

Gets/sets ExpirationDate (long)

=head2 FirstName

Gets/sets FirstName (string)

=head2 LastName

Gets/sets LastName (string)

=head2 MiddleInitial

Gets/sets MiddleInitial (string)

=head2 Number

Gets/sets Number (string)

=head2 SecurityCode

Gets/sets SecurityCode (string)

=head2 Type

Gets/sets Type (CreditCardType)

=cut
