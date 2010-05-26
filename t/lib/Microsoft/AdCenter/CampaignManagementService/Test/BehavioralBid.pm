package Microsoft::AdCenter::CampaignManagementService::Test::BehavioralBid;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::BehavioralBid;

sub test_can_create_behavioral_bid_and_set_all_fields : Test(6) {
    my $behavioral_bid = Microsoft::AdCenter::CampaignManagementService::BehavioralBid->new
        ->Bid('bid')
        ->Id('id')
        ->Name('name')
        ->SegmentId('segment id')
        ->Status('status')
    ;

    ok($behavioral_bid);

    is($behavioral_bid->Bid, 'bid', 'can get bid');
    is($behavioral_bid->Id, 'id', 'can get id');
    is($behavioral_bid->Name, 'name', 'can get name');
    is($behavioral_bid->SegmentId, 'segment id', 'can get segment id');
    is($behavioral_bid->Status, 'status', 'can get status');
};

1;
