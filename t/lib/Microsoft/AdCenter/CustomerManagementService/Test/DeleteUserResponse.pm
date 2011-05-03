package Microsoft::AdCenter::CustomerManagementService::Test::DeleteUserResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::DeleteUserResponse;

sub test_can_create_delete_user_response_and_set_all_fields : Test(1) {
    my $delete_user_response = Microsoft::AdCenter::CustomerManagementService::DeleteUserResponse->new
    ;

    ok($delete_user_response);

};

1;
