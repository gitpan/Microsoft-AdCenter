package Microsoft::AdCenter::V8::CampaignManagementService::Test::UpdateDeviceOSTargetsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CampaignManagementService;
use Microsoft::AdCenter::V8::CampaignManagementService::UpdateDeviceOSTargetsResponse;

sub test_can_create_update_device_ostargets_response_and_set_all_fields : Test(1) {
    my $update_device_ostargets_response = Microsoft::AdCenter::V8::CampaignManagementService::UpdateDeviceOSTargetsResponse->new
    ;

    ok($update_device_ostargets_response);

};

1;
