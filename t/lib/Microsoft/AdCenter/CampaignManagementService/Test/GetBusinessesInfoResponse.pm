package Microsoft::AdCenter::CampaignManagementService::Test::GetBusinessesInfoResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetBusinessesInfoResponse;

sub test_can_create_get_businesses_info_response_and_set_all_fields : Test(2) {
    my $get_businesses_info_response = Microsoft::AdCenter::CampaignManagementService::GetBusinessesInfoResponse->new
        ->BusinessesInfo('businesses info')
    ;

    ok($get_businesses_info_response);

    is($get_businesses_info_response->BusinessesInfo, 'businesses info', 'can get businesses info');
};

1;
