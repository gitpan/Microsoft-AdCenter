package Microsoft::AdCenter::CampaignManagementService::Test::AccountAnalyticsType;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AccountAnalyticsType;

sub test_can_create_account_analytics_type_and_set_all_fields : Test(3) {
    my $account_analytics_type = Microsoft::AdCenter::CampaignManagementService::AccountAnalyticsType->new
        ->AccountId('account id')
        ->Type('type')
    ;

    ok($account_analytics_type);

    is($account_analytics_type->AccountId, 'account id', 'can get account id');
    is($account_analytics_type->Type, 'type', 'can get type');
};

1;
