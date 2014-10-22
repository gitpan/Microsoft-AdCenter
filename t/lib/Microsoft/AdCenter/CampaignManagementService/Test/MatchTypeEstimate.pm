package Microsoft::AdCenter::CampaignManagementService::Test::MatchTypeEstimate;
# Copyright (C) 2010 Xerxes Tsang
# This program is free software; you can redistribute it and/or modify it
# under the terms of Perl Artistic License.

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::MatchTypeEstimate;

sub test_can_create_match_type_estimate_and_set_all_fields : Test(4) {
    my $match_type_estimate = Microsoft::AdCenter::CampaignManagementService::MatchTypeEstimate->new
        ->MonthlyCost('monthly cost')
        ->MonthlyImpressions('monthly impressions')
        ->Position('position')
    ;

    ok($match_type_estimate);

    is($match_type_estimate->MonthlyCost, 'monthly cost', 'can get monthly cost');
    is($match_type_estimate->MonthlyImpressions, 'monthly impressions', 'can get monthly impressions');
    is($match_type_estimate->Position, 'position', 'can get position');
};

1;
