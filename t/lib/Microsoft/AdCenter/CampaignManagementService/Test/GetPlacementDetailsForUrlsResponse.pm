package Microsoft::AdCenter::CampaignManagementService::Test::GetPlacementDetailsForUrlsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetPlacementDetailsForUrlsResponse;

sub test_can_create_get_placement_details_for_urls_response_and_set_all_fields : Test(2) {
    my $get_placement_details_for_urls_response = Microsoft::AdCenter::CampaignManagementService::GetPlacementDetailsForUrlsResponse->new
        ->PlacementDetails('placement details')
    ;

    ok($get_placement_details_for_urls_response);

    is($get_placement_details_for_urls_response->PlacementDetails, 'placement details', 'can get placement details');
};

1;
