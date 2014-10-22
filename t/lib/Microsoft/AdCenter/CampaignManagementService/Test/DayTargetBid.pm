package Microsoft::AdCenter::CampaignManagementService::Test::DayTargetBid;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DayTargetBid;

sub test_can_create_day_target_bid_and_set_all_fields : Test(3) {
    my $day_target_bid = Microsoft::AdCenter::CampaignManagementService::DayTargetBid->new
        ->Day('day')
        ->IncrementalBid('incremental bid')
    ;

    ok($day_target_bid);

    is($day_target_bid->Day, 'day', 'can get day');
    is($day_target_bid->IncrementalBid, 'incremental bid', 'can get incremental bid');
};

1;
