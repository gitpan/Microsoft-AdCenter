package Microsoft::AdCenter::CampaignManagementService::Test::SetNegativeKeywordsToCampaignsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SetNegativeKeywordsToCampaignsResponse;

sub test_can_create_set_negative_keywords_to_campaigns_response_and_set_all_fields : Test(1) {
    my $set_negative_keywords_to_campaigns_response = Microsoft::AdCenter::CampaignManagementService::SetNegativeKeywordsToCampaignsResponse->new
    ;

    ok($set_negative_keywords_to_campaigns_response);

};

1;
