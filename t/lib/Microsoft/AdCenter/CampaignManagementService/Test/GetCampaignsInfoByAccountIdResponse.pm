package Microsoft::AdCenter::CampaignManagementService::Test::GetCampaignsInfoByAccountIdResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetCampaignsInfoByAccountIdResponse;

sub test_can_create_get_campaigns_info_by_account_id_response_and_set_all_fields : Test(2) {
    my $get_campaigns_info_by_account_id_response = Microsoft::AdCenter::CampaignManagementService::GetCampaignsInfoByAccountIdResponse->new
        ->CampaignsInfo('campaigns info')
    ;

    ok($get_campaigns_info_by_account_id_response);

    is($get_campaigns_info_by_account_id_response->CampaignsInfo, 'campaigns info', 'can get campaigns info');
};

1;
