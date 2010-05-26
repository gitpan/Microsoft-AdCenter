package Microsoft::AdCenter::CampaignManagementService::Test::AddTargetResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddTargetResponse;

sub test_can_create_add_target_response_and_set_all_fields : Test(2) {
    my $add_target_response = Microsoft::AdCenter::CampaignManagementService::AddTargetResponse->new
        ->TargetId('target id')
    ;

    ok($add_target_response);

    is($add_target_response->TargetId, 'target id', 'can get target id');
};

1;
