package Microsoft::AdCenter::V7::CampaignManagementService::GetTargetsByIdsResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::V7::CampaignManagementService::GetTargetsByIdsResponse - Represents "GetTargetsByIdsResponse" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'GetTargetsByIdsResponse';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v7';
}

our @_attributes = (qw/
    Targets
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Targets => 'ArrayOfTarget',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    Targets => 1,
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

=head2 Targets

Gets/sets Targets (ArrayOfTarget)

=cut

