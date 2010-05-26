package Microsoft::AdCenter::CustomerManagementService::AdCenterAccount;

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AdCenterAccount - Represents "AdCenterAccount" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'AdCenterAccount';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    AccountId
    AccountName
    AccountNumber
    AgencyContactName
    BillToCustomerId
    CreditCard
    PaymentOptionsType
    PreferredCurrencyType
    PreferredLanguageType
    SalesHouseCustomerId
    Status
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AccountId => 'int',
    AccountName => 'string',
    AccountNumber => 'string',
    AgencyContactName => 'string',
    BillToCustomerId => 'int',
    CreditCard => 'AdCenterCreditCard',
    PaymentOptionsType => 'PaymentOption',
    PreferredCurrencyType => 'CurrencyType',
    PreferredLanguageType => 'LanguageType',
    SalesHouseCustomerId => 'int',
    Status => 'AccountStatus',
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

AccountId (int)
AccountName (string)
AccountNumber (string)
AgencyContactName (string)
BillToCustomerId (int)
CreditCard (AdCenterCreditCard)
PaymentOptionsType (PaymentOption)
PreferredCurrencyType (CurrencyType)
PreferredLanguageType (LanguageType)
SalesHouseCustomerId (int)
Status (AccountStatus)

=back

=cut

