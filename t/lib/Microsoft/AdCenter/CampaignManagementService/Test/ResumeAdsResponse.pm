package Microsoft::AdCenter::CampaignManagementService::Test::ResumeAdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ResumeAdsResponse;

sub test_can_create_resume_ads_response_and_set_all_fields : Test(1) {
    my $resume_ads_response = Microsoft::AdCenter::CampaignManagementService::ResumeAdsResponse->new
    ;

    ok($resume_ads_response);

};

1;
