package Microsoft::AdCenter::CampaignManagementService::Test::MetroAreaTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::MetroAreaTarget;

sub test_can_create_metro_area_target_and_set_all_fields : Test(2) {
    my $metro_area_target = Microsoft::AdCenter::CampaignManagementService::MetroAreaTarget->new
        ->Bids('bids')
    ;

    ok($metro_area_target);

    is($metro_area_target->Bids, 'bids', 'can get bids');
};

1;
