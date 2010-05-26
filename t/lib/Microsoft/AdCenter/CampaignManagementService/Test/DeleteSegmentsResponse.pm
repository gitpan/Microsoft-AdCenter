package Microsoft::AdCenter::CampaignManagementService::Test::DeleteSegmentsResponse;

use strict;
use warnings;

use base qw/Test::Class/;
use Test::More;

use Microsoft::AdCenter::CampaignManagementService;
use Microsoft::AdCenter::CampaignManagementService::DeleteSegmentsResponse;

sub test_can_create_delete_segments_response_and_set_all_fields : Test(1) {
    my $delete_segments_response = Microsoft::AdCenter::CampaignManagementService::DeleteSegmentsResponse->new
    ;

    ok($delete_segments_response);

};

1;
