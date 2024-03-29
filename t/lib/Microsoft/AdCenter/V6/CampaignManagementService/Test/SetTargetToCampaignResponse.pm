package Microsoft::AdCenter::V6::CampaignManagementService::Test::SetTargetToCampaignResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CampaignManagementService;
use Microsoft::AdCenter::V6::CampaignManagementService::SetTargetToCampaignResponse;

sub test_can_create_set_target_to_campaign_response_and_set_all_fields : Test(1) {
    my $set_target_to_campaign_response = Microsoft::AdCenter::V6::CampaignManagementService::SetTargetToCampaignResponse->new
    ;

    ok($set_target_to_campaign_response);

};

1;
