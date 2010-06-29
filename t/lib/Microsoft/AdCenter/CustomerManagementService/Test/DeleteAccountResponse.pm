package Microsoft::AdCenter::CustomerManagementService::Test::DeleteAccountResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::DeleteAccountResponse;

sub test_can_create_delete_account_response_and_set_all_fields : Test(1) {
    my $delete_account_response = Microsoft::AdCenter::CustomerManagementService::DeleteAccountResponse->new
    ;

    ok($delete_account_response);

};

1;
