package Microsoft::AdCenter::CampaignManagementService::Test::GetKeywordsByAdGroupIdResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetKeywordsByAdGroupIdResponse;

sub test_can_create_get_keywords_by_ad_group_id_response_and_set_all_fields : Test(2) {
    my $get_keywords_by_ad_group_id_response = Microsoft::AdCenter::CampaignManagementService::GetKeywordsByAdGroupIdResponse->new
        ->Keywords('keywords')
    ;

    ok($get_keywords_by_ad_group_id_response);

    is($get_keywords_by_ad_group_id_response->Keywords, 'keywords', 'can get keywords');
};

1;
