package Microsoft::AdCenter::CampaignManagementService::Test::SetAnalyticsTypeResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SetAnalyticsTypeResponse;

sub test_can_create_set_analytics_type_response_and_set_all_fields : Test(1) {
    my $set_analytics_type_response = Microsoft::AdCenter::CampaignManagementService::SetAnalyticsTypeResponse->new
    ;

    ok($set_analytics_type_response);

};

1;
