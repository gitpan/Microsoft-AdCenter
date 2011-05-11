package Microsoft::AdCenter::V6::CampaignManagementService::Test::UpdateSitePlacementsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CampaignManagementService;
use Microsoft::AdCenter::V6::CampaignManagementService::UpdateSitePlacementsResponse;

sub test_can_create_update_site_placements_response_and_set_all_fields : Test(1) {
    my $update_site_placements_response = Microsoft::AdCenter::V6::CampaignManagementService::UpdateSitePlacementsResponse->new
    ;

    ok($update_site_placements_response);

};

1;
