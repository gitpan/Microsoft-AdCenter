package Microsoft::AdCenter::SecureDataManagementService::Test::CreditCardPaymentMethod;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::SecureDataManagementService;
use Microsoft::AdCenter::SecureDataManagementService::CreditCardPaymentMethod;

sub test_can_create_credit_card_payment_method_and_set_all_fields : Test(8) {
    my $credit_card_payment_method = Microsoft::AdCenter::SecureDataManagementService::CreditCardPaymentMethod->new
        ->ExpirationDate('expiration date')
        ->FirstName('first name')
        ->LastName('last name')
        ->MiddleInitial('middle initial')
        ->Number('number')
        ->SecurityCode('security code')
        ->Type('type')
    ;

    ok($credit_card_payment_method);

    is($credit_card_payment_method->ExpirationDate, 'expiration date', 'can get expiration date');
    is($credit_card_payment_method->FirstName, 'first name', 'can get first name');
    is($credit_card_payment_method->LastName, 'last name', 'can get last name');
    is($credit_card_payment_method->MiddleInitial, 'middle initial', 'can get middle initial');
    is($credit_card_payment_method->Number, 'number', 'can get number');
    is($credit_card_payment_method->SecurityCode, 'security code', 'can get security code');
    is($credit_card_payment_method->Type, 'type', 'can get type');
};

1;
