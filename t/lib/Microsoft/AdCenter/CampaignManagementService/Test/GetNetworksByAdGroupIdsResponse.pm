package Microsoft::AdCenter::CampaignManagementService::Test::GetNetworksByAdGroupIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetNetworksByAdGroupIdsResponse;

sub test_can_create_get_networks_by_ad_group_ids_response_and_set_all_fields : Test(2) {
    my $get_networks_by_ad_group_ids_response = Microsoft::AdCenter::CampaignManagementService::GetNetworksByAdGroupIdsResponse->new
        ->AdGroupNetworks('ad group networks')
    ;

    ok($get_networks_by_ad_group_ids_response);

    is($get_networks_by_ad_group_ids_response->AdGroupNetworks, 'ad group networks', 'can get ad group networks');
};

1;
