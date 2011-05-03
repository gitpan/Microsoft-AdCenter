package Microsoft::AdCenter::CustomerManagementService::Test::UpdateUserRolesResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::UpdateUserRolesResponse;

sub test_can_create_update_user_roles_response_and_set_all_fields : Test(2) {
    my $update_user_roles_response = Microsoft::AdCenter::CustomerManagementService::UpdateUserRolesResponse->new
        ->LastModifiedTime('2010-05-31T12:23:34')
    ;

    ok($update_user_roles_response);

    is($update_user_roles_response->LastModifiedTime, '2010-05-31T12:23:34', 'can get 2010-05-31T12:23:34');
};

1;
