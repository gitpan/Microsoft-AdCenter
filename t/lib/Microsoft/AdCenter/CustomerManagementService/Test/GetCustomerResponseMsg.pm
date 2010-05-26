package Microsoft::AdCenter::CustomerManagementService::Test::GetCustomerResponseMsg;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::GetCustomerResponseMsg;

sub test_can_create_get_customer_response_msg_and_set_all_fields : Test(2) {
    my $get_customer_response_msg = Microsoft::AdCenter::CustomerManagementService::GetCustomerResponseMsg->new
        ->Customer('customer')
    ;

    ok($get_customer_response_msg);

    is($get_customer_response_msg->Customer, 'customer', 'can get customer');
};

1;
