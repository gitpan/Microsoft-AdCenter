package Microsoft::AdCenter::CampaignManagementService::Test::AddAdGroupsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddAdGroupsResponse;

sub test_can_create_add_ad_groups_response_and_set_all_fields : Test(2) {
    my $add_ad_groups_response = Microsoft::AdCenter::CampaignManagementService::AddAdGroupsResponse->new
        ->AdGroupIds('ad group ids')
    ;

    ok($add_ad_groups_response);

    is($add_ad_groups_response->AdGroupIds, 'ad group ids', 'can get ad group ids');
};

1;
