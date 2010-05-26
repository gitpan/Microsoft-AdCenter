package Microsoft::AdCenter::Test::ReportingService;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::ReportingService;

sub test_can_create_reporting_service_and_set_all_fields : Test(9) {
    my $reporting_service = Microsoft::AdCenter::ReportingService->new
        ->EndPoint('somewhere')
        ->ApplicationToken('application token')
        ->CustomerAccountId('customer account id')
        ->CustomerId('customer id')
        ->DeveloperToken('developer token')
        ->Password('password')
        ->UserName('user name')
        ->TrackingId('tracking id')
    ;

    ok($reporting_service);

    is($reporting_service->EndPoint, 'somewhere', 'can get end point');
    is($reporting_service->ApplicationToken, 'application token', 'can get application token');
    is($reporting_service->CustomerAccountId, 'customer account id', 'can get customer account id');
    is($reporting_service->CustomerId, 'customer id', 'can get customer id');
    is($reporting_service->DeveloperToken, 'developer token', 'can get developer token');
    is($reporting_service->Password, 'password', 'can get password');
    is($reporting_service->UserName, 'user name', 'can get user name');
    is($reporting_service->TrackingId, 'tracking id', 'can get tracking id');
};

1;
