package Microsoft::AdCenter::CustomerBillingService::Test::GetInsertionOrdersByAccountResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerBillingService;
use Microsoft::AdCenter::CustomerBillingService::GetInsertionOrdersByAccountResponse;

sub test_can_create_get_insertion_orders_by_account_response_and_set_all_fields : Test(2) {
    my $get_insertion_orders_by_account_response = Microsoft::AdCenter::CustomerBillingService::GetInsertionOrdersByAccountResponse->new
        ->InsertionOrders('insertion orders')
    ;

    ok($get_insertion_orders_by_account_response);

    is($get_insertion_orders_by_account_response->InsertionOrders, 'insertion orders', 'can get insertion orders');
};

1;
