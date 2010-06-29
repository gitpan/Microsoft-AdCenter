package Microsoft::AdCenter::CustomerManagementService::Test::GetAccountResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetAccountResponse;

sub test_can_create_get_account_response_and_set_all_fields : Test(2) {
    my $get_account_response = Microsoft::AdCenter::CustomerManagementService::GetAccountResponse->new
        ->Account('account')
    ;

    ok($get_account_response);

    is($get_account_response->Account, 'account', 'can get account');
};

1;
