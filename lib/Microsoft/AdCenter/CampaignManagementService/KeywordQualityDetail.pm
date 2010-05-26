package Microsoft::AdCenter::CampaignManagementService::KeywordQualityDetail;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::KeywordQualityDetail - Represents "KeywordQualityDetail" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'KeywordQualityDetail';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    AdQualityScore
    LandingPageQualityScore
    MinimumBid
    OverAllQualityScore
    SuggestedMainLineBid
    SuggestedSideBarBid
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AdQualityScore => 'QualityScore',
    LandingPageQualityScore => 'QualityScore',
    MinimumBid => 'double',
    OverAllQualityScore => 'QualityScore',
    SuggestedMainLineBid => 'double',
    SuggestedSideBarBid => 'double',
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

=head2 AdQualityScore

Gets/sets AdQualityScore (QualityScore)

=head2 LandingPageQualityScore

Gets/sets LandingPageQualityScore (QualityScore)

=head2 MinimumBid

Gets/sets MinimumBid (double)

=head2 OverAllQualityScore

Gets/sets OverAllQualityScore (QualityScore)

=head2 SuggestedMainLineBid

Gets/sets SuggestedMainLineBid (double)

=head2 SuggestedSideBarBid

Gets/sets SuggestedSideBarBid (double)

=cut

