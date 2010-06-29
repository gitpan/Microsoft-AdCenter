package Microsoft::AdCenter::Test::CustomerManagementService;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CustomerManagementService;

sub test_can_create_customer_management_service_and_set_all_fields : Test(7) {
    my $customer_management_service = Microsoft::AdCenter::CustomerManagementService->new
        ->EndPoint('somewhere')
        ->ApplicationToken('application token')
        ->DeveloperToken('developer token')
        ->Password('password')
        ->UserName('user name')
        ->TrackingId('tracking id')
    ;

    ok($customer_management_service);

    is($customer_management_service->EndPoint, 'somewhere', 'can get end point');
    is($customer_management_service->ApplicationToken, 'application token', 'can get application token');
    is($customer_management_service->DeveloperToken, 'developer token', 'can get developer token');
    is($customer_management_service->Password, 'password', 'can get password');
    is($customer_management_service->UserName, 'user name', 'can get user name');
    is($customer_management_service->TrackingId, 'tracking id', 'can get tracking id');
};

1;
