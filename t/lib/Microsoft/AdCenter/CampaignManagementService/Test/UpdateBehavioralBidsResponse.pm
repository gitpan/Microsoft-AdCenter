package Microsoft::AdCenter::CampaignManagementService::Test::UpdateBehavioralBidsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateBehavioralBidsResponse;

sub test_can_create_update_behavioral_bids_response_and_set_all_fields : Test(1) {
    my $update_behavioral_bids_response = Microsoft::AdCenter::CampaignManagementService::UpdateBehavioralBidsResponse->new
    ;

    ok($update_behavioral_bids_response);

};

1;
