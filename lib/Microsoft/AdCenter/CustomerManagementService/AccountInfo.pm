package Microsoft::AdCenter::CustomerManagementService::AccountInfo;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CustomerManagementService::AccountInfo - Represents "AccountInfo" in Microsoft AdCenter Customer Management Service.

=cut

sub _type_name {
    return 'AccountInfo';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/api/customermanagement/Entities';
}

our @_attributes = (qw/
    Id
    Name
    Number
    Status
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Id => 'long',
    Name => 'string',
    Number => 'string',
    Status => 'AccountLifeCycleStatus',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    Id => 0,
    Name => 0,
    Number => 0,
    Status => 0,
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

=head2 Id

Gets/sets Id (long)

=head2 Name

Gets/sets Name (string)

=head2 Number

Gets/sets Number (string)

=head2 Status

Gets/sets Status (AccountLifeCycleStatus)

=cut

