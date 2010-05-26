package Microsoft::AdCenter::CampaignManagementService::Test::Ad;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Ad;

sub test_can_create_ad_and_set_all_fields : Test(5) {
    my $ad = Microsoft::AdCenter::CampaignManagementService::Ad->new
        ->EditorialStatus('editorial status')
        ->Id('id')
        ->Status('status')
        ->Type('type')
    ;

    ok($ad);

    is($ad->EditorialStatus, 'editorial status', 'can get editorial status');
    is($ad->Id, 'id', 'can get id');
    is($ad->Status, 'status', 'can get status');
    is($ad->Type, 'type', 'can get type');
};

1;
