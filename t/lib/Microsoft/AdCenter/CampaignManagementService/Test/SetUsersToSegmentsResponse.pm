package Microsoft::AdCenter::CampaignManagementService::Test::SetUsersToSegmentsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SetUsersToSegmentsResponse;

sub test_can_create_set_users_to_segments_response_and_set_all_fields : Test(1) {
    my $set_users_to_segments_response = Microsoft::AdCenter::CampaignManagementService::SetUsersToSegmentsResponse->new
    ;

    ok($set_users_to_segments_response);

};

1;
