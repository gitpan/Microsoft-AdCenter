package Microsoft::AdCenter::V8::CustomerManagementService::Test::UserInfo;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CustomerManagementService;
use Microsoft::AdCenter::V8::CustomerManagementService::UserInfo;

sub test_can_create_user_info_and_set_all_fields : Test(3) {
    my $user_info = Microsoft::AdCenter::V8::CustomerManagementService::UserInfo->new
        ->Id('id')
        ->UserName('user name')
    ;

    ok($user_info);

    is($user_info->Id, 'id', 'can get id');
    is($user_info->UserName, 'user name', 'can get user name');
};

1;
