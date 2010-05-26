package Microsoft::AdCenter::CampaignManagementService::AdGroup;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Microsoft::AdCenter::ComplexType/;

=head1 NAME

Microsoft::AdCenter::CampaignManagementService::AdGroup - Represents "AdGroup" in Microsoft AdCenter Campaign Management Service.

=cut

sub _type_name {
    return 'AdGroup';
}

sub _namespace_uri {
    return 'https://adcenter.microsoft.com/v6';
}

our @_attributes = (qw/
    AdDistribution
    BiddingModel
    BroadMatchBid
    CashBackInfo
    ContentMatchBid
    EndDate
    ExactMatchBid
    Id
    LanguageAndRegion
    Name
    NegativeKeywords
    NegativeSiteUrls
    PhraseMatchBid
    PricingModel
    StartDate
    Status
/);

sub _attributes {
    my $self = shift;
    return ($self->SUPER::_attributes, @_attributes);
}

our %_attribute_type = (
    AdDistribution => 'AdDistribution',
    BiddingModel => 'BiddingModel',
    BroadMatchBid => 'Bid',
    CashBackInfo => 'CashBackInfo',
    ContentMatchBid => 'Bid',
    EndDate => 'Date',
    ExactMatchBid => 'Bid',
    Id => 'long',
    LanguageAndRegion => 'string',
    Name => 'string',
    NegativeKeywords => 'ArrayOfstring',
    NegativeSiteUrls => 'ArrayOfstring',
    PhraseMatchBid => 'Bid',
    PricingModel => 'PricingModel',
    StartDate => 'Date',
    Status => 'AdGroupStatus',
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

    AdDistribution (AdDistribution)
    BiddingModel (BiddingModel)
    BroadMatchBid (Bid)
    CashBackInfo (CashBackInfo)
    ContentMatchBid (Bid)
    EndDate (Date)
    ExactMatchBid (Bid)
    Id (long)
    LanguageAndRegion (string)
    Name (string)
    NegativeKeywords (ArrayOfstring)
    NegativeSiteUrls (ArrayOfstring)
    PhraseMatchBid (Bid)
    PricingModel (PricingModel)
    StartDate (Date)
    Status (AdGroupStatus)

=back

=cut

