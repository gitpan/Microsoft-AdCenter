package Microsoft::AdCenter::CustomerManagementService::Test::GetCustomerResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetCustomerResponse;

sub test_can_create_get_customer_response_and_set_all_fields : Test(2) {
    my $get_customer_response = Microsoft::AdCenter::CustomerManagementService::GetCustomerResponse->new
        ->Customer('customer')
    ;

    ok($get_customer_response);

    is($get_customer_response->Customer, 'customer', 'can get customer');
};

1;
