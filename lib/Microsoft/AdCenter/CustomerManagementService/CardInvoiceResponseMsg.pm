package Microsoft::AdCenter::CustomerManagementService::CardInvoiceResponseMsg;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::CustomerManagementService::ResponseMsg/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::CardInvoiceResponseMsg - Represents "CardInvoiceResponseMsg" in Microsoft AdCenter Customer Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::CustomerManagementService::ResponseMsg

=cut

sub _type_name {
    return 'CardInvoiceResponseMsg';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    CardInvoice
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    CardInvoice => 'AdCenterCardInvoice',
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

=head2 CardInvoice

Gets/sets CardInvoice (AdCenterCardInvoice)

=cut

