package Microsoft::AdCenter::V7::CampaignManagementService::Test::GetAccountMigrationStatusesResponse;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CampaignManagementService;
use Microsoft::AdCenter::V7::CampaignManagementService::GetAccountMigrationStatusesResponse;

sub test_can_create_get_account_migration_statuses_response_and_set_all_fields : Test(2) {
    my $get_account_migration_statuses_response = Microsoft::AdCenter::V7::CampaignManagementService::GetAccountMigrationStatusesResponse->new
        ->MigrationStatuses('migration statuses')
    ;

    ok($get_account_migration_statuses_response);

    is($get_account_migration_statuses_response->MigrationStatuses, 'migration statuses', 'can get migration statuses');
};

1;
