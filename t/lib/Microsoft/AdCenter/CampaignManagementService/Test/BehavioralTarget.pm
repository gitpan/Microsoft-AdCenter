package Microsoft::AdCenter::CampaignManagementService::Test::BehavioralTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::BehavioralTarget;

sub test_can_create_behavioral_target_and_set_all_fields : Test(2) {
    my $behavioral_target = Microsoft::AdCenter::CampaignManagementService::BehavioralTarget->new
        ->Bids('bids')
    ;

    ok($behavioral_target);

    is($behavioral_target->Bids, 'bids', 'can get bids');
};

1;
