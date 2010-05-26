package Microsoft::AdCenter::CampaignManagementService::Test::GetAdsByAdGroupIdResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetAdsByAdGroupIdResponse;

sub test_can_create_get_ads_by_ad_group_id_response_and_set_all_fields : Test(2) {
    my $get_ads_by_ad_group_id_response = Microsoft::AdCenter::CampaignManagementService::GetAdsByAdGroupIdResponse->new
        ->Ads('ads')
    ;

    ok($get_ads_by_ad_group_id_response);

    is($get_ads_by_ad_group_id_response->Ads, 'ads', 'can get ads');
};

1;
