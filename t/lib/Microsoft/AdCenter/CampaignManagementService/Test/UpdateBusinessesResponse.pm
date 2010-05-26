package Microsoft::AdCenter::CampaignManagementService::Test::UpdateBusinessesResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::UpdateBusinessesResponse;

sub test_can_create_update_businesses_response_and_set_all_fields : Test(1) {
    my $update_businesses_response = Microsoft::AdCenter::CampaignManagementService::UpdateBusinessesResponse->new
    ;

    ok($update_businesses_response);

};

1;
