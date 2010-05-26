package Microsoft::AdCenter::CustomerManagementService::AdCenterCardInvoiceHeader;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AdCenterCardInvoiceHeader - Represents "AdCenterCardInvoiceHeader" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'AdCenterCardInvoiceHeader';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    AccountName
    AccountNumber
    ActivityEndDate
    ActivityStartDate
    AttnAddress1
    AttnAddress2
    AttnAddress3
    AttnCity
    AttnName
    AttnPostalCode
    AttnStateOrProvince
    BillingInquiriesURL
    CountryCode
    CurrencyCode
    CustomerName
    DocumentType
    InvoiceNumber
    PreferredLanguageId
    TaxId
    UserLCID
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AccountName => 'string',
    AccountNumber => 'string',
    ActivityEndDate => 'dateTime',
    ActivityStartDate => 'dateTime',
    AttnAddress1 => 'string',
    AttnAddress2 => 'string',
    AttnAddress3 => 'string',
    AttnCity => 'string',
    AttnName => 'string',
    AttnPostalCode => 'string',
    AttnStateOrProvince => 'string',
    BillingInquiriesURL => 'string',
    CountryCode => 'CountryCode',
    CurrencyCode => 'Currency',
    CustomerName => 'string',
    DocumentType => 'string',
    InvoiceNumber => 'string',
    PreferredLanguageId => 'LanguageType',
    TaxId => 'string',
    UserLCID => 'LCID',
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

=head2 new

Creates a new instance

=head2 get/set methods

=over 8

    AccountName (string)
    AccountNumber (string)
    ActivityEndDate (dateTime)
    ActivityStartDate (dateTime)
    AttnAddress1 (string)
    AttnAddress2 (string)
    AttnAddress3 (string)
    AttnCity (string)
    AttnName (string)
    AttnPostalCode (string)
    AttnStateOrProvince (string)
    BillingInquiriesURL (string)
    CountryCode (CountryCode)
    CurrencyCode (Currency)
    CustomerName (string)
    DocumentType (string)
    InvoiceNumber (string)
    PreferredLanguageId (LanguageType)
    TaxId (string)
    UserLCID (LCID)

=back

=cut

