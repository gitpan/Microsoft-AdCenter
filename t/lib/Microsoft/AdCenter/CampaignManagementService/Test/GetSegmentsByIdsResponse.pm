package Microsoft::AdCenter::CampaignManagementService::Test::GetSegmentsByIdsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::GetSegmentsByIdsResponse;

sub test_can_create_get_segments_by_ids_response_and_set_all_fields : Test(2) {
    my $get_segments_by_ids_response = Microsoft::AdCenter::CampaignManagementService::GetSegmentsByIdsResponse->new
        ->Segments('segments')
    ;

    ok($get_segments_by_ids_response);

    is($get_segments_by_ids_response->Segments, 'segments', 'can get segments');
};

1;
