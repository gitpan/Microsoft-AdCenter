package Microsoft::AdCenter::V6::CampaignManagementService::Test::GetTargetsInfoFromLibraryResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V6::CampaignManagementService;
use Microsoft::AdCenter::V6::CampaignManagementService::GetTargetsInfoFromLibraryResponse;

sub test_can_create_get_targets_info_from_library_response_and_set_all_fields : Test(2) {
    my $get_targets_info_from_library_response = Microsoft::AdCenter::V6::CampaignManagementService::GetTargetsInfoFromLibraryResponse->new
        ->TargetsInfo('targets info')
    ;

    ok($get_targets_info_from_library_response);

    is($get_targets_info_from_library_response->TargetsInfo, 'targets info', 'can get targets info');
};

1;
