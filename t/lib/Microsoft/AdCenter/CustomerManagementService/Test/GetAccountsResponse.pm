package Microsoft::AdCenter::CustomerManagementService::Test::GetAccountsResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetAccountsResponse;

sub test_can_create_get_accounts_response_and_set_all_fields : Test(2) {
    my $get_accounts_response = Microsoft::AdCenter::CustomerManagementService::GetAccountsResponse->new
        ->GetAccountsResult('get accounts result')
    ;

    ok($get_accounts_response);

    is($get_accounts_response->GetAccountsResult, 'get accounts result', 'can get get accounts result');
};

1;
