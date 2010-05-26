package Microsoft::AdCenter::CampaignManagementService::Test::GetAdGroupsInfoByCampaignIdResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetAdGroupsInfoByCampaignIdResponse;

sub test_can_create_get_ad_groups_info_by_campaign_id_response_and_set_all_fields : Test(2) {
    my $get_ad_groups_info_by_campaign_id_response = Microsoft::AdCenter::CampaignManagementService::GetAdGroupsInfoByCampaignIdResponse->new
        ->AdGroupsInfo('ad groups info')
    ;

    ok($get_ad_groups_info_by_campaign_id_response);

    is($get_ad_groups_info_by_campaign_id_response->AdGroupsInfo, 'ad groups info', 'can get ad groups info');
};

1;
