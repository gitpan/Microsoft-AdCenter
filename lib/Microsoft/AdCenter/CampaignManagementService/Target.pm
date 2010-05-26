package Microsoft::AdCenter::CampaignManagementService::Target;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::Target - Represents "Target" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'Target';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    Age
    Behavior
    Day
    Gender
    Hour
    Id
    IsLibraryTarget
    Location
    Name
    Segment
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Age => 'AgeTarget',
    Behavior => 'BehavioralTarget',
    Day => 'DayTarget',
    Gender => 'GenderTarget',
    Hour => 'HourTarget',
    Id => 'long',
    IsLibraryTarget => 'boolean',
    Location => 'LocationTarget',
    Name => 'string',
    Segment => 'SegmentTarget',
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

    Age (AgeTarget)
    Behavior (BehavioralTarget)
    Day (DayTarget)
    Gender (GenderTarget)
    Hour (HourTarget)
    Id (long)
    IsLibraryTarget (boolean)
    Location (LocationTarget)
    Name (string)
    Segment (SegmentTarget)

=back

=cut

