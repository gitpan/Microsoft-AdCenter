package Microsoft::AdCenter::CustomerManagementService::Test::GetUsersInfoResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetUsersInfoResponse;

sub test_can_create_get_users_info_response_and_set_all_fields : Test(2) {
    my $get_users_info_response = Microsoft::AdCenter::CustomerManagementService::GetUsersInfoResponse->new
        ->UsersInfo('users info')
    ;

    ok($get_users_info_response);

    is($get_users_info_response->UsersInfo, 'users info', 'can get users info');
};

1;
