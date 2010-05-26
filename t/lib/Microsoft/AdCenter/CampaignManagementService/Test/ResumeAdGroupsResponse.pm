package Microsoft::AdCenter::CampaignManagementService::Test::ResumeAdGroupsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::ResumeAdGroupsResponse;

sub test_can_create_resume_ad_groups_response_and_set_all_fields : Test(1) {
    my $resume_ad_groups_response = Microsoft::AdCenter::CampaignManagementService::ResumeAdGroupsResponse->new
    ;

    ok($resume_ad_groups_response);

};

1;
