package Microsoft::AdCenter::V7::CampaignManagementService::Test::GetBehavioralBidsByAdGroupIdResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::GetBehavioralBidsByAdGroupIdResponse;

sub test_can_create_get_behavioral_bids_by_ad_group_id_response_and_set_all_fields : Test(2) {
    my $get_behavioral_bids_by_ad_group_id_response = Microsoft::AdCenter::V7::CampaignManagementService::GetBehavioralBidsByAdGroupIdResponse->new
        ->BehavioralBids('behavioral bids')
    ;

    ok($get_behavioral_bids_by_ad_group_id_response);

    is($get_behavioral_bids_by_ad_group_id_response->BehavioralBids, 'behavioral bids', 'can get behavioral bids');
};

1;
