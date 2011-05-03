package Microsoft::AdCenter::CampaignManagementService::Test::UpdateTargetsInLibraryResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateTargetsInLibraryResponse;

sub test_can_create_update_targets_in_library_response_and_set_all_fields : Test(1) {
    my $update_targets_in_library_response = Microsoft::AdCenter::CampaignManagementService::UpdateTargetsInLibraryResponse->new
    ;

    ok($update_targets_in_library_response);

};

1;
