package Microsoft::AdCenter::CampaignManagementService::Test::GenderTarget;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GenderTarget;

sub test_can_create_gender_target_and_set_all_fields : Test(2) {
    my $gender_target = Microsoft::AdCenter::CampaignManagementService::GenderTarget->new
        ->Bids('bids')
    ;

    ok($gender_target);

    is($gender_target->Bids, 'bids', 'can get bids');
};

1;
