package Microsoft::AdCenter::CampaignManagementService::Test::GetAdsByIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetAdsByIdsResponse;

sub test_can_create_get_ads_by_ids_response_and_set_all_fields : Test(2) {
    my $get_ads_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetAdsByIdsResponse->new
        ->Ads('ads')
    ;

    ok($get_ads_by_ids_response);

    is($get_ads_by_ids_response->Ads, 'ads', 'can get ads');
};

1;
