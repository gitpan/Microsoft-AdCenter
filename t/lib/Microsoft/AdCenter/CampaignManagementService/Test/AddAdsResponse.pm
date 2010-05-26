package Microsoft::AdCenter::CampaignManagementService::Test::AddAdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::AddAdsResponse;

sub test_can_create_add_ads_response_and_set_all_fields : Test(2) {
    my $add_ads_response = Microsoft::AdCenter::CampaignManagementService::AddAdsResponse->new
        ->AdIds('ad ids')
    ;

    ok($add_ads_response);

    is($add_ads_response->AdIds, 'ad ids', 'can get ad ids');
};

1;
