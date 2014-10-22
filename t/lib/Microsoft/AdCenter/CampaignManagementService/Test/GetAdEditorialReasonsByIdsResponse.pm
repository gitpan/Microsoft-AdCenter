package Microsoft::AdCenter::CampaignManagementService::Test::GetAdEditorialReasonsByIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetAdEditorialReasonsByIdsResponse;

sub test_can_create_get_ad_editorial_reasons_by_ids_response_and_set_all_fields : Test(2) {
    my $get_ad_editorial_reasons_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetAdEditorialReasonsByIdsResponse->new
        ->EditorialReasons('editorial reasons')
    ;

    ok($get_ad_editorial_reasons_by_ids_response);

    is($get_ad_editorial_reasons_by_ids_response->EditorialReasons, 'editorial reasons', 'can get editorial reasons');
};

1;
