package Microsoft::AdCenter::CustomerBillingService::OperationError;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerBillingService::OperationError - Represents "OperationError" in Microsoft AdCenter Customer Billing Service.

=cut

sub _type_name {
    return 'OperationError';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customermanagement/Exception';
}

our @_attributes = (qw/
    Code
    Details
    Message
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Code => 'int',
    Details => 'string',
    Message => 'string',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    Code => 0,
    Details => 0,
    Message => 0,
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

=head2 Code

Gets/sets Code (int)

=head2 Details

Gets/sets Details (string)

=head2 Message

Gets/sets Message (string)

=cut

