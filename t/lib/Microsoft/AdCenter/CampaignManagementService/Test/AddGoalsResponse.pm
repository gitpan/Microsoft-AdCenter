package Microsoft::AdCenter::CampaignManagementService::Test::AddGoalsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddGoalsResponse;

sub test_can_create_add_goals_response_and_set_all_fields : Test(2) {
    my $add_goals_response = Microsoft::AdCenter::CampaignManagementService::AddGoalsResponse->new
        ->GoalResults('goal results')
    ;

    ok($add_goals_response);

    is($add_goals_response->GoalResults, 'goal results', 'can get goal results');
};

1;
