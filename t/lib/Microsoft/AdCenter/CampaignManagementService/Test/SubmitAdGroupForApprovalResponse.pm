package Microsoft::AdCenter::CampaignManagementService::Test::SubmitAdGroupForApprovalResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::SubmitAdGroupForApprovalResponse;

sub test_can_create_submit_ad_group_for_approval_response_and_set_all_fields : Test(1) {
    my $submit_ad_group_for_approval_response = Microsoft::AdCenter::CampaignManagementService::SubmitAdGroupForApprovalResponse->new
    ;

    ok($submit_ad_group_for_approval_response);

};

1;
