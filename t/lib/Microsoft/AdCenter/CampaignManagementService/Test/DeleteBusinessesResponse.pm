package Microsoft::AdCenter::CampaignManagementService::Test::DeleteBusinessesResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteBusinessesResponse;

sub test_can_create_delete_businesses_response_and_set_all_fields : Test(1) {
    my $delete_businesses_response = Microsoft::AdCenter::CampaignManagementService::DeleteBusinessesResponse->new
    ;

    ok($delete_businesses_response);

};

1;
