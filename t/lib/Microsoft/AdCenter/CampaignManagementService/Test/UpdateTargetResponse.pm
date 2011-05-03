package Microsoft::AdCenter::CampaignManagementService::Test::UpdateTargetResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateTargetResponse;

sub test_can_create_update_target_response_and_set_all_fields : Test(1) {
    my $update_target_response = Microsoft::AdCenter::CampaignManagementService::UpdateTargetResponse->new
    ;

    ok($update_target_response);

};

1;
