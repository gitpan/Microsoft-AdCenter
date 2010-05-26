package Microsoft::AdCenter::CampaignManagementService::LocationTarget;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::LocationTarget - Represents "LocationTarget" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'LocationTarget';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    BusinessTarget
    CityTarget
    CountryTarget
    MetroAreaTarget
    RadiusTarget
    StateTarget
    TargetAllLocations
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    BusinessTarget => 'BusinessTarget',
    CityTarget => 'CityTarget',
    CountryTarget => 'CountryTarget',
    MetroAreaTarget => 'MetroAreaTarget',
    RadiusTarget => 'RadiusTarget',
    StateTarget => 'StateTarget',
    TargetAllLocations => 'boolean',
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

=head2 BusinessTarget

Gets/sets BusinessTarget (BusinessTarget)

=head2 CityTarget

Gets/sets CityTarget (CityTarget)

=head2 CountryTarget

Gets/sets CountryTarget (CountryTarget)

=head2 MetroAreaTarget

Gets/sets MetroAreaTarget (MetroAreaTarget)

=head2 RadiusTarget

Gets/sets RadiusTarget (RadiusTarget)

=head2 StateTarget

Gets/sets StateTarget (StateTarget)

=head2 TargetAllLocations

Gets/sets TargetAllLocations (boolean)

=cut

