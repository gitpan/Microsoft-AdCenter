package Microsoft::AdCenter::CampaignManagementService::Test::GetSegmentsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetSegmentsResponse;

sub test_can_create_get_segments_response_and_set_all_fields : Test(2) {
    my $get_segments_response = Microsoft::AdCenter::CampaignManagementService::GetSegmentsResponse->new
        ->Segments('segments')
    ;

    ok($get_segments_response);

    is($get_segments_response->Segments, 'segments', 'can get segments');
};

1;
