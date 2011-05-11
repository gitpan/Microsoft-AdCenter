package Microsoft::AdCenter::V7::CampaignManagementService::Test::BusinessTarget;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::BusinessTarget;

sub test_can_create_business_target_and_set_all_fields : Test(2) {
    my $business_target = Microsoft::AdCenter::V7::CampaignManagementService::BusinessTarget->new
        ->Bids('bids')
    ;

    ok($business_target);

    is($business_target->Bids, 'bids', 'can get bids');
};

1;