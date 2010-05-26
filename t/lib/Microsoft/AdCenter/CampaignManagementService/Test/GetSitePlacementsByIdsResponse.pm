package Microsoft::AdCenter::CampaignManagementService::Test::GetSitePlacementsByIdsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetSitePlacementsByIdsResponse;

sub test_can_create_get_site_placements_by_ids_response_and_set_all_fields : Test(2) {
    my $get_site_placements_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetSitePlacementsByIdsResponse->new
        ->SitePlacements('site placements')
    ;

    ok($get_site_placements_by_ids_response);

    is($get_site_placements_by_ids_response->SitePlacements, 'site placements', 'can get site placements');
};

1;
