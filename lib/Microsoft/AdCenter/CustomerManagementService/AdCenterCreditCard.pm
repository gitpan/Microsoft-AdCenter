package Microsoft::AdCenter::CustomerManagementService::AdCenterCreditCard;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::CustomerManagementService::AdCenterPaymentInstrument/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AdCenterCreditCard - Represents "AdCenterCreditCard" in Microsoft AdCenter Customer Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::CustomerManagementService::AdCenterPaymentInstrument

=cut

sub _type_name {
    return 'AdCenterCreditCard';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    CreditCardExpirationDate
    CreditCardFirstName
    CreditCardLastFour
    CreditCardLastName
    CreditCardMiddleInitial
    CreditCardNumber
    CreditCardSecurityCode
    CreditCardTypeId
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    CreditCardExpirationDate => 'dateTime',
    CreditCardFirstName => 'string',
    CreditCardLastFour => 'string',
    CreditCardLastName => 'string',
    CreditCardMiddleInitial => 'string',
    CreditCardNumber => 'string',
    CreditCardSecurityCode => 'string',
    CreditCardTypeId => 'CreditCardType',
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

See L<http://msdn.microsoft.com/en-US/library/ee730327%28v=MSADS.60%29.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

Remark: Inherited methods are not listed.

=head2 new

Creates a new instance

=head2 CreditCardExpirationDate

Gets/sets CreditCardExpirationDate (dateTime)

=head2 CreditCardFirstName

Gets/sets CreditCardFirstName (string)

=head2 CreditCardLastFour

Gets/sets CreditCardLastFour (string)

=head2 CreditCardLastName

Gets/sets CreditCardLastName (string)

=head2 CreditCardMiddleInitial

Gets/sets CreditCardMiddleInitial (string)

=head2 CreditCardNumber

Gets/sets CreditCardNumber (string)

=head2 CreditCardSecurityCode

Gets/sets CreditCardSecurityCode (string)

=head2 CreditCardTypeId

Gets/sets CreditCardTypeId (CreditCardType)

=cut

