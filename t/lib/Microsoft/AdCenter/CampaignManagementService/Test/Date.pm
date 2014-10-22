package Microsoft::AdCenter::CampaignManagementService::Test::Date;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::Date;

sub test_can_create_date_and_set_all_fields : Test(4) {
    my $date = Microsoft::AdCenter::CampaignManagementService::Date->new
        ->Day('day')
        ->Month('month')
        ->Year('year')
    ;

    ok($date);

    is($date->Day, 'day', 'can get day');
    is($date->Month, 'month', 'can get month');
    is($date->Year, 'year', 'can get year');
};

1;
