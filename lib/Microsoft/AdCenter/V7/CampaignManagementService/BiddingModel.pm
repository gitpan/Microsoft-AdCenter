package Microsoft::AdCenter::V7::CampaignManagementService::BiddingModel;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

=head1 NAME

Microsoft::AdCenter::V7::CampaignManagementService::BiddingModel - Represents "BiddingModel" in Microsoft AdCenter Campaign Management Service.

=head1 SYNOPSIS

See L<http://msdn.microsoft.com/en-us/library/ee730327.aspx> for documentation of the various data objects.

=head1 ENUMERATION VALUES

    BehavioralBid
    Keyword
    SitePlacement

=cut

sub BehavioralBid {
    return 'BehavioralBid';
}

sub Keyword {
    return 'Keyword';
}

sub SitePlacement {
    return 'SitePlacement';
}

1;
