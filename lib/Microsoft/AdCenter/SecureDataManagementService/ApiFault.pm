package Microsoft::AdCenter::SecureDataManagementService::ApiFault;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::SecureDataManagementService::ApplicationFault/;

=head1 NAME

Microsoft::AdCenter::SecureDataManagementService::ApiFault - Represents "ApiFault" in Microsoft AdCenter Secure Data Management Service.

=head1 INHERITANCE

Microsoft::AdCenter::SecureDataManagementService::ApplicationFault

=cut

sub _type_name {
    return 'ApiFault';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customermanagement/Exception';
}

our @_attributes = (qw/
    OperationErrors
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    OperationErrors => 'ArrayOfOperationError',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    OperationErrors => 0,
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

Remark: Inherited methods are not listed.

=head2 new

Creates a new instance

=head2 OperationErrors

Gets/sets OperationErrors (ArrayOfOperationError)

=cut

