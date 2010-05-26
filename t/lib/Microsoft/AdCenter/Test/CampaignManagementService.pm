package Microsoft::AdCenter::Test::CampaignManagementService;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;

sub test_can_create_campaign_management_service_and_set_all_fields : Test(9) {
    my $campaign_management_service = Microsoft::AdCenter::CampaignManagementService->new
        ->EndPoint('somewhere')
        ->ApplicationToken('application token')
        ->CustomerAccountId('customer account id')
        ->CustomerId('customer id')
        ->DeveloperToken('developer token')
        ->Password('password')
        ->UserName('user name')
        ->TrackingId('tracking id')
    ;

    ok($campaign_management_service);

    is($campaign_management_service->EndPoint, 'somewhere', 'can get end point');
    is($campaign_management_service->ApplicationToken, 'application token', 'can get application token');
    is($campaign_management_service->CustomerAccountId, 'customer account id', 'can get customer account id');
    is($campaign_management_service->CustomerId, 'customer id', 'can get customer id');
    is($campaign_management_service->DeveloperToken, 'developer token', 'can get developer token');
    is($campaign_management_service->Password, 'password', 'can get password');
    is($campaign_management_service->UserName, 'user name', 'can get user name');
    is($campaign_management_service->TrackingId, 'tracking id', 'can get tracking id');
};

1;
