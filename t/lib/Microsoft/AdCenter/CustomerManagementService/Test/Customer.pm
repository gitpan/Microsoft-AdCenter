package Microsoft::AdCenter::CustomerManagementService::Test::Customer;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;
use Microsoft::AdCenter::CustomerManagementService::Customer;

sub test_can_create_customer_and_set_all_fields : Test(12) {
    my $customer = Microsoft::AdCenter::CustomerManagementService::Customer->new
        ->CustomerAddress('customer address')
        ->FinancialStatus('financial status')
        ->Id('id')
        ->Industry('industry')
        ->LastModifiedByUserId('last modified by user id')
        ->LastModifiedTime('2010-05-31T12:23:34')
        ->Market('market')
        ->Name('name')
        ->ServiceLevel('service level')
        ->Status('status')
        ->TimeStamp('time stamp')
    ;

    ok($customer);

    is($customer->CustomerAddress, 'customer address', 'can get customer address');
    is($customer->FinancialStatus, 'financial status', 'can get financial status');
    is($customer->Id, 'id', 'can get id');
    is($customer->Industry, 'industry', 'can get industry');
    is($customer->LastModifiedByUserId, 'last modified by user id', 'can get last modified by user id');
    is($customer->LastModifiedTime, '2010-05-31T12:23:34', 'can get 2010-05-31T12:23:34');
    is($customer->Market, 'market', 'can get market');
    is($customer->Name, 'name', 'can get name');
    is($customer->ServiceLevel, 'service level', 'can get service level');
    is($customer->Status, 'status', 'can get status');
    is($customer->TimeStamp, 'time stamp', 'can get time stamp');
};

1;
