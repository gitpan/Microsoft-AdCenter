package Microsoft::AdCenter::CampaignManagementService::Test::DeleteGoalsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteGoalsResponse;

sub test_can_create_delete_goals_response_and_set_all_fields : Test(1) {
    my $delete_goals_response = Microsoft::AdCenter::CampaignManagementService::DeleteGoalsResponse->new
    ;

    ok($delete_goals_response);

};

1;
