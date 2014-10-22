package Microsoft::AdCenter::CampaignManagementService::Test::DeleteAdGroupsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteAdGroupsResponse;

sub test_can_create_delete_ad_groups_response_and_set_all_fields : Test(1) {
    my $delete_ad_groups_response = Microsoft::AdCenter::CampaignManagementService::DeleteAdGroupsResponse->new
    ;

    ok($delete_ad_groups_response);

};

1;
