package Microsoft::AdCenter::NotificationManagementService::Test::ApiUserAuthHeader;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::NotificationManagementService;
use Microsoft::AdCenter::NotificationManagementService::ApiUserAuthHeader;

sub test_can_create_api_user_auth_header_and_set_all_fields : Test(4) {
    my $api_user_auth_header = Microsoft::AdCenter::NotificationManagementService::ApiUserAuthHeader->new
        ->Password('password')
        ->UserAccessKey('user access key')
        ->UserName('user name')
    ;

    ok($api_user_auth_header);

    is($api_user_auth_header->Password, 'password', 'can get password');
    is($api_user_auth_header->UserAccessKey, 'user access key', 'can get user access key');
    is($api_user_auth_header->UserName, 'user name', 'can get user name');
};

1;
