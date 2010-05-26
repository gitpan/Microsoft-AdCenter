package Microsoft::AdCenter::CampaignManagementService::Test::ImpressionsPerDayRange;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ImpressionsPerDayRange;

sub test_can_create_impressions_per_day_range_and_set_all_fields : Test(3) {
    my $impressions_per_day_range = Microsoft::AdCenter::CampaignManagementService::ImpressionsPerDayRange->new
        ->Maximum('maximum')
        ->Minimum('minimum')
    ;

    ok($impressions_per_day_range);

    is($impressions_per_day_range->Maximum, 'maximum', 'can get maximum');
    is($impressions_per_day_range->Minimum, 'minimum', 'can get minimum');
};

1;
