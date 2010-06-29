package Microsoft::AdCenter::CustomerManagementService::Test::AccountInfo;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::AccountInfo;

sub test_can_create_account_info_and_set_all_fields : Test(5) {
    my $account_info = Microsoft::AdCenter::CustomerManagementService::AccountInfo->new
        ->Id('id')
        ->Name('name')
        ->Number('number')
        ->Status('status')
    ;

    ok($account_info);

    is($account_info->Id, 'id', 'can get id');
    is($account_info->Name, 'name', 'can get name');
    is($account_info->Number, 'number', 'can get number');
    is($account_info->Status, 'status', 'can get status');
};

1;
