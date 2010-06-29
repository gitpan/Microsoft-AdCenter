package Microsoft::AdCenter::Test::SecureDataManagementService;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::SecureDataManagementService;

sub test_can_create_secure_data_management_service_and_set_all_fields : Test(7) {
    my $secure_data_management_service = Microsoft::AdCenter::SecureDataManagementService->new
        ->EndPoint('somewhere')
        ->ApplicationToken('application token')
        ->DeveloperToken('developer token')
        ->Password('password')
        ->UserName('user name')
        ->TrackingId('tracking id')
    ;

    ok($secure_data_management_service);

    is($secure_data_management_service->EndPoint, 'somewhere', 'can get end point');
    is($secure_data_management_service->ApplicationToken, 'application token', 'can get application token');
    is($secure_data_management_service->DeveloperToken, 'developer token', 'can get developer token');
    is($secure_data_management_service->Password, 'password', 'can get password');
    is($secure_data_management_service->UserName, 'user name', 'can get user name');
    is($secure_data_management_service->TrackingId, 'tracking id', 'can get tracking id');
};

1;
