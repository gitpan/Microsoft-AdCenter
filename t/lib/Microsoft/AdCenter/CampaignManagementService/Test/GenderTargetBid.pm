package Microsoft::AdCenter::CampaignManagementService::Test::GenderTargetBid;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GenderTargetBid;

sub test_can_create_gender_target_bid_and_set_all_fields : Test(3) {
    my $gender_target_bid = Microsoft::AdCenter::CampaignManagementService::GenderTargetBid->new
        ->Gender('gender')
        ->IncrementalBid('incremental bid')
    ;

    ok($gender_target_bid);

    is($gender_target_bid->Gender, 'gender', 'can get gender');
    is($gender_target_bid->IncrementalBid, 'incremental bid', 'can get incremental bid');
};

1;
