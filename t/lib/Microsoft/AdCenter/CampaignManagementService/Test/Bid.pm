package Microsoft::AdCenter::CampaignManagementService::Test::Bid;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Bid;

sub test_can_create_bid_and_set_all_fields : Test(2) {
    my $bid = Microsoft::AdCenter::CampaignManagementService::Bid->new
        ->Amount('amount')
    ;

    ok($bid);

    is($bid->Amount, 'amount', 'can get amount');
};

1;
