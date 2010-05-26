package Microsoft::AdCenter::CustomerManagementService::Test::UpdateCustomerResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::UpdateCustomerResponse;

sub test_can_create_update_customer_response_and_set_all_fields : Test(2) {
    my $update_customer_response = Microsoft::AdCenter::CustomerManagementService::UpdateCustomerResponse->new
        ->UpdateCustomerResult('update customer result')
    ;

    ok($update_customer_response);

    is($update_customer_response->UpdateCustomerResult, 'update customer result', 'can get update customer result');
};

1;
