package Microsoft::AdCenter::CampaignManagementService::Test::SegmentTarget;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SegmentTarget;

sub test_can_create_segment_target_and_set_all_fields : Test(2) {
    my $segment_target = Microsoft::AdCenter::CampaignManagementService::SegmentTarget->new
        ->Bids('bids')
    ;

    ok($segment_target);

    is($segment_target->Bids, 'bids', 'can get bids');
};

1;
