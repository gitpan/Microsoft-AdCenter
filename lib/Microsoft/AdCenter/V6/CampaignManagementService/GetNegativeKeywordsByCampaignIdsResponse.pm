package Microsoft::AdCenter::V6::CampaignManagementService::GetNegativeKeywordsByCampaignIdsResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::V6::CampaignManagementService::GetNegativeKeywordsByCampaignIdsResponse - Represents "GetNegativeKeywordsByCampaignIdsResponse" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'GetNegativeKeywordsByCampaignIdsResponse';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    CampaignNegativeKeywords
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    CampaignNegativeKeywords => 'ArrayOfCampaignNegativeKeywords',
);

sub _attribute_type {
    my ($self, $attribute) = @_;
    if (exists $_attribute_type{$attribute}) {
        return $_attribute_type{$attribute};
    }
    return $self->SUPER::_attribute_type($attribute);
}

our %_attribute_min_occurs = (
    CampaignNegativeKeywords => 1,
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

=head2 CampaignNegativeKeywords

Gets/sets CampaignNegativeKeywords (ArrayOfCampaignNegativeKeywords)

=cut

