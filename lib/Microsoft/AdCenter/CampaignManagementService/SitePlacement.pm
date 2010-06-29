package Microsoft::AdCenter::CampaignManagementService::SitePlacement;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::SitePlacement - Represents "SitePlacement" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'SitePlacement';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v7';
}

our @_attributes = (qw/
    Bid
    Id
    PlacementId
    Status
    Url
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    Bid => 'Bid',
    Id => 'long',
    PlacementId => 'long',
    Status => 'SitePlacementStatus',
    Url => 'string',
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

=head2 Bid

Gets/sets Bid (Bid)

=head2 Id

Gets/sets Id (long)

=head2 PlacementId

Gets/sets PlacementId (long)

=head2 Status

Gets/sets Status (SitePlacementStatus)

=head2 Url

Gets/sets Url (string)

=cut

