package Microsoft::AdCenter::CampaignManagementService::Test::GetBusinessesByIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetBusinessesByIdsResponse;

sub test_can_create_get_businesses_by_ids_response_and_set_all_fields : Test(2) {
    my $get_businesses_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetBusinessesByIdsResponse->new
        ->Businesses('businesses')
    ;

    ok($get_businesses_by_ids_response);

    is($get_businesses_by_ids_response->Businesses, 'businesses', 'can get businesses');
};

1;
