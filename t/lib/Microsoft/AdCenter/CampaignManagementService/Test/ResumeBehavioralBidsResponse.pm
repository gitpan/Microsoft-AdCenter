package Microsoft::AdCenter::CampaignManagementService::Test::ResumeBehavioralBidsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ResumeBehavioralBidsResponse;

sub test_can_create_resume_behavioral_bids_response_and_set_all_fields : Test(1) {
    my $resume_behavioral_bids_response = Microsoft::AdCenter::CampaignManagementService::ResumeBehavioralBidsResponse->new
    ;

    ok($resume_behavioral_bids_response);

};

1;
