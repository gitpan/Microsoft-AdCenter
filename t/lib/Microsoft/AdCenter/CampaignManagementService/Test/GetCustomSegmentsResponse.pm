package Microsoft::AdCenter::CampaignManagementService::Test::GetCustomSegmentsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetCustomSegmentsResponse;

sub test_can_create_get_custom_segments_response_and_set_all_fields : Test(2) {
    my $get_custom_segments_response = Microsoft::AdCenter::CampaignManagementService::GetCustomSegmentsResponse->new
        ->CustomSegments('custom segments')
    ;

    ok($get_custom_segments_response);

    is($get_custom_segments_response->CustomSegments, 'custom segments', 'can get custom segments');
};

1;
