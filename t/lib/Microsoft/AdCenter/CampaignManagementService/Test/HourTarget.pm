package Microsoft::AdCenter::CampaignManagementService::Test::HourTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::HourTarget;

sub test_can_create_hour_target_and_set_all_fields : Test(3) {
    my $hour_target = Microsoft::AdCenter::CampaignManagementService::HourTarget->new
        ->Bids('bids')
        ->TargetAllHours('target all hours')
    ;

    ok($hour_target);

    is($hour_target->Bids, 'bids', 'can get bids');
    is($hour_target->TargetAllHours, 'target all hours', 'can get target all hours');
};

1;
