package Microsoft::AdCenter::CampaignManagementService::Test::CityTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::CityTarget;

sub test_can_create_city_target_and_set_all_fields : Test(2) {
    my $city_target = Microsoft::AdCenter::CampaignManagementService::CityTarget->new
        ->Bids('bids')
    ;

    ok($city_target);

    is($city_target->Bids, 'bids', 'can get bids');
};

1;
