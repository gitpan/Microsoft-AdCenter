package Microsoft::AdCenter::CampaignManagementService::Test::PauseBehavioralBidsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::PauseBehavioralBidsResponse;

sub test_can_create_pause_behavioral_bids_response_and_set_all_fields : Test(1) {
    my $pause_behavioral_bids_response = Microsoft::AdCenter::CampaignManagementService::PauseBehavioralBidsResponse->new
    ;

    ok($pause_behavioral_bids_response);

};

1;
