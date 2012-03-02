package Microsoft::AdCenter::V8::CampaignManagementService::Target;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::V8::CampaignManagementService::Target - Represents "Target" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'Target';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v8';
}

our @_attributes = (qw/
    Age
    Day
    Device
    Gender
    Hour
    Id
    IsLibraryTarget
    Location
    Name
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Age => 'AgeTarget',
    Day => 'DayTarget',
    Device => 'DeviceTarget',
    Gender => 'GenderTarget',
    Hour => 'HourTarget',
    Id => 'long',
    IsLibraryTarget => 'boolean',
    Location => 'LocationTarget',
    Name => 'string',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    Age => 0,
    Day => 0,
    Device => 0,
    Gender => 0,
    Hour => 0,
    Id => 0,
    IsLibraryTarget => 0,
    Location => 0,
    Name => 0,
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

=head2 Age

Gets/sets Age (AgeTarget)

=head2 Day

Gets/sets Day (DayTarget)

=head2 Device

Gets/sets Device (DeviceTarget)

=head2 Gender

Gets/sets Gender (GenderTarget)

=head2 Hour

Gets/sets Hour (HourTarget)

=head2 Id

Gets/sets Id (long)

=head2 IsLibraryTarget

Gets/sets IsLibraryTarget (boolean)

=head2 Location

Gets/sets Location (LocationTarget)

=head2 Name

Gets/sets Name (string)

=cut
