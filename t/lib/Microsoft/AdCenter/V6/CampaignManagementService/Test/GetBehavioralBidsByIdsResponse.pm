package Microsoft::AdCenter::V6::CampaignManagementService::Test::GetBehavioralBidsByIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CampaignManagementService;
use Microsoft::AdCenter::V6::CampaignManagementService::GetBehavioralBidsByIdsResponse;

sub test_can_create_get_behavioral_bids_by_ids_response_and_set_all_fields : Test(2) {
    my $get_behavioral_bids_by_ids_response = Microsoft::AdCenter::V6::CampaignManagementService::GetBehavioralBidsByIdsResponse->new
        ->BehavioralBids('behavioral bids')
    ;

    ok($get_behavioral_bids_by_ids_response);

    is($get_behavioral_bids_by_ids_response->BehavioralBids, 'behavioral bids', 'can get behavioral bids');
};

1;
