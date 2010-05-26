package Microsoft::AdCenter::CampaignManagementService::Test::AddBehavioralBidsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddBehavioralBidsResponse;

sub test_can_create_add_behavioral_bids_response_and_set_all_fields : Test(2) {
    my $add_behavioral_bids_response = Microsoft::AdCenter::CampaignManagementService::AddBehavioralBidsResponse->new
        ->BehavioralBidIds('behavioral bid ids')
    ;

    ok($add_behavioral_bids_response);

    is($add_behavioral_bids_response->BehavioralBidIds, 'behavioral bid ids', 'can get behavioral bid ids');
};

1;
