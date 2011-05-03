package Microsoft::AdCenter::CampaignManagementService::Test::Step;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Step;

sub test_can_create_step_and_set_all_fields : Test(6) {
    my $step = Microsoft::AdCenter::CampaignManagementService::Step->new
        ->Id('id')
        ->Name('name')
        ->PositionNumber('position number')
        ->Script('script')
        ->Type('type')
    ;

    ok($step);

    is($step->Id, 'id', 'can get id');
    is($step->Name, 'name', 'can get name');
    is($step->PositionNumber, 'position number', 'can get position number');
    is($step->Script, 'script', 'can get script');
    is($step->Type, 'type', 'can get type');
};

1;
