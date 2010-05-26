package Microsoft::AdCenter::CampaignManagementService::Test::GetNegativeKeywordsByAdGroupIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetNegativeKeywordsByAdGroupIdsResponse;

sub test_can_create_get_negative_keywords_by_ad_group_ids_response_and_set_all_fields : Test(2) {
    my $get_negative_keywords_by_ad_group_ids_response = Microsoft::AdCenter::CampaignManagementService::GetNegativeKeywordsByAdGroupIdsResponse->new
        ->AdGroupNegativeKeywords('ad group negative keywords')
    ;

    ok($get_negative_keywords_by_ad_group_ids_response);

    is($get_negative_keywords_by_ad_group_ids_response->AdGroupNegativeKeywords, 'ad group negative keywords', 'can get ad group negative keywords');
};

1;
