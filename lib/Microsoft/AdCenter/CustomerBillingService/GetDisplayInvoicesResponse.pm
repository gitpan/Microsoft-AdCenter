package Microsoft::AdCenter::CustomerBillingService::GetDisplayInvoicesResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerBillingService::GetDisplayInvoicesResponse - Represents "GetDisplayInvoicesResponse" in Microsoft AdCenter Customer Billing Service.

=cut

sub _type_name {
    return 'GetDisplayInvoicesResponse';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customerbilling';
}

our @_attributes = (qw/
    Invoices
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Invoices => 'ArrayOfInvoice',
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

=head2 new

Creates a new instance

=head2 Invoices

Gets/sets Invoices (ArrayOfInvoice)

=cut
