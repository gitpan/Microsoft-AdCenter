package Microsoft::AdCenter::CampaignManagementService::Test::GetCampaignsByAccountIdResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetCampaignsByAccountIdResponse;

sub test_can_create_get_campaigns_by_account_id_response_and_set_all_fields : Test(2) {
    my $get_campaigns_by_account_id_response = Microsoft::AdCenter::CampaignManagementService::GetCampaignsByAccountIdResponse->new
        ->Campaigns('campaigns')
    ;

    ok($get_campaigns_by_account_id_response);

    is($get_campaigns_by_account_id_response->Campaigns, 'campaigns', 'can get campaigns');
};

1;
