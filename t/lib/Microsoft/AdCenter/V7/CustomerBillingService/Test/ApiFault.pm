package Microsoft::AdCenter::V7::CustomerBillingService::Test::ApiFault;
# Copyright (C) 2012 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V7::CustomerBillingService;
use Microsoft::AdCenter::V7::CustomerBillingService::ApiFault;

sub test_can_create_api_fault_and_set_all_fields : Test(2) {
    my $api_fault = Microsoft::AdCenter::V7::CustomerBillingService::ApiFault->new
        ->OperationErrors('operation errors')
    ;

    ok($api_fault);

    is($api_fault->OperationErrors, 'operation errors', 'can get operation errors');
};

1;
