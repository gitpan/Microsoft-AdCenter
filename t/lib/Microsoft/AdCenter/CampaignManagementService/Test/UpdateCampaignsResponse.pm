package Microsoft::AdCenter::CampaignManagementService::Test::UpdateCampaignsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateCampaignsResponse;

sub test_can_create_update_campaigns_response_and_set_all_fields : Test(1) {
    my $update_campaigns_response = Microsoft::AdCenter::CampaignManagementService::UpdateCampaignsResponse->new
    ;

    ok($update_campaigns_response);

};

1;
