package Microsoft::AdCenter::CustomerManagementService::Test::AddUserResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::AddUserResponse;

sub test_can_create_add_user_response_and_set_all_fields : Test(3) {
    my $add_user_response = Microsoft::AdCenter::CustomerManagementService::AddUserResponse->new
        ->CreateTime('2010-05-31T12:23:34')
        ->Id('id')
    ;

    ok($add_user_response);

    is($add_user_response->CreateTime, '2010-05-31T12:23:34', 'can get 2010-05-31T12:23:34');
    is($add_user_response->Id, 'id', 'can get id');
};

1;
