package Microsoft::AdCenter::CampaignManagementService::Test::DeleteTargetResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteTargetResponse;

sub test_can_create_delete_target_response_and_set_all_fields : Test(1) {
    my $delete_target_response = Microsoft::AdCenter::CampaignManagementService::DeleteTargetResponse->new
    ;

    ok($delete_target_response);

};

1;
