package Microsoft::AdCenter::CampaignManagementService::Test::GetKeywordEstimatesByBidsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetKeywordEstimatesByBidsResponse;

sub test_can_create_get_keyword_estimates_by_bids_response_and_set_all_fields : Test(2) {
    my $get_keyword_estimates_by_bids_response = Microsoft::AdCenter::CampaignManagementService::GetKeywordEstimatesByBidsResponse->new
        ->KeywordEstimates('keyword estimates')
    ;

    ok($get_keyword_estimates_by_bids_response);

    is($get_keyword_estimates_by_bids_response->KeywordEstimates, 'keyword estimates', 'can get keyword estimates');
};

1;
