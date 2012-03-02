package Microsoft::AdCenter::V7::CampaignManagementService::Test::GetCampaignsByIdsResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::GetCampaignsByIdsResponse;

sub test_can_create_get_campaigns_by_ids_response_and_set_all_fields : Test(2) {
    my $get_campaigns_by_ids_response = Microsoft::AdCenter::V7::CampaignManagementService::GetCampaignsByIdsResponse->new
        ->Campaigns('campaigns')
    ;

    ok($get_campaigns_by_ids_response);

    is($get_campaigns_by_ids_response->Campaigns, 'campaigns', 'can get campaigns');
};

1;
