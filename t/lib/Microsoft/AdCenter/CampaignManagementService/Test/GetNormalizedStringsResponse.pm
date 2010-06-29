package Microsoft::AdCenter::CampaignManagementService::Test::GetNormalizedStringsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetNormalizedStringsResponse;

sub test_can_create_get_normalized_strings_response_and_set_all_fields : Test(2) {
    my $get_normalized_strings_response = Microsoft::AdCenter::CampaignManagementService::GetNormalizedStringsResponse->new
        ->NormalizedStrings('normalized strings')
    ;

    ok($get_normalized_strings_response);

    is($get_normalized_strings_response->NormalizedStrings, 'normalized strings', 'can get normalized strings');
};

1;
