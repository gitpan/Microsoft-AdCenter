package Microsoft::AdCenter::V6::CampaignManagementService::Test::UpdateBusinessesResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CampaignManagementService;
use Microsoft::AdCenter::V6::CampaignManagementService::UpdateBusinessesResponse;

sub test_can_create_update_businesses_response_and_set_all_fields : Test(1) {
    my $update_businesses_response = Microsoft::AdCenter::V6::CampaignManagementService::UpdateBusinessesResponse->new
    ;

    ok($update_businesses_response);

};

1;
