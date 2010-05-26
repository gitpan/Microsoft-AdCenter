package Microsoft::AdCenter::CampaignManagementService::Test::DeleteBehavioralBidsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteBehavioralBidsResponse;

sub test_can_create_delete_behavioral_bids_response_and_set_all_fields : Test(1) {
    my $delete_behavioral_bids_response = Microsoft::AdCenter::CampaignManagementService::DeleteBehavioralBidsResponse->new
    ;

    ok($delete_behavioral_bids_response);

};

1;
