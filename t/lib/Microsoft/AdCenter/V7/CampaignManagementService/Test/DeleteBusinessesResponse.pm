package Microsoft::AdCenter::V7::CampaignManagementService::Test::DeleteBusinessesResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::DeleteBusinessesResponse;

sub test_can_create_delete_businesses_response_and_set_all_fields : Test(1) {
    my $delete_businesses_response = Microsoft::AdCenter::V7::CampaignManagementService::DeleteBusinessesResponse->new
    ;

    ok($delete_businesses_response);

};

1;
