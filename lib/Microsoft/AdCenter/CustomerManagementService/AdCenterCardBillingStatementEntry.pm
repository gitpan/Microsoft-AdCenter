package Microsoft::AdCenter::CustomerManagementService::AdCenterCardBillingStatementEntry;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::CustomerManagementService::AdCenterStatementEntry/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AdCenterCardBillingStatementEntry - Represents "AdCenterCardBillingStatementEntry" in Microsoft AdCenter Customer Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::CustomerManagementService::AdCenterStatementEntry

=cut

sub _type_name {
    return 'AdCenterCardBillingStatementEntry';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    Amount
    Balance
    BillingInvoiceHandle
    Charge
    Credit
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Amount => 'double',
    Balance => 'double',
    BillingInvoiceHandle => 'AdCenterCardInvoiceHandle',
    Charge => 'double',
    Credit => 'double',
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

    Amount (double)
    Balance (double)
    BillingInvoiceHandle (AdCenterCardInvoiceHandle)
    Charge (double)
    Credit (double)

    Inherited attributes are not listed.

=back

=cut

