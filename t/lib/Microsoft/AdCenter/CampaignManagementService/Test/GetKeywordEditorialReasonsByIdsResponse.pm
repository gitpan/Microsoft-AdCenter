package Microsoft::AdCenter::CampaignManagementService::Test::GetKeywordEditorialReasonsByIdsResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetKeywordEditorialReasonsByIdsResponse;

sub test_can_create_get_keyword_editorial_reasons_by_ids_response_and_set_all_fields : Test(2) {
    my $get_keyword_editorial_reasons_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetKeywordEditorialReasonsByIdsResponse->new
        ->EditorialReasons('editorial reasons')
    ;

    ok($get_keyword_editorial_reasons_by_ids_response);

    is($get_keyword_editorial_reasons_by_ids_response->EditorialReasons, 'editorial reasons', 'can get editorial reasons');
};

1;
