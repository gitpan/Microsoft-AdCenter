package Microsoft::AdCenter::CampaignManagementService::Test::BusinessTargetBid;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::BusinessTargetBid;

sub test_can_create_business_target_bid_and_set_all_fields : Test(4) {
    my $business_target_bid = Microsoft::AdCenter::CampaignManagementService::BusinessTargetBid->new
        ->BusinessId('business id')
        ->IncrementalBid('incremental bid')
        ->Radius('radius')
    ;

    ok($business_target_bid);

    is($business_target_bid->BusinessId, 'business id', 'can get business id');
    is($business_target_bid->IncrementalBid, 'incremental bid', 'can get incremental bid');
    is($business_target_bid->Radius, 'radius', 'can get radius');
};

1;
