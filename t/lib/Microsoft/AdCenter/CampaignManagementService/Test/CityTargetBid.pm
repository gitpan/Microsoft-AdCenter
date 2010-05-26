package Microsoft::AdCenter::CampaignManagementService::Test::CityTargetBid;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::CityTargetBid;

sub test_can_create_city_target_bid_and_set_all_fields : Test(3) {
    my $city_target_bid = Microsoft::AdCenter::CampaignManagementService::CityTargetBid->new
        ->City('city')
        ->IncrementalBid('incremental bid')
    ;

    ok($city_target_bid);

    is($city_target_bid->City, 'city', 'can get city');
    is($city_target_bid->IncrementalBid, 'incremental bid', 'can get incremental bid');
};

1;
