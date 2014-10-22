package Microsoft::AdCenter::V7::CampaignManagementService::Test::GetSitePlacementsByAdGroupIdResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::GetSitePlacementsByAdGroupIdResponse;

sub test_can_create_get_site_placements_by_ad_group_id_response_and_set_all_fields : Test(2) {
    my $get_site_placements_by_ad_group_id_response = Microsoft::AdCenter::V7::CampaignManagementService::GetSitePlacementsByAdGroupIdResponse->new
        ->SitePlacements('site placements')
    ;

    ok($get_site_placements_by_ad_group_id_response);

    is($get_site_placements_by_ad_group_id_response->SitePlacements, 'site placements', 'can get site placements');
};

1;
