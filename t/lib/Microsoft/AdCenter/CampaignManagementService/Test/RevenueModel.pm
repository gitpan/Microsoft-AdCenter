package Microsoft::AdCenter::CampaignManagementService::Test::RevenueModel;
# Copyright (C) 2011 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::RevenueModel;

sub test_can_create_revenue_model_and_set_all_fields : Test(3) {
    my $revenue_model = Microsoft::AdCenter::CampaignManagementService::RevenueModel->new
        ->ConstantRevenueValue('constant revenue value')
        ->Type('type')
    ;

    ok($revenue_model);

    is($revenue_model->ConstantRevenueValue, 'constant revenue value', 'can get constant revenue value');
    is($revenue_model->Type, 'type', 'can get type');
};

1;
