package Microsoft::AdCenter::CampaignManagementService::Test::AddCampaignsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddCampaignsResponse;

sub test_can_create_add_campaigns_response_and_set_all_fields : Test(2) {
    my $add_campaigns_response = Microsoft::AdCenter::CampaignManagementService::AddCampaignsResponse->new
        ->CampaignIds('campaign ids')
    ;

    ok($add_campaigns_response);

    is($add_campaigns_response->CampaignIds, 'campaign ids', 'can get campaign ids');
};

1;
