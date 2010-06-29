package Microsoft::AdCenter::SecureDataManagementService::Test::PaymentMethod;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::SecureDataManagementService;
use Microsoft::AdCenter::SecureDataManagementService::PaymentMethod;

sub test_can_create_payment_method_and_set_all_fields : Test(5) {
    my $payment_method = Microsoft::AdCenter::SecureDataManagementService::PaymentMethod->new
        ->Address('address')
        ->CustomerId('customer id')
        ->Id('id')
        ->TimeStamp('time stamp')
    ;

    ok($payment_method);

    is($payment_method->Address, 'address', 'can get address');
    is($payment_method->CustomerId, 'customer id', 'can get customer id');
    is($payment_method->Id, 'id', 'can get id');
    is($payment_method->TimeStamp, 'time stamp', 'can get time stamp');
};

1;
