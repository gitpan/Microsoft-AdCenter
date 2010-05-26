package Microsoft::AdCenter::CampaignManagementService::Test::PauseCampaignsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::PauseCampaignsResponse;

sub test_can_create_pause_campaigns_response_and_set_all_fields : Test(1) {
    my $pause_campaigns_response = Microsoft::AdCenter::CampaignManagementService::PauseCampaignsResponse->new
    ;

    ok($pause_campaigns_response);

};

1;
