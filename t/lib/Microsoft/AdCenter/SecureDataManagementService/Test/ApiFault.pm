package Microsoft::AdCenter::SecureDataManagementService::Test::ApiFault;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::SecureDataManagementService;
use Microsoft::AdCenter::SecureDataManagementService::ApiFault;

sub test_can_create_api_fault_and_set_all_fields : Test(2) {
    my $api_fault = Microsoft::AdCenter::SecureDataManagementService::ApiFault->new
        ->OperationErrors('operation errors')
    ;

    ok($api_fault);

    is($api_fault->OperationErrors, 'operation errors', 'can get operation errors');
};

1;
