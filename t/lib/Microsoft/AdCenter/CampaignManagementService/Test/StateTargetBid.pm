package Microsoft::AdCenter::CampaignManagementService::Test::StateTargetBid;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::StateTargetBid;

sub test_can_create_state_target_bid_and_set_all_fields : Test(3) {
    my $state_target_bid = Microsoft::AdCenter::CampaignManagementService::StateTargetBid->new
        ->IncrementalBid('incremental bid')
        ->State('state')
    ;

    ok($state_target_bid);

    is($state_target_bid->IncrementalBid, 'incremental bid', 'can get incremental bid');
    is($state_target_bid->State, 'state', 'can get state');
};

1;
