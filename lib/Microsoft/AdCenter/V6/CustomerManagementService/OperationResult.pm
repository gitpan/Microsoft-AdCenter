package Microsoft::AdCenter::V6::CustomerManagementService::OperationResult;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::V6::CustomerManagementService::OperationResult - Represents "OperationResult" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'OperationResult';
}

sub _namespace_uri {
    return 'http://adcenter.microsoft.com/syncapis';
}

our @_attributes = (qw/
    opErrors
    opStatus
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    opErrors => 'ArrayOfErrorInfo',
    opStatus => 'ResultStatus',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    opErrors => 0,
    opStatus => 1,
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

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=cut

=head1 METHODS

=head2 new

Creates a new instance

=head2 opErrors

Gets/sets opErrors (ArrayOfErrorInfo)

=head2 opStatus

Gets/sets opStatus (ResultStatus)

=cut

