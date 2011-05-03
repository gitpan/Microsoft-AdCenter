package Microsoft::AdCenter::CampaignManagementService::Test::MetroAreaTarget;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::MetroAreaTarget;

sub test_can_create_metro_area_target_and_set_all_fields : Test(2) {
    my $metro_area_target = Microsoft::AdCenter::CampaignManagementService::MetroAreaTarget->new
        ->Bids('bids')
    ;

    ok($metro_area_target);

    is($metro_area_target->Bids, 'bids', 'can get bids');
};

1;
