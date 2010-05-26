package Microsoft::AdCenter::CampaignManagementService::Test::DeleteKeywordsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteKeywordsResponse;

sub test_can_create_delete_keywords_response_and_set_all_fields : Test(1) {
    my $delete_keywords_response = Microsoft::AdCenter::CampaignManagementService::DeleteKeywordsResponse->new
    ;

    ok($delete_keywords_response);

};

1;
