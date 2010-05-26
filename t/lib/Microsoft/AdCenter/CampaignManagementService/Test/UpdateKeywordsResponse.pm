package Microsoft::AdCenter::CampaignManagementService::Test::UpdateKeywordsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateKeywordsResponse;

sub test_can_create_update_keywords_response_and_set_all_fields : Test(1) {
    my $update_keywords_response = Microsoft::AdCenter::CampaignManagementService::UpdateKeywordsResponse->new
    ;

    ok($update_keywords_response);

};

1;
