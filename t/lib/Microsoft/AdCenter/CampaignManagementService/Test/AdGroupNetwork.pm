package Microsoft::AdCenter::CampaignManagementService::Test::AdGroupNetwork;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AdGroupNetwork;

sub test_can_create_ad_group_network_and_set_all_fields : Test(3) {
    my $ad_group_network = Microsoft::AdCenter::CampaignManagementService::AdGroupNetwork->new
        ->AdGroupId('ad group id')
        ->Network('network')
    ;

    ok($ad_group_network);

    is($ad_group_network->AdGroupId, 'ad group id', 'can get ad group id');
    is($ad_group_network->Network, 'network', 'can get network');
};

1;
