package Microsoft::AdCenter::CustomerManagementService::Test::GetAccountsInfoResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetAccountsInfoResponse;

sub test_can_create_get_accounts_info_response_and_set_all_fields : Test(2) {
    my $get_accounts_info_response = Microsoft::AdCenter::CustomerManagementService::GetAccountsInfoResponse->new
        ->AccountsInfo('accounts info')
    ;

    ok($get_accounts_info_response);

    is($get_accounts_info_response->AccountsInfo, 'accounts info', 'can get accounts info');
};

1;
