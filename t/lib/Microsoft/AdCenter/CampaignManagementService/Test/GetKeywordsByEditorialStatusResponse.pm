package Microsoft::AdCenter::CampaignManagementService::Test::GetKeywordsByEditorialStatusResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetKeywordsByEditorialStatusResponse;

sub test_can_create_get_keywords_by_editorial_status_response_and_set_all_fields : Test(2) {
    my $get_keywords_by_editorial_status_response = Microsoft::AdCenter::CampaignManagementService::GetKeywordsByEditorialStatusResponse->new
        ->Keywords('keywords')
    ;

    ok($get_keywords_by_editorial_status_response);

    is($get_keywords_by_editorial_status_response->Keywords, 'keywords', 'can get keywords');
};

1;
