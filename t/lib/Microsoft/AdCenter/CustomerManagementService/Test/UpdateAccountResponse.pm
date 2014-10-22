package Microsoft::AdCenter::CustomerManagementService::Test::UpdateAccountResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::UpdateAccountResponse;

sub test_can_create_update_account_response_and_set_all_fields : Test(2) {
    my $update_account_response = Microsoft::AdCenter::CustomerManagementService::UpdateAccountResponse->new
        ->LastModifiedTime('2010-05-31T12:23:34')
    ;

    ok($update_account_response);

    is($update_account_response->LastModifiedTime, '2010-05-31T12:23:34', 'can get 2010-05-31T12:23:34');
};

1;
