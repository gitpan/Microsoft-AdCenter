package Microsoft::AdCenter::CampaignManagementService::Test::GetAdGroupsByCampaignIdResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetAdGroupsByCampaignIdResponse;

sub test_can_create_get_ad_groups_by_campaign_id_response_and_set_all_fields : Test(2) {
    my $get_ad_groups_by_campaign_id_response = Microsoft::AdCenter::CampaignManagementService::GetAdGroupsByCampaignIdResponse->new
        ->AdGroups('ad groups')
    ;

    ok($get_ad_groups_by_campaign_id_response);

    is($get_ad_groups_by_campaign_id_response->AdGroups, 'ad groups', 'can get ad groups');
};

1;
