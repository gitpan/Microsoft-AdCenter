package Microsoft::AdCenter::CampaignManagementService::Test::SetTargetToCampaignResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SetTargetToCampaignResponse;

sub test_can_create_set_target_to_campaign_response_and_set_all_fields : Test(1) {
    my $set_target_to_campaign_response = Microsoft::AdCenter::CampaignManagementService::SetTargetToCampaignResponse->new
    ;

    ok($set_target_to_campaign_response);

};

1;
