package Microsoft::AdCenter::CampaignManagementService::Test::StateTarget;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::StateTarget;

sub test_can_create_state_target_and_set_all_fields : Test(2) {
    my $state_target = Microsoft::AdCenter::CampaignManagementService::StateTarget->new
        ->Bids('bids')
    ;

    ok($state_target);

    is($state_target->Bids, 'bids', 'can get bids');
};

1;
