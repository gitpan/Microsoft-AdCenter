package Microsoft::AdCenter::CampaignManagementService::Test::AgeTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AgeTarget;

sub test_can_create_age_target_and_set_all_fields : Test(2) {
    my $age_target = Microsoft::AdCenter::CampaignManagementService::AgeTarget->new
        ->Bids('bids')
    ;

    ok($age_target);

    is($age_target->Bids, 'bids', 'can get bids');
};

1;
