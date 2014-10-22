package Microsoft::AdCenter::V8::CustomerManagementService::Test::DeleteCustomerResponse;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::V8::CustomerManagementService;
use Microsoft::AdCenter::V8::CustomerManagementService::DeleteCustomerResponse;

sub test_can_create_delete_customer_response_and_set_all_fields : Test(1) {
    my $delete_customer_response = Microsoft::AdCenter::V8::CustomerManagementService::DeleteCustomerResponse->new
    ;

    ok($delete_customer_response);

};

1;
