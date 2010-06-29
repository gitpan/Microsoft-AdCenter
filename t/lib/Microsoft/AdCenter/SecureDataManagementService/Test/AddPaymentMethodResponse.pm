package Microsoft::AdCenter::SecureDataManagementService::Test::AddPaymentMethodResponse;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::SecureDataManagementService;
use Microsoft::AdCenter::SecureDataManagementService::AddPaymentMethodResponse;

sub test_can_create_add_payment_method_response_and_set_all_fields : Test(2) {
    my $add_payment_method_response = Microsoft::AdCenter::SecureDataManagementService::AddPaymentMethodResponse->new
        ->PaymentMethodId('payment method id')
    ;

    ok($add_payment_method_response);

    is($add_payment_method_response->PaymentMethodId, 'payment method id', 'can get payment method id');
};

1;
