package Microsoft::AdCenter::CampaignManagementService::Test::PauseAdsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::PauseAdsResponse;

sub test_can_create_pause_ads_response_and_set_all_fields : Test(1) {
    my $pause_ads_response = Microsoft::AdCenter::CampaignManagementService::PauseAdsResponse->new
    ;

    ok($pause_ads_response);

};

1;
